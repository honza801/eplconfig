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
public enum PDOMappingType {

	DEFAULT("default"),
	NO("no"),
	RPDO("RPDO"),
	TPDO("TPDO"),
	OPTIONAL("Opt");
	
	private String xmlName; 
	
	/**
	 * Default constructor
	 * @param PDOMappingType
	 */
	PDOMappingType(String PDOMappingType) {
		this.xmlName = PDOMappingType;
	}
	
	public static PDOMappingType getEnum(String type) {
		if (type == null) {
			return NO;
		}
		for (PDOMappingType out : values()) {
			if (out.getVisible().compareTo(type) == 0) {
				return out;
			}
		}
		return null;
	}
	
	public String getVisible() {
		return xmlName;
	}
	
	public boolean isPDOMapped() {
		return this != NO;
	}
	
	public static boolean isPDOMapped(PDOMappingType map) {
		return (map != null) && map != NO;
	}
	
	public boolean canBeSource() {
		return this == TPDO || this == DEFAULT; 
	}
	
	public boolean canBeDestination() {
		return this == RPDO || this == DEFAULT; 
	}

}
