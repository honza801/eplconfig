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

import java.util.HashMap;
import java.util.Properties;

import org.ethernet_powerlink.ObjectList.Object.SubObject;

import cz.rexcontrols.epl.editor.project.CfgDataIdent;
import cz.rexcontrols.epl.editor.project.CfgIndex;
import cz.rexcontrols.epl.editor.project.CfgSubindex;
import cz.rexcontrols.epl.editor.project.CfgSubindexes;

/**
 * Wrapper around Epl SubIndex as read from the xml document.
 * 
 * @author honza801
 *
 */
public class EplSubindex extends EplObject {

	private SubObject object;
	private EplIndex parent;
	private CfgSubindex cfgSubindex;

	
	/**
	 * Default constructor.
	 * @param name
	 */
	public EplSubindex(String name) {
		this.object = new SubObject();
		this.object.setName(name);
	}
	
	/**
	 * Constructor.
	 * @param object
	 * @param parent
	 */
	public EplSubindex(SubObject object, EplIndex parent) {
		//setExportable(false);
		this.object = object;
		this.parent = parent;
		this.children = new HashMap<Integer, BaseNodeInterface>();
	}

	@Override
	public int addChildObject(BaseNodeInterface object, boolean initialized) {
		if (DomainNodeInterface.class.isInstance(object)) {
			children.put(children.size(), object);
			return children.keySet().size()-1;
		}
		else {
			return -1;
		}
	}
	
	@Override
	public SubObject getObject() {
		return object;
	}

	public EplIndex getParentIndex() {
		return parent;
	}

	public void setParentIndex(EplIndex parent) {
		this.parent = parent;
	}

	@Override
	public ProfileInterface getParentProfile() {
		return getParentIndex().getParentProfile();
	}
	
	@Override
	public void setParentProfile(ProfileInterface parent) {
		this.getParentIndex().setParentProfile(parent);
	}

	@Override
	public Properties getProperties() {
		Properties props = super.getProperties();
		String idx = Integer.toHexString(XDDDocument.byteArrToInt(object.getSubIndex()));
		while (idx.length() < 2) {
			idx = "0"+idx;
		}
		props.setProperty(EplPropertyType.SUB_INDEX.toString(),	"0x"+idx);
		
		return props;
	}

	@Override
	public void setProperties(Properties props) {
		for (String key : props.stringPropertyNames()) {
			EplPropertyType type = EplPropertyType.getEnum(key);
			if (type != null) {
				switch (type) {
				case SUB_INDEX: 
					object.setSubIndex(XDDDocument.intToByteArr(
							fromHexStringToInteger(props.getProperty(key)), 2));
					break;
				}
			}
		}
		
		super.setProperties(props);
	}
	
	@Override
	public String getName() {
		return object.getName();
	}

	@Override
	public int getIndex() {
		return XDDDocument.byteArrToInt(object.getSubIndex());
	}

	@Override
	public void setIndex(int index) {
		String idx = Integer.toHexString(index);
		while (idx.length() < 2) {
			idx = "0"+idx;
		}
		object.setSubIndex(XDDDocument.intToByteArr(index, 1));
		syncToCfg();
	}
	
	@Override
	public void setPDO(PDOMappingType type) {
		object.setPDOmapping(type.getVisible());
	}
	
	@Override
	public void setActualValue(String value) {
		object.setActualValue(value);
	}

	@Override
	public void setDataType(DataType dataType) {
		byte[] bdataType = 	XDDDocument.dataTypeIntToByteArr(dataType.getIndex());
		object.setDataType(bdataType);
	}
	
	@Override
	public void setAccessType(AccessType accessType) {
		object.setAccessType(accessType.getSimple());
	}

	@Override
	public void setObjectType(ObjectType objectType) {
		object.setObjectType(objectType.getCode());
	}
	
	@Override
	public String toString() {
		String idx = Integer.toHexString(getIndex());
		while (idx.length() < 2) {
			idx = "0" + idx;
		}
		return  idx + " " + getName();
	}
	
	@Override
	public boolean isExportable() {
		return ((cfgSubindex != null) && (cfgSubindex.isCdcExportable()));
	}
	
	@Override
	public void setExportable(boolean exportable) {
		accessCfgSubindex();
		cfgSubindex.setCdcExportable(exportable);
	}

	@Override
	public boolean isUserObject() {
		return ((cfgSubindex != null) && (cfgSubindex.isUserObject()));
	}

	@Override
	public void setUserObject(boolean userObject) {
		accessCfgSubindex();
		cfgSubindex.setUserObject(userObject);
	}

	public void setCfgSubindex(CfgSubindex cfgSubindex) {
		this.cfgSubindex = cfgSubindex;
		syncToCfg();
	}

	public CfgSubindex accessCfgSubindex() {
		if (cfgSubindex == null) {
			CfgIndex cfgIndex = parent.accessCfgIndex();
			cfgSubindex = new CfgSubindex();
			CfgSubindexes cfgSubindexes = cfgIndex.getCfgSubindexes();
			if (cfgSubindexes == null) {
				cfgSubindexes = new CfgSubindexes();
				cfgIndex.setCfgSubindexes(cfgSubindexes);
			}
			cfgIndex.getCfgSubindexes().getCfgSubindex().add(cfgSubindex);
			syncToCfg();
		}
		
		return cfgSubindex;
	}

	protected void syncToCfg() {
		if (cfgSubindex != null) {
			cfgSubindex.setNumber(getIndex());
		}
	}

	@Override
	public String getAccessTypeString() {
		return object.getAccessType();
	}

	@Override
	public String getActualValue() {
		return object.getActualValue();
	}

	@Override
	public byte[] getDataTypeString() {
		return object.getDataType();
	}

	@Override
	public String getDefaultValue() {
		return object.getDefaultValue();
	}

	@Override
	public String getHighLimit() {
		return object.getHighLimit();
	}

	@Override
	public String getLowLimit() {
		return object.getLowLimit();
	}

	@Override
	public short getObjectTypeCode() {
		return object.getObjectType();
	}

	@Override
	public String getPDOString() {
		return object.getPDOmapping();
	}

	@Override
	public void setHighLimit(String value) {
		object.setHighLimit(value);
	}

	@Override
	public void setLowLimit(String value) {
		object.setLowLimit(value);
	}

	@Override
	public void setPDOString(String value) {
		object.setPDOmapping(value);
		
	}

	@Override
	public void setName(String value) {
		object.setName(value);
	}

	@Override
	public CfgDataIdent getDataIdent() {
		CfgDataIdent cdi = new CfgDataIdent();
		if (getParentProfile() != null) {
			cdi.setNode(getParentProfile().getProfileId());			
		}
		cdi.setIndex(getParentIndex().getIndex());
		cdi.setSubindex(getIndex());
		return cdi;
	}

	@Override
	public String toFullString() {
		return
		((getParentProfile() != null) ? 
				getParentProfile().getProfileId() + "." : "-.") +
		Integer.toHexString(	getParentIndex().getIndex()) + ":" +
		Integer.toHexString(getIndex()) + " " + 
		getName();
	}
	
	@Override
	public int compareTo(BaseNodeInterface o) {
		return this.getIndex() - o.getIndex();
	}

}
