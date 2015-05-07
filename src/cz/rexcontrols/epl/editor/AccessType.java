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

/**
 * Access types of epl objects/subobjects
 * 
 * @author honza801
 * 
 */
public enum AccessType {

	READ_ONLY("ro"),
	READ_WRITE("rw"),
	WRITE_ONLY("wo"),
	CONST("const"),
	COND("cond");
	
	private String abbreviation; 
	
	/**
	 * Default constructor
	 * @param accessType
	 */
	AccessType(String accessType) {
		this.abbreviation = accessType;
	}
	
	/**
	 * 
	 * @param type
	 * @return {@link AccessType} specifies by type.
	 */
	public static AccessType getEnumByType(String type) {
		if (type == null) {
			return READ_WRITE;
		}
		for (AccessType out : values()) {
			if (out.getSimple().compareTo(type)==0) {
				return out;
			}
		}
		return READ_WRITE;
	}

	/**
	 * 
	 * @param type
	 * @return {@link AccessType} specifies by name.
	 */
	public static AccessType getEnumByName(String name) {
		for (AccessType out : values()) {
			if (out.name().compareTo(name) == 0) {
				return out;
			}
		}
		return READ_WRITE;
	}
	
	/**
	 * @return Abbreviation of this access type
	 */
	public String getSimple() {
		return abbreviation;
	}
	
	/**
	 * 
	 * @return <code>true</code> if one can write to this object
	 */
	public boolean isWritable() {
		return (this == READ_WRITE) || (this == WRITE_ONLY);
	}

	/**
	 * 
	 * @return <code>true</code> if one can read this object
	 */
	public boolean isReadable() {
		return (this != WRITE_ONLY);
	}
	
	public String toString() {
		String out = super.toString();
		out += " abbr:" + this.getSimple();
		return out;
	}
	
	static public boolean isWritable(AccessType access) {
		if (access == null) {
			return false;
		}
		return access.isWritable();
	}
}
