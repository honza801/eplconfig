package cz.rexcontrols.epl.editor.cdc;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.util.logging.Level;
import java.util.logging.Logger;

import cz.rexcontrols.epl.editor.DataType;
import cz.rexcontrols.epl.editor.EplNode;

public class CdcTextStream extends CdcStreamBase {

	private Logger log;
	
	public CdcTextStream(EplNode eplNode, ByteArrayOutputStream output)
			throws IOException {
		super(eplNode, output);
		initLogger();
	}
	
	public CdcTextStream() {
		super();
		initLogger();
	}

	private void initLogger() {
		this.log = Logger.getLogger(this.getClass().getCanonicalName());

		log.setParent(Logger.getLogger(Logger.GLOBAL_LOGGER_NAME));
		log.setLevel(Level.INFO);
	}
	
	protected void writeText(String text) throws IOException {
		output.write(text.getBytes());
	}
	
	protected void writeTab() throws IOException {
		writeText("\t");
	}
	
	protected void writeEndl() throws IOException {
		writeText("\n");
	}
	
	@Override
	public void writeComment(String comment) throws IOException {
		writeText("////" + comment);
		writeEndl();
	}

	@Override
	protected void writeInt16(int value) throws IOException {
		super.writeInt16(value);
		writeText( String.format("%02X%02X", 
				value >>> 8 & 0xFF, 
				value & 0xFF));
	}

	@Override
	protected void writeInt32(int value) throws IOException {
		super.writeInt32(value);
		writeText( String.format("%02X%02X%02X%02X",
				value >>> 24 & 0xFF, 
				value >>> 16 & 0xFF,
				value >>> 8 & 0xFF,
				value & 0xFF));
	}

	@Override
	protected void writeInt64(long value) throws IOException {
		super.writeInt64(value);
		writeText( String.format("%02X%02X%02X%02X%02X%02X%02X%02X",
				value >>> 56 & 0xFF, 
				value >>> 48 & 0xFF, 
				value >>> 40 & 0xFF,
				value >>> 32 & 0xFF,
				value >>> 24 & 0xFF, 
				value >>> 16 & 0xFF,
				value >>> 8 & 0xFF,
				value & 0xFF));
	}

	@Override
	protected void writeInt8(int value) throws IOException {
		super.writeInt8(value);
		writeText( String.format("%02X", (value & 0xFF)));
	}

	@Override
	protected void writeObjectNum(int index, int subindex) throws IOException {
		writeUInt16(index);
		writeTab();
		writeUInt8(subindex);
		writeTab();
	}

	@Override
	protected void writeUInt16(int value) throws IOException {
		super.writeUInt16(value);
		writeText( String.format("%02X%02X", 
				value >>> 8 & 0xFF, 
				value & 0xFF));
	}

	@Override
	protected void writeUInt32(long value) throws IOException {
		super.writeUInt32(value);
		writeText( String.format("%02X%02X%02X%02X",
				value >>> 24 & 0xFF, 
				value >>> 16 & 0xFF,
				value >>> 8 & 0xFF,
				value & 0xFF));
	}

	@Override
	protected void writeUInt64(BigInteger value) throws IOException {
		super.writeUInt64(value);
		byte ar[] = value.toByteArray();
		
		for (int i = 0; i < 8 - ar.length; i++) {
			writeText( String.format("%02X", 0));
		}
		
		for (int i = 0; i < ar.length;  i++) {
			writeText( String.format("%02X", ar[i]));
		}
	}

	@Override
	protected void writeUInt8(int value) throws IOException {
		log.finest("value:"+value);
		super.writeUInt8(value);
		writeText( String.format("%02X", (value & 0xFF)));
	}
	
	@Override
	protected void writeData(int index, int subindex, DataType type, String value) throws IOException {
		log.finest("idx:"+index+",sidx:"+subindex+",data type:"+type.toString()+",value:"+value);
		super.writeData(index, subindex, type, value);
		writeText("\n");
	}

	@Override
	public void writeData(CdcStreamBase cdcData, boolean withSize)
			throws IOException {
		log.finest(" value: '"+cdcData.toString()+"'");
		if (withSize) {
			writeUInt32(cdcData.getSize() + 4);
			writeEndl();
		}
		
		writeUInt32(cdcData.getEntryCount());
		writeEndl();
		output.write(cdcData.output.toByteArray());
	}

	@Override
	protected void writeDataSize(int size) throws IOException {
		writeUInt32(size);
		writeTab();
	}
}
