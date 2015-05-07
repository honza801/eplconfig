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
 * Domain members data types
 * 
 * @author honza801
 * 
 */
public enum DomainDataType {

	BITSTRING(0),
	BOOL(1),
	BYTE(8),
	CHAR(8),
	DINT(32),
	DWORD(8),
	INT(16),
	LINT(32),
	LREAL(32),
	LWORD(32),
	REAL(32),
	SINT(8),
	STRING(0),
	UINT(16),
	UDINT(32),
	ULINT(32),
	USINT(8),
	WORD(32),
	WSTRING(0),
	;
	
	private int size;
	
	/**
	 * Constructor
	 * @param size
	 */
	DomainDataType(int size) {
		this.size = size;
	}
	
	public int getSize() {
		return size;
	}
	
	public static DomainDataType getEnum(String name) {
		for (DomainDataType out : values()) {
			if (name.compareTo(out.name()) == 0) {
				return out;
			}
		}
		return null;
	}
	
	public boolean hasStaticSize() {
		return (getSize() != 0);
	}
}
