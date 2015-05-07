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
 * Property types of an epl object
 * 
 * @author honza801
 * 
 */
public enum EplPropertyType {

	INDEX("Index (hex)"),
	SUB_INDEX("Sub index (hex)"),
	NAME("Name"),
	PDO_MAPPING("PDO mapping"),
	ACTUAL_VALUE("Actual value"), 
	LOW_LIMIT("Low limit"),
	HIGH_LIMIT("High limit"),
	SIZE("Size"),
	INITIAL_VALUE("Initial value"),
	UNIQUE_VALUE("Unique value"),
	DEFAULT_VALUE("Default value"),
	OFFSET("Offset"),
	DATA_TYPE("Data type"),
	
	// some additional values
	EXPORTABLE("Exportable"),
	
	PARENT("Parent"),

	// project properties 
	PROJECT_NAME("Name"),
	PROJECT_CYCLE_LEN("Cycle length"),
	PROJECT_CTIME("Configuration time"),
	PROJECT_CDATE("Configuration date"),
	PROJECT_FILENAME("Project filename"),
	
	// profile properties
	PROFILE_NAME("Profile name"),
	PROFILE_SOURCE("Profile source"),
	PROFILE_REVISION("Profile revision"),
	PROFILE_IDENT("Profile identification"),
	PROFILE_DATE("Profile date"),
	PROFILE_CLASSID("Profile class ID"),
	PROFILE_ADDINS("Additional informations"),
	PROFILE_DEVICE_CLASS("Device class"),
	PROFILE_FILE_CREATOR("File creator"),
	PROFILE_FILE_MODBY("File modified by"),
	PROFILE_FILENAME("Filename"),
	PROFILE_FILE_VERSION("File version"),
	PROFILE_FORMAT_NAME("Format name"),
	PROFILE_FORMAT_VERSION("Format version");

	
	// stores property type name
	private String name;
	
	/**
	 * Default constructor
	 * @param type
	 */
	EplPropertyType(String type) {
		this.name = type;
	}
	
	public String toString() {
		return name;
	}
	
	public static EplPropertyType getEnum(String type) {
		for (EplPropertyType out : values()) {
			if (out.toString().compareTo(type) == 0) {
				return out;
			}
		}
		return null;
	}
	
	private boolean isRecordEditable() {
		return	
		this != HIGH_LIMIT &&
		this != LOW_LIMIT &&
		this != PDO_MAPPING &&
		this != DEFAULT_VALUE &&
		this != ACTUAL_VALUE
		;
	}
	
	private boolean isArrayEditable() {
		return 
		this != HIGH_LIMIT &&
		this != LOW_LIMIT &&
		this != DEFAULT_VALUE &&
		this != ACTUAL_VALUE
		;		
	}
	
	public boolean isEditableByObject(ObjectType objectType) {
		if (this == PARENT) {
			return false;
		}
		if (objectType != ObjectType.ARRAY && objectType == ObjectType.RECORD) {
			return true;
		}
		if (objectType == ObjectType.ARRAY) {
			return isArrayEditable();
		}
		if (objectType == ObjectType.RECORD) {
			return isRecordEditable();
		}
		return true;
	}
	
	public boolean isDomainEditable() {
		return 
		this != OFFSET && 
		this != INDEX &&
		this != DATA_TYPE;
	}

	public boolean isProjectEditable() {
		return 
		this != PROJECT_FILENAME &&
		this != PROJECT_CDATE &&
		this != PROJECT_CTIME;
	}
	
	public boolean isRootNodeEditable() {
		return this != PROFILE_CLASSID && this != PROFILE_DATE;
	}
	
}
