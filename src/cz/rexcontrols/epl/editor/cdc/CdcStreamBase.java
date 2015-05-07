package cz.rexcontrols.epl.editor.cdc;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigInteger;
import java.util.logging.Level;
import java.util.logging.Logger;

import cz.rexcontrols.epl.editor.DataType;
import cz.rexcontrols.epl.editor.EplIndex;
import cz.rexcontrols.epl.editor.EplNode;
import cz.rexcontrols.epl.editor.EplObject;
import cz.rexcontrols.epl.editor.EplSubindex;

public abstract class CdcStreamBase {
	protected ByteArrayOutputStream output;
	protected int numEntries;
	protected int size;
	protected int pass;
	
	private Logger log;
	
	public CdcStreamBase(EplNode eplNode, ByteArrayOutputStream output) throws IOException {
		this.output = output;
		initLogger();
		writeNode(eplNode);
	}
	
	public CdcStreamBase() {
		initLogger();
		output = new ByteArrayOutputStream();
	}
	
	private void initLogger() {
		this.log = Logger.getLogger(this.getClass().getCanonicalName());

		log.setParent(Logger.getLogger(Logger.GLOBAL_LOGGER_NAME));
		log.setLevel(Level.WARNING);
	}
	
	public void writeObject(EplObject object)  throws IOException {
		EplIndex ei;
		EplSubindex si;
		
		int index, subindex;
		if (EplIndex.class.isInstance(object)) {
			ei = (EplIndex) object;
			index = ei.getIndex();
			subindex = 0;
		} else
		if (EplSubindex.class.isInstance(object)) {
			si = (EplSubindex) object;
			ei = (EplIndex) si.getParentIndex();
			index = ei.getIndex();
			subindex = si.getIndex();
		} else
			return;

		DataType type = object.getDataType();
		if ((type == null)) {
			return;
		}
		String value = CdcPassManager.getObjectValueByPass(index, subindex, pass, object.getValidValue());
		
		if (value == null)
			return;

		writeObjectNum(index, subindex);
		writeData(index, subindex, type, value);
		
		numEntries ++;
	}
	
	public void writeObject(int index, int subindex, CdcStreamBase cdcStream)  throws IOException {
		writeObjectNum(index, subindex);
		writeData(cdcStream);
		numEntries ++;
	}

	public void writeNode(EplNode eplNode) throws IOException {
		
		/* for (EplIndex oi : eplNode.getObjects()) {
			EplIndex ei = (EplIndex)oi;
			
			if (ei.isExportable() && ((eplNode.isMN() || ei.getAccessType().isWritable())) 
					&& (ei.getObjectType().isSimpleType())) {
				writeObject(ei);
			}
			
			if (ei.getObjectType().isComplexType()) {
				for (EplSubindex soi : ei.getChildSubObjects()) {
					EplSubindex si = (EplSubindex)soi;
					
					if (si.isExportable())
						writeObject(si);
				}
				
			}
		}
		*/
		
		writeObjects(eplNode, 0x1000, 0x13FF, 0, 256);
		writeObjects(eplNode, 0x1400, 0x1AFF, 0, 0);
		writeObjects(eplNode, 0x1B00, 0x1FFF, 0, 256);
		writeObjects(eplNode, 0x1400, 0x1AFF, 1, 256);
		writeObjects(eplNode, 0x2000, 0xFFFF, 0, 266);
		
		output.flush();
	}
	
	public void writeObjects(EplNode eplNode, int fromIndex, int toIndex, int fromSubindex, int toSubindex) throws IOException {
		for (int i = fromIndex; i <= toIndex; i++) {
			EplIndex ei = eplNode.getByIndex(i);
			
			if (ei == null)
				continue;
			
			if (ei.isExportable() && ((eplNode.isMN() || ei.getAccessType().isWritable())) 
					&& (ei.getObjectType().isSimpleType())) {
				writeObject(ei);
			}

			if (ei.getObjectType().isComplexType()) {
				for (int s = fromSubindex; s <= toSubindex; s++) {
					EplSubindex si = (EplSubindex) ei.getByIndex(s);
					if (si == null)
						continue;

					if (si.isExportable() && (eplNode.isMN() || si.getAccessType().isWritable())) {
						writeObject(si);
					}
				}
			}
		}
	}
	
	protected void writeData(int index, int subindex, DataType type, String value)  throws IOException {

		if (type == null)
			return;

		if (value == null)
			return;

		writeDataSize(type.getSize());	

		try {
			switch (type) {
			case BOOLEAN:
			case INTEGER8: writeInt8(type.asInt(value)); break;
			case INTEGER16: writeInt16(type.asInt(value)); break;
			case INTEGER32: writeInt32(type.asInt(value)); break;
			case INTEGER64: writeInt64(type.asLong(value)); break;

			case UNSIGNED8: writeInt8(type.asInt(value)); break;
			case UNSIGNED16: writeUInt16(type.asInt(value)); break;
			case UNSIGNED32: writeUInt32(type.asLong(value)); break;
			case UNSIGNED64: writeUInt64(type.asBigint(value)); break;
			case IP_ADDRESS: writeIpAddr(value); break;
			}
		}
		catch (NumberFormatException e) {
			log.severe("error: cannot convert data (index:"+index+",subindex:"+subindex+",type:"+type.name()+",value:"+value+")");
		}
	}
	
	public int getEntryCount() { return numEntries; }
	public int getSize() { return size; }
	
	public void writeTo(OutputStream output) throws IOException {
		output.write(this.output.toByteArray());
	}
	
	public void nextPass() { pass ++; }
	public void resetPass() { pass = 0; }

	protected abstract void writeObjectNum(int index, int subindex) throws IOException;
	protected abstract void writeDataSize(int size) throws IOException;
	protected void writeInt8(int value) throws IOException { size += 1; }
	protected void writeInt16(int value) throws IOException { size += 2; }
	protected void writeInt32(int value) throws IOException { size += 4; }
	protected void writeInt64(long value) throws IOException { size += 8; }

	protected void writeUInt8(int value) throws IOException { size += 1; }
	protected void writeUInt16(int value) throws IOException { size += 2; }
	protected void writeUInt32(long value) throws IOException { size += 4; }
	protected void writeUInt64(BigInteger value) throws IOException { size += 8; }
	protected void writeIpAddr(String addr) throws IOException {
		int[] ipb = new int[4];
		String[] ips = addr.split("\\.");
		if (ips.length == 4) {
			ipb[0] = Integer.parseInt(ips[0]);
			ipb[1] = Integer.parseInt(ips[1]);
			ipb[2] = Integer.parseInt(ips[2]);
			ipb[3] = Integer.parseInt(ips[3]);
		}
		
		long ip = ((ipb[0] & 0xFF) << 24) |
				  ((ipb[1] & 0xFF) << 16) |				  
		          ((ipb[2] & 0xFF) << 8) |
		          ((ipb[3] & 0xFF) );
		writeUInt32(ip);
	}
	
	protected void writeData(CdcStreamBase cdcData) throws IOException {
		writeData(cdcData, true);
	}

	protected abstract void writeData(CdcStreamBase cdcData, boolean withSize) throws IOException;
	protected abstract void writeComment(String comment) throws IOException;
}
