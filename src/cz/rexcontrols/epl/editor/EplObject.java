package cz.rexcontrols.epl.editor;
/**
 * Copyright 2010 Roman Pisl. All rights reserved.
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
 * THIS SOFTWARE IS PROVIDED BY Roman Pisl ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
 * FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL Roman Pisl OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
 * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
 * ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 * 
 * The views and conclusions contained in the software and documentation are those of the
 * authors and should not be interpreted as representing official policies, either expressed
 * or implied, of Roman Pisl.
 * 
 */

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

public abstract class EplObject extends BaseNodeInterface {

	protected Map<Integer, BaseNodeInterface> children;
	
	protected String alias;
	
	public BaseNodeInterface getByIndex(int index) {
		return children.get(index);
	}
	
	/**
	 * 
	 * @return list of children
	 */
	public List<BaseNodeInterface> getChildObjects() {
		ArrayList<BaseNodeInterface> out =
			new ArrayList<BaseNodeInterface>(children.values());
		//Collections.sort(out);
		return out;
	}

	/**
	 * 
	 * @return sorted list of chldren
	 */
	public List<BaseNodeInterface> getSortedChildObjects() {
		ArrayList<BaseNodeInterface> out =
			new ArrayList<BaseNodeInterface>(children.values());
		return out;
	}

	
	/**
	 * 
	 * @param subObject
	 * @return position of child subobject in list
	 */
	public int addChildObject(BaseNodeInterface subObject) {
		return addChildObject(subObject, false);
	}
	
	/**
	 * 
	 * @param object
	 * @param init
	 * @return position of child subobject in list
	 */
	public abstract int addChildObject(BaseNodeInterface object, boolean initialized);
	
	/**
	 * Sets children objects
	 * @param children
	 */
	public void setChildSubObjects(List<BaseNodeInterface> children) {
		this.children = new HashMap<Integer, BaseNodeInterface>();
		for (BaseNodeInterface eso : children) {
			this.children.put(eso.getIndex(), eso);
		}
	}

	/**
	 * 
	 * @return true if children of this object is an instance of {@link EplSubindex}
	 */
	public boolean hasSubIndexChildren() {
		return 
		getChildObjects().size() > 0 &&
		EplSubindex.class.isInstance(getChildObjects().get(0));
	}

	/**
	 * 
	 * @return true if children of this object is an instance of {@link EplDomain}
	 */
	public boolean hasDomainChildren() {
		return 
		getChildObjects().size() > 0 &&
		EplDomain.class.isInstance(getChildObjects().get(0));
	}
	
	/**
	 * Set PDO mapping defined by String
	 * @param value
	 */
	public abstract void setPDOString(String value);
	
	/**
	 * 
	 * @return <code>true</code> if readable.
	 */
	public boolean getIsRead()
	{
		if (getAccessType() == null)
			return true;
		return ((getAccessType() == AccessType.READ_ONLY) || (getAccessType() == AccessType.READ_WRITE));
	}

	/**
	 * 
	 * @return <code>true</code> if writable.
	 */
	public boolean getIsWrite()
	{
		if (getAccessType() == null)
			return false;
		return ((getAccessType() == AccessType.WRITE_ONLY) || (getAccessType() == AccessType.READ_WRITE));
	}
	
	@Override
	public int getValueAsInt() {
		String s = getValidValue();
		if (s == null)
			return 0;
		else
			return Integer.decode(s);
	}

	@Override
	public long getValueAsLong() {
		String s = getValidValue();
		if (s == null)
			return 0;
		else
			return Long.decode(getValidValue());
	}

	@Override
	public BigInteger getValueAsBigInt() {
		String s = getValidValue();
		if (s == null)
			return new BigInteger("0");
		else
		{
			if (s.startsWith("0x"))
				return new BigInteger(s.substring(2), 16);
			else
				return new BigInteger(s, 10);
		}
	}

	@Override
	public int getDataLength()
	{
		int len = DataType.getSize(getDataType());
		
		if (len == 0) {
			if (getActualValue() != null) {
				len = getActualValue().length();
			}
		}
		
		return len;
	}

	@Override
	public String getValidValue()
	{
		String s = getActualValue();
		
		if ((s == null) || (s == ""))
			s = getDefaultValue();
		return s;
	}

	@Override
	public void setActualValue(int value) {
		String v = DataType.getEnum(
				XDDDocument.byteArrToInt(
						getDataTypeString())).formatValue(value);
		setActualValue(v);
	}
	
	@Override
	public void setActualValue(long value) {
		String v = DataType.getEnum(
				XDDDocument.byteArrToInt(
						getDataTypeString())).formatValue(value);
		setActualValue(v);
	}


	/**
	 * 
	 * @return {@link DataType} of this object if defined or INTEGER8.
	 */
	public DataType getDataType() {
		if (getDataTypeString() == null) {
			setDataType(DataType.INTEGER8); // default value, if not present
		}
		return DataType.getEnum(XDDDocument.byteArrToInt(getDataTypeString()));
	}

	/**
	 * 
	 * @return {@link AccessType} of this object.
	 */
	public AccessType getAccessType() {
		return AccessType.getEnumByType(getAccessTypeString());
	}
	
	@Override
	public PDOMappingType getPDO() {
		return PDOMappingType.getEnum(getPDOString());
	}


	@Override
	protected String checkString(String str) {
		return (str != null) ? str : "";
	}
	
	/**
	 * 
	 * @return {@link ObjectType} of this object.
	 */
	public ObjectType getObjectType() {
		return ObjectType.getEnumByCode(getObjectTypeCode());
	}
	
	@Override
	public Properties getProperties() {
		Properties props = new Properties();
		props.setProperty(
				EplPropertyType.NAME.toString(), 
				getName());
		props.setProperty(
				EplPropertyType.ACTUAL_VALUE.toString(), 
				checkString(getActualValue()));
		props.setProperty(
				EplPropertyType.LOW_LIMIT.toString(), 
				checkString(getLowLimit()));
		props.setProperty(
				EplPropertyType.HIGH_LIMIT.toString(), 
				checkString(getHighLimit()));
		props.setProperty(
				EplPropertyType.DEFAULT_VALUE.toString(), 
				checkString(getDefaultValue()));
		props.setProperty(
				EplPropertyType.PARENT.toString(), 
				Integer.toString(getParentProfile().getProfileId()));		
		return props;
	}
	
	@Override
	public void setProperties(Properties props) {
		for (String key : props.stringPropertyNames()) {
			EplPropertyType type = EplPropertyType.getEnum(key);
			if (type != null) {
				switch (type) {
				case NAME:
					setName(props.getProperty(key));
					break;
				case PDO_MAPPING:
					setPDOString(props.getProperty(key));
					break;
				case ACTUAL_VALUE:
					setActualValue(props.getProperty(key));
					break;
				case LOW_LIMIT:
					setLowLimit(props.getProperty(key));
					break;
				case HIGH_LIMIT:
					setHighLimit(props.getProperty(key));
					break;
				}
			}
		}
	}
	
	/**
	 * 
	 * @return DataType of object in String representation.
	 */
	public abstract byte[] getDataTypeString();
	
	/**
	 * Set {@link DataType} of this object.
	 * @param dataType
	 */
	public abstract void setDataType(DataType dataType);
	
	/**
	 * 
	 * @return Access type in string representation.
	 */
	public abstract String getAccessTypeString();
	
	/**
	 * Set {@link AccessType} of this object.
	 * @param accessType
	 */
	public abstract void setAccessType(AccessType accessType);
	
	/**
	 * 
	 * @return numeric code of this object type.
	 */
	public abstract short getObjectTypeCode();
	
	/**
	 * Set {@link ObjectType} of this object.
	 * @param objectType
	 */
	public abstract void setObjectType(ObjectType objectType);
	
	@Override
	public int getSizeInBits() {
		int size = getDataType().getSizeInBits();
		if (getDataType() == DataType.DOMAIN) {
			size = getActualSizeInBits();
		}
		return size;
	}

	@Override
	public int getActualSizeInBits() {
		if (getDataType() == DataType.DOMAIN) {
			DomainNodeInterface domain = 
				(DomainNodeInterface) children.get(children.size() - 1);
			return domain.getOffset() + domain.getSize();
		}
		return getDataType().getSizeInBits();
	}

	@Override
	public String getAlias() {
		return alias;
	}

	@Override
	public void setAlias(String alias) {
		this.alias = alias;
	}
}
