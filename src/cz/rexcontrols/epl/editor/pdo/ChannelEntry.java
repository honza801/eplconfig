package cz.rexcontrols.epl.editor.pdo;

import cz.rexcontrols.epl.editor.BaseNodeInterface;

public class ChannelEntry {
	public int nodeId;
	public int offset;
	public int length;
	public int index;
	public int subindex;
	public int entryNumber;
	public BaseNodeInterface object;
	public PdoChannel channel;

	public ChannelEntry(PdoChannel channel, BaseNodeInterface object) {
		this.channel = channel;
		this.object = object;
		entryNumber = -1;
	}

	
	public ChannelEntry(PdoChannel channel, BaseNodeInterface object, int entry) {
		this.channel = channel;
		this.object = object;
		entryNumber = -1;
		index = entry & 0xFFFF;
		subindex = (entry >>> 16) & 0xFF;
		offset = (entry >>> 32) & 0xFFFF;
		length = (entry >>> 48) & 0xFFFF;
	}

	public String getEntryCode()
	{
		return String.format("0x%04X%04X00%02X%04X", length, offset, subindex, index);
	}
}
