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

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Properties;

import org.ethernet_powerlink.ObjectList.Object;
import org.ethernet_powerlink.ObjectList.Object.SubObject;

import cz.rexcontrols.epl.editor.project.CfgDataIdent;
import cz.rexcontrols.epl.editor.project.CfgIndex;
import cz.rexcontrols.epl.editor.project.CfgIndexes;
import cz.rexcontrols.epl.editor.project.CfgNode;
import cz.rexcontrols.epl.editor.project.CfgSubindex;
import cz.rexcontrols.epl.editor.project.CfgSubindexes;

/**
 * Wrapper around Epl Index as read from the xml document.
 * 
 * @author honza801
 *
 */
public class EplIndex extends EplObject {

	private org.ethernet_powerlink.ObjectList.Object object;
	private ProfileInterface parent;
	// duplicit value of parent, parent should be removed later
	//private EplNode parentNode;
	private CfgIndex cfgIndex;
	
	/**
	 * Default constructor
	 * @param name
	 */
	public EplIndex(String name) {
		this(new org.ethernet_powerlink.ObjectList.Object());
		this.setName(name);
		this.object.setDataType(new byte[] {});
	}
	
	/**
	 * Constructs object using data from the parameter
	 * @param object
	 */
	public EplIndex(org.ethernet_powerlink.ObjectList.Object object) {
		//setExportable(false);
		this.object = object;
		children = new HashMap<Integer, BaseNodeInterface>();
	}

	@Override
	public int addChildObject(BaseNodeInterface object, boolean initialized) {
		children.put(object.getIndex(), object);
		if (!initialized) {
			getObject().getSubObject().add((SubObject) object.getObject());				
		}
		ArrayList<BaseNodeInterface> objects = 
			new ArrayList<BaseNodeInterface>(children.values());
		Collections.sort(objects);
		return objects.indexOf(object);
	}

	/**
	 * @return XML object
	 */
	public Object getObject() {
		return object;
	}

	@Override
	public ProfileInterface getParentProfile() {
		return parent;
		//return parentNode;
	}
	
	@Override
	public void setParentProfile(ProfileInterface parent) {
		this.parent = parent;
		//this.parentNode = (EplNode) parent;
	}

	@Override
	public String getName() {
		return object.getName();
	}

	@Override
	public Properties getProperties() {
		Properties props = super.getProperties();
		String idx = Integer.toHexString(XDDDocument.byteArrToInt(object.getIndex()));
		while (idx.length() < 4) {
			idx = "0"+idx;
		}
		props.setProperty(EplPropertyType.INDEX.toString(), "0x"+idx);
		return props;
	}

	@Override
	public void setProperties(Properties props) {
		for (String key : props.stringPropertyNames()) {
			EplPropertyType type = EplPropertyType.getEnum(key);
			if (type != null) {
				switch (type) {
				case INDEX: 
					int newindex = fromHexStringToInteger(props.getProperty(key));
					if (newindex > 0) {
						object.setIndex(XDDDocument.intToByteArr(newindex, 2));
					}
					break;
				}
			}
		}
		
		super.setProperties(props);
	}

	@Override
	public int getIndex() {
		return XDDDocument.byteArrToInt(object.getIndex());
	}
	
	/**
	 * Removes SubObject of this Index.
	 * @param subObject
	 * @return <code>true</code> if subObject was found, otherwise false;
	 */
	public boolean removeChildSubObobject(EplSubindex subObject) {
		return children.remove(subObject.getIndex()) != null && 
		object.getSubObject().remove(subObject.getObject());
	}

	/**
	 * 
	 * @return {@link EplSubindex} with the highest SubIndex value
	 */
	public EplSubindex getHighestSubindex() {
		ArrayList<Integer> list = new ArrayList<Integer>(children.keySet());
		Collections.sort(list);
		return (EplSubindex) children.get(list.get(list.size()-1));
	}

	@Override
	public void setActualValue(String value) {
		object.setActualValue(value);		
	}

	@Override
	public String getActualValue() {
		return object.getActualValue();		
	}


	@Override
	public void setIndex(int index) {
		String idx = Integer.toHexString(index);
		while (idx.length() < 4) {
			idx = "0"+idx;
		}
		object.setIndex(XDDDocument.intToByteArr(index, 2));
		syncToCfg();
	}

	@Override
	public void setDataType(DataType dataType) {
		byte[] bdataType = 	XDDDocument.dataTypeIntToByteArr(dataType.getIndex());
		object.setDataType(bdataType);
		setSameDataTypeOfArrayObject();
	}

	@Override
	public void setAccessType(AccessType accessType) {
		object.setAccessType(accessType.getSimple());
	}

	@Override
	public void setObjectType(ObjectType objectType) {
		object.setObjectType(objectType.getCode());
		setSameDataTypeOfArrayObject();
	}
	
	@Override
	public String toString() {
		String idx = Integer.toHexString(getIndex());
		while (idx.length() < 4) {
			idx = "0" + idx;
		}
		return  idx + " " + getName();
	}

	@Override
	public boolean isExportable() {
		return ((cfgIndex != null) && (cfgIndex.isCdcExportable()));
	}
	
	@Override
	public void setExportable(boolean exportable) {
		accessCfgIndex();
		cfgIndex.setCdcExportable(exportable);
	}

	@Override
	public boolean isUserObject() {
		return ((cfgIndex != null) && (cfgIndex.isUserObject()));
	}

	@Override
	public void setUserObject(boolean isUserObject) {
		accessCfgIndex();
		cfgIndex.setCdcExportable(isUserObject);
	}
	
	private void distributeCfgSubindexes() {
		if (cfgIndex == null)
			return;
		
		CfgSubindexes cfgSubindexes = cfgIndex.getCfgSubindexes();
		if (cfgSubindexes == null)
			return;
		
		int i = 0;
		
		while (i < cfgSubindexes.getCfgSubindex().size()) {
			CfgSubindex si = cfgSubindexes.getCfgSubindex().get(i);
			int num = si.getNumber();
			EplSubindex subindex = (EplSubindex) this.getByIndex(num);
			
			if (subindex == null) {
				cfgSubindexes.getCfgSubindex().remove(i);
			} else {
				subindex.setCfgSubindex(si);
				i++;
			}
		}
		
	}
	
	public void setCfgIndex(CfgIndex cfgIndex) {
		this.cfgIndex = cfgIndex;
		syncToCfg();
		distributeCfgSubindexes();
	}
	
	public CfgIndex accessCfgIndex() {
		if (cfgIndex == null) {
			cfgIndex = new CfgIndex();
			if (parent == null) {
				log("null parent for index" + Integer.toString(getIndex()));
			}
			CfgNode cfgNode = ((EplNode) parent).accessCfgNode();
			CfgIndexes cfgIndexes = cfgNode.getCfgIndexes();
			if (cfgIndexes == null) {
				cfgIndexes = new CfgIndexes();
				cfgNode.setCfgIndexes(cfgIndexes);
			}
			cfgIndexes.getCfgIndex().add(cfgIndex);
			syncToCfg();
		}
		
		return cfgIndex;
	}
	
	protected void syncToCfg() {
		if (cfgIndex != null) {
			cfgIndex.setNumber(getIndex());
		}
	}

	private void setSameDataTypeOfArrayObject() {
		if (getObjectType() == ObjectType.ARRAY) {
			for (BaseNodeInterface soni : getChildObjects()) {
				if (soni.getIndex() != 0) {
					((EplSubindex)soni).setDataType(this.getDataType());
				}
			}
		}		
	}
	
	@Override
	public void setPDO(PDOMappingType type) {
		object.setPDOmapping(type.getVisible());
	}

	@Override
	public String getAccessTypeString() {
		return object.getAccessType();
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
	public short getObjectTypeCode() {
		return object.getObjectType();
	}

	@Override
	public String getPDOString() {
		return object.getPDOmapping();
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
	public int getActualSizeInBits() {
		return getDataType().getSizeInBits();
	}

	@SuppressWarnings("unchecked")
	public List<EplSubindex> getChildSubObjects() {
		if (hasSubIndexChildren()) {
			List<BaseNodeInterface> out = getChildObjects();
			Collections.sort(out);
			return (List<EplSubindex>)(List<?>)out;
		}
		return null;
	}

	@Override
	public CfgDataIdent getDataIdent() {
		CfgDataIdent cdi = new CfgDataIdent();
		if (getParentProfile() != null) {
			cdi.setNode(getParentProfile().getProfileId());
		}
		cdi.setIndex(getIndex());
		return cdi;
	}

	@Override
	public String toFullString() {
		if (getParentProfile() != null && getName().compareTo("") != 0) {
			return getParentProfile().getProfileId() + "." +
			Integer.toHexString(getIndex()) + " " + getName();
		} else {
			return "";			
		}
	}

	@Override
	public int compareTo(BaseNodeInterface o) {
		return (int) Math.signum(this.getIndex() - o.getIndex());
	}
	
	public void refreshNumberOfEntries() {
		if (this.hasSubIndexChildren() && this.getObjectType().isComplexType()) {
			EplSubindex es = (EplSubindex) this.getByIndex(0);
			if (es != null) {
				String scur = Integer.toHexString(
						this.getHighestSubindex().getIndex());
				while (scur.length() < 2) {
					scur = "0" + scur;
				}
				es.setActualValue("0x"+scur);
			}
		}
	}

	/**
	 * Logging used for low level debugging
	 * @param message
	 */
	private void log(String message) {
		System.out.println(this.getClass().getCanonicalName() + ": " + message);
	}
}
