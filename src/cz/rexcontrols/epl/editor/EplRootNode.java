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
import java.util.Map;
import java.util.Properties;

import org.ethernet_powerlink.ISO15745Profile;
import org.ethernet_powerlink.ProfileBodyCommunicationNetworkPowerlink;
import org.ethernet_powerlink.ProfileBodyDevicePowerlink;
import org.ethernet_powerlink.ProfileHeaderDataType;
import org.ethernet_powerlink.ObjectList.Object;

/**
 * This class represents root node of a profile.
 * 
 * @author honza801
 *
 */
public class EplRootNode implements RootNodeInterface {

	private Map<Integer, EplIndex> objectNodes;
	private ProfileInterface parent;
	private List<Object> objectList;
	private ISO15745Profile profileBody;
	
	private final int minIndex = 8191;

	/**
	 * Constructor sets necessary parameters of the object
	 * @param props
	 * @param parent
	 */
	public EplRootNode(ISO15745Profile profileBody) {
		this.profileBody = profileBody;
		this.objectNodes = new HashMap<Integer, EplIndex>();
	}
	
	@Override
	public List<EplIndex> getObjectNodes() {
		ArrayList<EplIndex> out;
		
		if (getParentProfile().isAdvanced()) {
			out = new ArrayList<EplIndex>(objectNodes.values());
		} else {
			out = new ArrayList<EplIndex>();
			for (EplIndex idx : objectNodes.values()) {
				if (checkIndex(idx.getIndex())) {
					out.add(idx);
				}
			}
		}

		Collections.sort(out);
		return out;
	}

	@Override
	public List<EplIndex> getAllObjectNodes() {
		ArrayList<EplIndex> out = 
			new ArrayList<EplIndex>(objectNodes.values());
		Collections.sort(out);
		return out;
	}

	@Override
	public int addObjectNode(EplIndex object) {
		objectNodes.put(object.getIndex(), object);
		if (Object.class.isInstance(object.getObject())) {
			objectList.add((Object)object.getObject());
		}
		ArrayList<EplIndex> objects = new ArrayList<EplIndex>(objectNodes.values());
		Collections.sort(objects);
		return objects.indexOf(object);
	}

	@Override
	public boolean removeObjectNode(EplIndex object) {
		return objectNodes.remove(object.getIndex()) != null &&
		objectList.remove(object.getObject());
	}
	
	@Override
	public void setObjectNodes(List<EplIndex> objects) {
		this.objectNodes = new HashMap<Integer, EplIndex>();
		for (EplIndex eo : objects) {
			this.objectNodes.put(eo.getIndex(), eo);
		}
	}

	@Override
	public Properties getProperties() {
		Properties props = new Properties();
		ProfileHeaderDataType h = profileBody.getProfileHeader();
		props.setProperty(
				EplPropertyType.PROFILE_NAME.toString(), 
				h.getProfileName());
		props.setProperty(
				EplPropertyType.PROFILE_SOURCE.toString(), 
				h.getProfileSource());
		props.setProperty(
				EplPropertyType.PROFILE_REVISION.toString(), 
				h.getProfileRevision());
		props.setProperty(
				EplPropertyType.PROFILE_IDENT.toString(), 
				h.getProfileIdentification());
		props.setProperty(
				EplPropertyType.PROFILE_DATE.toString(), 
				checkString(h.getProfileDate()));
		props.setProperty(
				EplPropertyType.PROFILE_CLASSID.toString(), 
				h.getProfileClassID().toString());
		props.setProperty(
				EplPropertyType.PROFILE_ADDINS.toString(), 
				checkString(h.getAdditionalInformation()));
		
		if (getType() == RootNodeTypeEnum.DEVICE_PROFILE) {
			ProfileBodyDevicePowerlink body = (ProfileBodyDevicePowerlink) profileBody.getProfileBody();
			props.setProperty(
					EplPropertyType.PROFILE_DEVICE_CLASS.toString(), 
					checkString(body.getDeviceClass()));
			props.setProperty(
					EplPropertyType.PROFILE_FILE_CREATOR.toString(), 
					checkString(body.getFileCreator()));
			props.setProperty(
					EplPropertyType.PROFILE_FILE_MODBY.toString(), 
					checkString(body.getFileModifiedBy()));
			props.setProperty(
					EplPropertyType.PROFILE_FILENAME.toString(), 
					body.getFileName());
			props.setProperty(
					EplPropertyType.PROFILE_FILE_VERSION.toString(), 
					body.getFileVersion());
			props.setProperty(
					EplPropertyType.PROFILE_FORMAT_NAME.toString(), 
					body.getFormatName());
			props.setProperty(
					EplPropertyType.PROFILE_FORMAT_VERSION.toString(), 
					body.getFormatVersion());
		} 
		else if (getType() == RootNodeTypeEnum.NETWORK_PROFILE) {
			ProfileBodyCommunicationNetworkPowerlink body = 
				(ProfileBodyCommunicationNetworkPowerlink) profileBody.getProfileBody();
			props.setProperty(
					EplPropertyType.PROFILE_FILE_CREATOR.toString(), 
					body.getFileCreator());
			props.setProperty(
					EplPropertyType.PROFILE_FILE_MODBY.toString(), 
					body.getFileModifiedBy());
			props.setProperty(
					EplPropertyType.PROFILE_FILENAME.toString(), 
					body.getFileName());
			props.setProperty(
					EplPropertyType.PROFILE_FILE_VERSION.toString(), 
					body.getFileVersion());
			props.setProperty(
					EplPropertyType.PROFILE_FORMAT_NAME.toString(), 
					body.getFormatName());
			props.setProperty(
					EplPropertyType.PROFILE_FORMAT_VERSION.toString(), 
					body.getFormatVersion());
		}

		return props;
	}

	@Override
	public void setProperties(Properties props) {
		ProfileHeaderDataType h = profileBody.getProfileHeader();
		for (String key : props.stringPropertyNames()) {
			EplPropertyType type = EplPropertyType.getEnum(key);
			if (type != null) {
				switch (type) {
				case PROFILE_NAME:
					h.setProfileName(props.getProperty(key));
					break;
				case PROFILE_SOURCE:
					h.setProfileSource(props.getProperty(key));
					break;
				case PROFILE_REVISION:
					h.setProfileRevision(props.getProperty(key));
					break;
				case PROFILE_IDENT:
					h.setProfileIdentification(props.getProperty(key));
					break;
				case PROFILE_ADDINS:
					h.setAdditionalInformation(props.getProperty(key));
					break;
				}
				
				if (getType() == RootNodeTypeEnum.DEVICE_PROFILE) {
					ProfileBodyDevicePowerlink body = (ProfileBodyDevicePowerlink) profileBody.getProfileBody();
					switch (type) {
					case PROFILE_DEVICE_CLASS:
						body.setDeviceClass(props.getProperty(key));
						break;
					case PROFILE_FILE_CREATOR:
						body.setFileCreator(props.getProperty(key));
						break;
					case PROFILE_FILE_MODBY:
						body.setFileModifiedBy(props.getProperty(key));
						break;
					case PROFILE_FILENAME:
						body.setFileName(props.getProperty(key));
						break;
					case PROFILE_FILE_VERSION: 
						body.setFileVersion(props.getProperty(key));
						break;
					case PROFILE_FORMAT_NAME:
						body.setFormatName(props.getProperty(key));
						break;
					case PROFILE_FORMAT_VERSION:
						body.setFormatVersion(props.getProperty(key));
						break;
					}
				} 
				else if (getType() == RootNodeTypeEnum.NETWORK_PROFILE) {
					ProfileBodyCommunicationNetworkPowerlink body = 
						(ProfileBodyCommunicationNetworkPowerlink) profileBody.getProfileBody();
					switch (type) {
					case PROFILE_FILE_CREATOR:
						body.setFileCreator(props.getProperty(key));
						break;
					case PROFILE_FILE_MODBY:
						body.setFileModifiedBy(props.getProperty(key));
						break;
					case PROFILE_FILENAME:
						body.setFileName(props.getProperty(key));
						break;
					case PROFILE_FILE_VERSION:
						body.setFileVersion(props.getProperty(key));
						break;
					case PROFILE_FORMAT_NAME:
						body.setFormatName(props.getProperty(key));
						break;
					case PROFILE_FORMAT_VERSION: 
						body.setFormatVersion(props.getProperty(key));
						break;
					}
				}

			}
		}
	}

	@Override
	public RootNodeTypeEnum getType() {
		if (profileBody.getProfileBody() instanceof ProfileBodyDevicePowerlink) {
			return RootNodeTypeEnum.DEVICE_PROFILE;
		}
		else if (profileBody.getProfileBody() instanceof ProfileBodyCommunicationNetworkPowerlink) {
			return RootNodeTypeEnum.NETWORK_PROFILE;			
		}
		return null;
	}

	@Override
	public ProfileInterface getParentProfile() {
		return parent;
	}

	@Override
	public void setParentProfile(ProfileInterface parent) {
		this.parent = parent;
	}
	
	public void setObjectList(List<Object> objectList) {
		this.objectList = objectList;
	}

	@Override
	public EplIndex getByIndex(int index)
	{
		return objectNodes.get(index);
	}
	
	private boolean checkIndex(int index) {
		return (index > minIndex);
	}

	/**
	 * @param str
	 * @return str.toString() if str is not null, else return empty string
	 */
	private static String checkString(java.lang.Object str) {
		return (str != null) ? str.toString() : new String();
	}
	

}
