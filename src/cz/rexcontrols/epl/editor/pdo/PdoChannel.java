package cz.rexcontrols.epl.editor.pdo;

import java.util.Enumeration;
import java.util.Hashtable;

import cz.rexcontrols.epl.editor.BaseNodeInterface;

public class PdoChannel {
	private int size;
	int channelNumber;
	int mateNode;
	private Hashtable<Integer, ChannelEntry> mappedEntries;
	//private NodeChannelManager parentManager;
	
	public PdoChannel(NodeChannelManager parentManager) {
		//this.parentManager = parentManager;
		channelNumber = -1;
		mappedEntries = new Hashtable<Integer, ChannelEntry>();
	}
	
	public int getEntryKey(int index, int subindex) {
		return index * 0x10000 + subindex;
	}
	
	public int getEntryKey(ChannelEntry channel) {
		return getEntryKey(channel.index, channel.subindex);
	}
	
	public ChannelEntry getEntry(int index, int subindex) {
		return (ChannelEntry) mappedEntries.get(getEntryKey(index, subindex));
	}
	
	public void addEntry(ChannelEntry entry) {
		mappedEntries.put(getEntryKey(entry), entry);
	}
	
	public ChannelEntry newEntry(int index, int subindex, int offset, int length, BaseNodeInterface obj) {
		ChannelEntry entry = new ChannelEntry(this, obj);
		entry.index = index;
		entry.subindex = subindex;
		
		if (offset >= 0)
			entry.offset = offset;
		else
			entry.offset = this.size;

		entry.object = obj;
		entry.length = length;
		
		this.size += length;
		
		addEntry(entry);
		
		return entry;
	}
	
	public int getEntryCount() {
		return mappedEntries.size();
	}
	
	public Enumeration<ChannelEntry> getEntries() {
		return mappedEntries.elements();
	}
	
	public int getSize() {return size; }

}
