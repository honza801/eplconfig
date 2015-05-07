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

import org.ethernet_powerlink.VarDeclaration;

import cz.rexcontrols.epl.editor.project.CfgDataIdent;

/**
 * Wrapper around Epl Doman member as read from the xml document.
 * 
 * @author honza801
 *
 */
public class EplDomain extends DomainNodeInterface {

	private VarDeclaration var;
	private EplObject parentNode;
	protected String alias;

	/**
	 * Default constructor.
	 */
	public EplDomain(VarDeclaration var, EplObject parent) {
		this.var = var;
		this.parentNode = parent;
		setExportable(false);
	}
	
	@Override
	public VarDeclaration getObject() {
		return var;
	}
	
	@Override
	public EplObject getParentNode() {
		return parentNode;
	}

	@Override
	public ProfileInterface getParentProfile() {
		return getParentNode().getParentProfile();
	}
	
	@Override
	public void setParentProfile(ProfileInterface parent) {
		getParentNode().setParentProfile(parent);
	}

	@Override
	public Properties getProperties() {
		Properties props = new Properties();
		props.setProperty(
				EplPropertyType.NAME.toString(), 
				checkString(var.getName()));
		props.setProperty(
				EplPropertyType.SIZE.toString(), 
				checkString(var.getSize()));
		props.setProperty(
				EplPropertyType.INITIAL_VALUE.toString(), 
				checkString(var.getInitialValue()));
		props.setProperty(
				EplPropertyType.UNIQUE_VALUE.toString(),
				checkString(var.getUniqueID()));

		String idx = Integer.toHexString(getIndex());
		while (idx.length() < 2) {
			idx = "0"+idx;
		}
		props.setProperty(
				EplPropertyType.INDEX.toString(), "0x"+idx);
		props.setProperty(
				EplPropertyType.OFFSET.toString(),
				checkString(Integer.toString(getOffset())));
		props.setProperty(
				EplPropertyType.DATA_TYPE.toString(),
				getDataType().name());
		
		return props;
	}
	
	@Override
	public void setProperties(Properties props) {
		for (String key : props.stringPropertyNames()) {
			EplPropertyType type = EplPropertyType.getEnum(key);
			switch (type) {
			case NAME: 
				var.setName(props.getProperty(key));
				break;
			case SIZE:
				var.setSize(props.getProperty(key));
				break;
			case INITIAL_VALUE:
				var.setInitialValue(props.getProperty(key));
				break;
			case UNIQUE_VALUE:
				var.setUniqueID(props.getProperty(key));
				break;
			case INDEX:
				setIndex(fromHexStringToInteger(props.getProperty(key)));
				break;
				
			}
		}
	}
	
	public void setVarDeclaration(VarDeclaration var) {
		this.var = var;
	}

	@Override
	public int getIndex() {
		return parentNode.getChildObjects().indexOf(this);
	}

	@Override
	public String getName() {
		return var.getName();
	}
	
	protected String checkString(String check) {
		return (check != null)? check : "";
	}

	@Override
	public void setActualValue(String value) {
		// TODO Auto-generated method stub
	}

	@Override
	public void setActualValue(int value) {
		// TODO Auto-generated method stub
	}

	@Override
	public int getValueAsInt() {
		// TODO!! Auto-generated method stub
		return 0;
	}

	@Override
	public void setIndex(int index) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean isExportable() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isUserObject() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void setExportable(boolean exportable) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void setUserObject(boolean isUserObject) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public BigInteger getValueAsBigInt() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public long getValueAsLong() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public PDOMappingType getPDO() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setPDO(PDOMappingType pdoMapping) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String getValidValue() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getSize() {
		DomainDataType dtype = getDataType();
		return (dtype != null && dtype.hasStaticSize()) ? 
				dtype.getSize() : (var.getSize() != null) ? 
						Integer.valueOf(var.getSize()) : 0;
	}

	@Override
	public int getOffset() {
		int out = 0;
		for (BaseNodeInterface dni : parentNode.getChildObjects()) {
			if (dni.compareTo(this) == 0) {
				break;
			}
			out += ((DomainNodeInterface)dni).getSize();
		}
		return out;
	}

	@Override
	public void setActualValue(long value) {
		// TODO Auto-generated method stub
	}

	@Override
	public String getActualValue() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getDataLength() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public String getDefaultValue() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getHighLimit() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getLowLimit() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getPDOString() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setHighLimit(String value) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void setLowLimit(String value) {
		// TODO Auto-generated method stub
	}

	@Override
	public void setName(String value) {
		var.setName(value);
	}

	public String toString() {
		String idx = Integer.toHexString(getIndex());
		while (idx.length() < 2) {
			idx = "0" + idx;
		}
		return  idx + " " + getName();
	}

	@Override
	public DomainDataType getDataType() {
		if (var.getBITSTRING() != null) {
			System.out.println(var.getBITSTRING().getClass().getCanonicalName() + 
					" " + var.getBITSTRING());
			return DomainDataType.BITSTRING;
		} else if (var.getBOOL() != null) {
			return DomainDataType.BOOL;
		} else if (var.getBYTE() != null) {
			return DomainDataType.BYTE;
		} else if (var.getCHAR() != null) {
			return DomainDataType.CHAR;
		} else if (var.getDINT() != null) {
			return DomainDataType.DINT;
		} else if (var.getDWORD() != null) {
			return DomainDataType.DWORD;
		} else if (var.getINT() != null){
			return DomainDataType.INT;
		} else if (var.getLINT() != null) {
			return DomainDataType.LINT;
		} else if (var.getLREAL() != null) {
			return DomainDataType.LREAL;
		} else if (var.getLWORD() != null) {
			return DomainDataType.LWORD;
		} else if (var.getREAL() != null) {
			return DomainDataType.REAL;
		} else if (var.getSINT() != null) {
			System.out.println(var.getSINT().getClass().getCanonicalName() + 
					" " + var.getSINT());
			return DomainDataType.SINT;
		} else if (var.getSTRING() != null) {
			return DomainDataType.STRING;
		} else if (var.getUDINT() != null) {
			return DomainDataType.UDINT;
		} else if (var.getUINT() != null) {
			return DomainDataType.UINT;
		} else if (var.getULINT() != null) {
			return DomainDataType.ULINT;
		} else if (var.getUSINT() != null) {
			System.out.println(var.getUSINT().getClass().getCanonicalName() + 
					" " + var.getUSINT());
			return DomainDataType.USINT;
		} else if (var.getWORD() != null) {
			return DomainDataType.WORD;			
		} else if (var.getWSTRING() != null) {
			return DomainDataType.WSTRING;
		}
		return null;
	}

	@Override
	public void setDataType(DomainDataType dataType) {
		DomainDataType ctype = getDataType();
		
		if (ctype.equals(dataType)) {
			return;
		}
		
		switch (ctype) {
		case BITSTRING:
			var.setBITSTRING(null);
			break;
		case BOOL:
			var.setBOOL(null);
			break;
		case BYTE:
			var.setBYTE(null);
			break;
		case CHAR:
			var.setCHAR(null);
			break;
		case DINT:
			var.setINT(null);
			break;
		case DWORD:
			var.setDWORD(null);
			break;
		case INT:
			var.setINT(null);
			break;
		case LINT:
			var.setLINT(null);
			break;
		case LREAL:
			var.setREAL(null);
			break;
		case LWORD:
			var.setREAL(null);
			break;
		case REAL:
			var.setREAL(null);
			break;
		case SINT:
			var.setSINT(null);
			break;
		case STRING:
			var.setSTRING(null);
			break;
		case UDINT:
			var.setUDINT(null);
			break;
		case UINT:
			var.setUINT(null);
			break;
		case ULINT:
			var.setULINT(null);
			break;
		case USINT:
			var.setUSINT(null);
			break;
		case WORD:
			var.setWORD(null);
			break;
		case WSTRING:
			var.setWSTRING(null);
			break;
		}

		switch (dataType) {
		case BITSTRING:
			var.setBITSTRING(new Object());
			break;
		case BOOL:
			var.setBOOL(new Object());
			break;
		case BYTE:
			var.setBYTE(new Object());
			break;
		case CHAR:
			var.setCHAR(new Object());
			break;
		case DINT:
			var.setINT(new Object());
			break;
		case DWORD:
			var.setDWORD(new Object());
			break;
		case INT:
			var.setINT(new Object());
			break;
		case LINT:
			var.setLINT(new Object());
			break;
		case LREAL:
			var.setREAL(new Object());
			break;
		case LWORD:
			var.setREAL(new Object());
			break;
		case REAL:
			var.setREAL(new Object());
			break;
		case SINT:
			var.setSINT(new Object());
			break;
		case STRING:
			var.setSTRING(new Object());
			break;
		case UDINT:
			var.setUDINT(new Object());
			break;
		case UINT:
			var.setUINT(new Object());
			break;
		case ULINT:
			var.setULINT(new Object());
			break;
		case USINT:
			var.setUSINT(new Object());
			break;
		case WORD:
			var.setWORD(new Object());
			break;
		case WSTRING:
			var.setWSTRING(new Object());
			break;
		}
	}

	@Override
	public int getActualSizeInBits() {
		return this.getSize();
	}

	@Override
	public int getSizeInBits() {
		return getSize();
	}

	@Override
	public CfgDataIdent getDataIdent() {
		CfgDataIdent cdi = new CfgDataIdent();
		if (getParentProfile() != null) {
			cdi.setNode(getParentProfile().getProfileId());			
		}
		if (getParentNode() instanceof EplSubindex) {
			EplSubindex es = (EplSubindex) getParentNode();
			cdi.setIndex(es.getParentIndex().getIndex());
			cdi.setSubindex(es.getIndex());
		} else if (getParentNode() instanceof EplIndex) {
			cdi.setIndex(getParentNode().getIndex());
		}
		cdi.setDomainPart(getIndex());
		return cdi;
	}

	@Override
	public String toFullString() {
		String out = 
			(getParentProfile() != null) ? 
					(Integer.toString(getParentProfile().getProfileId())) : new String();
		out += ".";
		if (getParentNode() instanceof EplSubindex) {
			EplSubindex es =  (EplSubindex) getParentNode();
			out += Integer.toHexString(es.getParentIndex().getIndex()) + ":";
		}
		out += Integer.toHexString(getParentNode().getIndex()) + ".";
		out += Integer.toHexString(getIndex()) + " "; 
		out += getName();
		return out;
	}

	@Override
	public int compareTo(BaseNodeInterface o) {
		return (int) Math.signum(this.getIndex() - o.getIndex());
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
