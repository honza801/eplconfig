package cz.rexcontrols.epl.editor.pdo;

import java.util.Enumeration;
import java.util.Hashtable;

import cz.rexcontrols.epl.editor.*;

public class NodeChannelManager {
	private EplNode node;
	private Hashtable<Integer, PdoChannel> TPDOs;
	private Hashtable<Integer, PdoChannel> RPDOs;
	
	public void loadConstChannels() {
		
	}
	
	public int getCommIndex(boolean Tx) {
		if (Tx)
			return 0x1800;
		else
			return 0x1400;
	}

	public int getMappIndex(boolean Tx) {
		if (Tx)
			return 0x1A00;
		else
			return 0x1600;
	}
	
	public PdoChannel getChannel(boolean Tx, int mateNode) {
		if (Tx)
			return TPDOs.get(mateNode);
		else
			return RPDOs.get(mateNode);
	}
	
	public void resetComm(EplIndex comm) {
		node.setObjectValue(comm.getIndex(), 0, 0, true, false);
		node.setObjectValue(comm.getIndex(), 1, 0, true, false);
		node.setObjectValue(comm.getIndex(), 2, 0, true, false);
	}

	public void resetMapp(EplIndex mapp) {
		node.setObjectValue(mapp.getIndex(), 0, 0, true, false);
		for (int i = 1; i < 256; i++) {
			EplSubindex subindex = node.getSubindex(mapp.getIndex(), i);
			if ((subindex != null) && (AccessType.isWritable(subindex.getAccessType()))) {
				node.setObjectValue(mapp.getIndex(), i, "", true, false);
			}
		}
	}
	
	public void resetOpenChannels(boolean Tx) {
		int commIndex = getCommIndex(Tx);
		int mappIndex = getMappIndex(Tx);
		
		for (int i = 0; i < 256; i ++) {
			EplIndex comm = (EplIndex)node.getByIndex(commIndex + i);
			EplIndex mapp = (EplIndex)node.getByIndex(mappIndex + i);
			
			if (comm != null)
				resetComm(comm);
			
			if (mapp != null)
				resetMapp(mapp);
		}
	}
	
	protected int getChannelIndex(PdoChannel channel, boolean Tx) {
		int i;

		if (channel.channelNumber >= 0)
			return channel.channelNumber;

		int commIndex = getCommIndex(Tx);
		int mappIndex = getMappIndex(Tx);

		for (i = 0; i < 256; i ++) {
			EplSubindex comm = (EplSubindex)node.getSubindex(commIndex + i, 0);
			EplSubindex mapp = (EplSubindex)node.getSubindex(mappIndex + i, 0);
			
			if ((comm != null) && (mapp != null)) {
				if ((mapp.getValueAsInt() == 0) && (comm.getValueAsInt() == 0)) {
					return i;
				}
			}
		}
		
		return -1;
	}
	
	protected void writeChannel(PdoChannel channel, boolean Tx) {
		int commIndex = getCommIndex(Tx) + channel.channelNumber;
		int mappIndex = getMappIndex(Tx) + channel.channelNumber;
		
		node.setObjectValue(commIndex, 0, 2, true, false);
		node.setObjectValue(commIndex, 1, channel.mateNode, true, true);
		node.setObjectValue(commIndex, 2, 0, true, false);
		
		node.setObjectValue(mappIndex, 0, channel.getEntryCount(), true, true);
		
		int i = 0;
		
		Enumeration<ChannelEntry> entries = channel.getEntries();
		
		while (entries.hasMoreElements()) {
			ChannelEntry entry = entries.nextElement();
			node.setObjectValue(mappIndex, i + 1, entry.getEntryCode(), true, true);
			
			i ++;
		}
	}

	public void writeChannels(boolean Tx) {
		Hashtable<Integer, PdoChannel> PDOs;
		
		if (Tx)
			PDOs = TPDOs;
		else
			PDOs = RPDOs;
		
		Enumeration<PdoChannel> e = PDOs.elements();
		
		while (e.hasMoreElements()) {
			PdoChannel channel = e.nextElement();
			int channelIndex = getChannelIndex(channel, Tx);
			
			if (channelIndex >= 0) {
				channel.channelNumber = channelIndex;
				writeChannel(channel, Tx);
			}
		}
	}

	
	public void writeRxToOd() {
		resetOpenChannels(false);
		writeChannels(false);
	}
	
	public void writeTxToOd() {
		resetOpenChannels(true);
		writeChannels(true);
	}
	
	public void writeToOd() {
		writeTxToOd();
		writeRxToOd();
	}
	
	public ChannelEntry mapObjectTPdo(int index, int subindex, int length, int offset, BaseNodeInterface obj, int dstNode) {
		int dst;
		
		if (node.isMN())
			dst = dstNode;
		else
			dst = 0;
		
		PdoChannel channel = (PdoChannel) TPDOs.get(dst);
		
		if (channel == null) {
			channel = new PdoChannel(this);
			channel.mateNode = dst;
			
			TPDOs.put(dst, channel);
		}
		
		ChannelEntry entry = channel.getEntry(index, subindex);
		
		if (entry == null) {
			entry = channel.newEntry(index, subindex, offset, length, obj);
		}
		
		return entry;
	}
	
	public ChannelEntry mapObjectRPdo(int index, int subindex, int length, int offset, BaseNodeInterface obj, int srcNode) {
		int src;
		if ((!node.isMN()) && (srcNode == 240))
			src = 0;
		else
			src = srcNode;
		
		PdoChannel channel = (PdoChannel)RPDOs.get(src);
		
		if (channel == null) {
			channel = new PdoChannel(this);
			channel.mateNode = src;
		
			RPDOs.put(src, channel);
		}
		
		ChannelEntry entry = channel.getEntry(index, subindex);
		
		if (entry != null) {
			if (((offset >=0) && (offset != entry.offset)) || (length != entry.length)) {
				//type mismatch
				return null;
			} 
		} else {
			entry = channel.newEntry(index, subindex, offset, length, obj);
		}
		
		return entry;
	}
	
	
	public ChannelEntry mapObjectPdo(BaseNodeInterface object, int mateNode, int offset, int aLength, boolean Tx) {
		int index = 0, subindex = 0, maplength, itemlength;
		
		if (EplDomain.class.isInstance(object)) {
			EplDomain d = (EplDomain)object;
			
			if (d.getParentNode() instanceof EplIndex) {
				index = d.getParentNode().getIndex();				
			} else if (d.getParentNode() instanceof EplSubindex) {
				EplSubindex es = (EplSubindex) d.getParentNode();
				subindex = es.getIndex();
				index = es.getParentIndex().getIndex();				
			}
			maplength = (d.getParentNode()).getSizeInBits();
			itemlength = d.getSizeInBits();
		} else

		if (EplSubindex.class.isInstance(object)) {
			subindex = object.getIndex();
			index = ((EplSubindex)object).getParentIndex().getIndex();
			maplength = ((EplSubindex)object).getSizeInBits();
			itemlength = object.getSizeInBits();
		} else
		
		if (EplIndex.class.isInstance(object)) {
			subindex = 0;
			index = ((EplIndex)object).getIndex();
			maplength = ((EplIndex)object).getSizeInBits();
			itemlength = object.getSizeInBits();
		} else
			return null;
		
		if (EplObject.class.isInstance(object)) {
			EplObject obj = (EplObject)object;
			
			if (obj.getDataType() == DataType.BOOLEAN) {
				if (aLength == 1) {
					itemlength = 1;
					maplength = 1;
				}
			}
		}
		
		if (Tx) {
			return mapObjectTPdo(index, subindex, maplength, offset, object, mateNode);
		} else {
			if (aLength != itemlength) {
				//type mismatch!
				//return null;
			} 
			
			return mapObjectRPdo(index, subindex, maplength, offset, object, mateNode);
		}
			
	}
/*	
	public ChannelEntry mapObjectTPdo(BaseNodeInterface object, int dstNode) {
		return mapObjectPdo(object, dstNode, -1, -1, true);
	}
	
	public ChannelEntry mapObjectRPdo(BaseNodeInterface object, int srcNode, int offset, int length) {
		return mapObjectPdo(object, srcNode, offset, length, false);
	}
*/	
	public NodeChannelManager(EplNode node) {
		TPDOs = new Hashtable<Integer, PdoChannel>();
		RPDOs = new Hashtable<Integer, PdoChannel>();
		this.node = node;
		loadConstChannels();
	}
	
	public EplNode getNode() { return node; }

}
