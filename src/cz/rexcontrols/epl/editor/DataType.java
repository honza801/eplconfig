package cz.rexcontrols.epl.editor;
/**
 * Copyright 2010 Jan Krcmar. All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without modification, are
 * permitted provided that the following conditions are met:
 * 
 *    1. Redistributions of source code must retain the above copyright notice, this list of
 *       conditions and the following disclaimer.
 * 
 *    2. Redistributions in binary form must reproduce the above copyright notice, this list
 *       of conditions and the following disclaimer in the documentation and/or other materials
 *       provided with the distribution.
 * 
 * THIS SOFTWARE IS PROVIDED BY Jan Krcmar ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
 * FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL Jan Krcmar OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
 * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
 * ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 * 
 * The views and conclusions contained in the software and documentation are those of the
 * authors and should not be interpreted as representing official policies, either expressed
 * or implied, of Jan Krcmar.
 * 
 */

import java.math.BigInteger;

/**
 * Object dictionary entries.
 * 
 * @author honza801
 * 
 */
public enum DataType {

	// index/subindex data types
	BOOLEAN(1, 1),
	INTEGER8(2, 1),
	INTEGER16(3, 2),
	INTEGER32(4, 4),
	UNSIGNED8(5, 1),
	UNSIGNED16(6, 2),
	UNSIGNED32(7, 4),
	REAL32(8, 4),
	VISIBLE_STRING(9),
	OCTET_STRING(10), 
	UNICODE_STRING(11),
	TIME_OF_DAY(12),
	TIME_DIFFERENCE(13),
	DOMAIN(15),
	INTEGER24(16, 3),
	REAL64(17, 8),
	INTEGER40(18, 5),
	INTEGER48(19, 6),
	INTEGER56(20, 7),
	INTEGER64(21, 8),
	UNSIGNED24(22, 3),
	UNSIGNED40(24, 5),
	UNSIGNED48(25, 6),
	UNSIGNED56(26, 7),
	UNSIGNED64(27, 8),
	IDENTITY(53),
	IP_ADDRESS(0x402, 4);
	
	private int index;
	private int size;
	
	/**
	 * Constructor.
	 * @param index
	 */
	private DataType(int index) {
		this(index, 0);
	}
	
	
	/**
	 * Constructor.
	 * @param index
	 * @param size
	 */
	private DataType(int index, int size) {
		this.index = index;
		this.size = size;
	}

	/**
	 * 
	 * @param index
	 * @return {@link DataType} specified by index.
	 */
	public static DataType getEnum(int index) {
		for (DataType out : values()) {
			if (out.getIndex() == index) {
				return out;
			}
		}
		return null;
	}
	
	/**
	 * 
	 * @param name
	 * @return {@link DataType} specified by name
	 */
	public static DataType getEnum(String name) {
		for (DataType out : values()) {
			if (out.name().compareTo(name) == 0) {
				return out;
			}
		}
		return null;
	}
	
	/**
	 * 
	 * @return Index of the entry.
	 */
	public int getIndex() {
		return index;
	}
	
	public static int getIndex(DataType dt) {
		if (dt == null) {
			return -1;
		} else 
			return dt.getIndex();
	}
	
	/**
	 * 
	 * @return Size of the entry.
	 */
	public int getSize() {
		return size;
	}
	
	public static int getSize(DataType dt) {
		if (dt == null)
			return 0;
		else 
			return dt.getSize();
	}
	
	public int getSizeInBits() {
		return size * 8;
	}
	
	public String formatValue(int value)
	{
		switch (size)
		{
			case 1: return String.format("0x%02X", value);  
			case 2: return String.format("0x%04X", value);  
			case 3: return String.format("0x%06X", value);  
			case 4: return String.format("0x%08X", value);  
			case 8: return String.format("0x%16X", value);
			default: return String.valueOf(value);
		}
	}

	public String formatValue(long value)
	{
		switch (size)
		{
			case 1: return String.format("0x%02X", value);  
			case 2: return String.format("0x%04X", value);  
			case 3: return String.format("0x%06X", value);  
			case 4: return String.format("0x%08X", value);  
			case 8: return String.format("0x%16X", value);
			default: return String.valueOf(value);
		}
	}
	
	public String toString() {
		String out = super.toString();
		out += ", name: " + this.name();
		out += ", index: " + this.getIndex();
		out += ", size: " + this.getSize();
		return out;
	}
	
	public Integer asInt(String value) throws NumberFormatException {
		try {
			return Integer.decode(value);
		}
		catch (NumberFormatException nfe) {
			throw nfe;
		}
	}

	public long asLong(String value) {
		return Long.decode(value);
	}
	
	public BigInteger asBigint(String value) {
		if (value == null)
			return new BigInteger("0");
		else
		{
			if (value.startsWith("0x"))
				return new BigInteger(value.substring(2), 16);
			else
				return new BigInteger(value, 10);
		}
	}
}
