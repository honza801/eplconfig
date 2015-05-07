package cz.rexcontrols.epl.editor.cdc;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;

import cz.rexcontrols.epl.editor.EplNode;

public class CdcBinaryStream extends CdcStreamBase {

	public CdcBinaryStream(EplNode eplNode, ByteArrayOutputStream output)
			throws IOException {
		super(eplNode, output);
	}

	public CdcBinaryStream() {
		super();
	}

	
	@Override
	protected void writeComment(String comment) throws IOException {
		// no comments in binary stream
	}

	@Override
	public void writeData(CdcStreamBase cdcData, boolean withSize) throws IOException {
		if (withSize)
			writeUInt32(cdcData.getSize() + 4);
		writeUInt32(cdcData.getEntryCount());
		output.write(cdcData.output.toByteArray());
	}

	@Override
	protected void writeInt16(int value) throws IOException {
		super.writeInt16(value);
		output.write(value);
		output.write(value >>> 8);
	}

	@Override
	protected void writeInt32(int value) throws IOException {
		super.writeInt32(value);
		output.write(value);
		output.write(value >>> 8);
		output.write(value >>> 16);
		output.write(value >>> 24);
	}

	@Override
	protected void writeInt64(long value) throws IOException {
		super.writeInt64(value);
		output.write((int)(value & 0xFF));
		output.write((int)(value >>> 8));
		output.write((int)(value >>> 16));
		output.write((int)(value >>> 24));
		output.write((int)(value >>> 32));
		output.write((int)(value >>> 40));
		output.write((int)(value >>> 48));
		output.write((int)(value >>> 56));
	}

	@Override
	protected void writeInt8(int value) throws IOException {
		super.writeInt8(value);
		output.write(value & 0xFF);
	}

	@Override
	protected void writeObjectNum(int index, int subindex) throws IOException {
		writeUInt16(index);
		writeUInt8(subindex);
	}

	@Override
	protected void writeUInt16(int value) throws IOException {
		super.writeUInt16(value);
		output.write(value);
		output.write(value >>> 8);
	}

	@Override
	protected void writeUInt32(long value) throws IOException {
		super.writeUInt32(value);
		output.write((int)(value));
		output.write((int)(value >>> 8));
		output.write((int)(value >>> 16));
		output.write((int)(value >>> 24));
	}

	@Override
	protected void writeUInt64(BigInteger value) throws IOException {
		super.writeUInt64(value);
		byte ar[] = value.toByteArray();
		
		for (int i = ar.length - 1; i >= 0; i--) {
			output.write(ar[i]);
		}

		for (int i = 0; i < 8 - ar.length; i++) {
			output.write(0);
		}
	}

	@Override
	protected void writeUInt8(int value) throws IOException {
		super.writeUInt8(value);
		output.write(value);
	}

	@Override
	protected void writeDataSize(int size) throws IOException {
		writeUInt32(size);
	}

}
