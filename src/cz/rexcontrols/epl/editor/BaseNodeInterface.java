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
import java.util.Properties;

import cz.rexcontrols.epl.editor.project.CfgDataIdent;

/**
 * Base node methods, used by {@link MappingInterface}
 * 
 * @author honza801
 *
 */
public abstract class BaseNodeInterface implements Comparable<BaseNodeInterface>{

	/**
	 * 
	 * @return Name of this node.
	 */
	public abstract String getName();
	
	public abstract String getAlias();
	
	public abstract void setAlias(String alias);
	
	/**
	 * 
	 * @return Index of this node.
	 */
	public abstract int getIndex();
	
	/**
	 * Set index of this node to index.
	 * @param index
	 */
	public abstract void setIndex(int index);
	
	/**
	 * 
	 * @return XML Object pointed by this object.
	 */
	public abstract Object getObject();

	/**
	 * 
	 * @return true if object is exportable.
	 */
	public abstract boolean isExportable();
	
	/**
	 * Set exportability of the object.
	 * @param exportable
	 */
	public abstract void setExportable(boolean exportable);

	/**
	 * 
	 * @return Properties of this object.
	 */
	public abstract Properties getProperties();
	
	/**
	 * Set properties of this object.
	 * @param props
	 */
	public abstract void setProperties(Properties props);

	/**
	 * 
	 * @return Parent profile.
	 */
	public abstract ProfileInterface getParentProfile();
	
	/**
	 * Set parent profile.
	 * @param parent
	 */
	public abstract void setParentProfile(ProfileInterface parent);
	
	/**
	 * 
	 * @return true if the object is an user object (added by user)
	 */
	public abstract boolean isUserObject();
	
	/**
	 * Set user object.
	 * @param isUserObject
	 */
	public abstract void setUserObject(boolean isUserObject);

	/**
	 * Set actual value to value.
	 * @param value
	 */
	public abstract void setActualValue(String value);
	
	/**
	 * Set actual value to value.
	 * @param value
	 */
	public abstract void setActualValue(int value);
	
	/**
	 * Set actual value to value.
	 * @param value
	 */
	public abstract void setActualValue(long value);
	
	/**
	 * 
	 * @return actual value.
	 */
	public abstract String getActualValue();
	
	/**
	 * 
	 * @return default value of this node.
	 */
	public abstract String getDefaultValue();

	public abstract String getValidValue();
	
	public abstract int getDataLength();
	
	
	public abstract int getValueAsInt();
	public abstract long getValueAsLong();
	public abstract BigInteger getValueAsBigInt();

	/**
	 * 
	 * @return String representation of PDO mapping.
	 */
	public abstract String getPDOString();
	
	/**
	 * 
	 * @return {@link PDOMappingType} of this object
	 */
	public abstract PDOMappingType getPDO();
	
	/**
	 * Set PDO mapping
	 * @param pdoMapping
	 */
	public abstract void setPDO(PDOMappingType pdoMapping);
	
	/**
	 * 
	 * @param hex
	 * @return {@link Integer} value of the hex string.
	 */
	public static Integer fromHexStringToInteger(String hex) {
		int beginIndex = hex.indexOf('x')+1;
		try {
			return Integer.parseInt(hex.substring(beginIndex), 16);			
		}
		catch (Exception e) {
			return -1;
		}
	}
	
	/**
	 * 
	 * @return low limit for this node.
	 */
	public abstract String getLowLimit();
	
	/**
	 * Set low limit to value.
	 * @param value
	 */
	public abstract void setLowLimit(String value);
	
	/**
	 * 
	 * @return high limit for this node.
	 */
	public abstract String getHighLimit();
	
	/**
	 * Set high limit to value.
	 * @param value
	 */
	public abstract void setHighLimit(String value);
	
	/**
	 * Checks string
	 * @param str
	 * @return
	 */
	protected abstract String checkString(String str);
	
	/**
	 * Set node name to value.
	 * @param value
	 */
	public abstract void setName(String value);
	
	/**
	 * 
	 * @return <code>true</code> if actualValue is not null and not empty.
	 */
	public boolean getActualValueValid() {
		return (getActualValue() != null) && (getActualValue() != "");
	}
	
	/**
	 * 
	 * @return Size of this object. This depends on the DataType of this object.
	 */
	public abstract int getSizeInBits();
	
	/**
	 * 
	 * @return Actual size in bits.
	 */
	public abstract int getActualSizeInBits();

	/**
	 * 
	 * @return {@link CfgDataIdent} relayed to this node.
	 */
	public abstract CfgDataIdent getDataIdent();
	
	/**
	 * 
	 * @return Full name of the node fe. <profileid>.<index>.<subindex>:<domain>
	 */
	public abstract String toFullString();
	
}
