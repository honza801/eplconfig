package cz.rexcontrols.epl.editor;
/**
 * Copyright 2010, Jan Krcmar
 * Copyright 2010, Roman Pisl
 * 
 * All rights reserved.
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

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;

import org.ethernet_powerlink.ApplicationProcess;
import org.ethernet_powerlink.ISO15745Profile;
import org.ethernet_powerlink.ISO15745ProfileContainer;
import org.ethernet_powerlink.Parameter;
import org.ethernet_powerlink.ProfileBodyCommunicationNetworkPowerlink;
import org.ethernet_powerlink.ProfileBodyDevicePowerlink;
import org.ethernet_powerlink.Struct;
import org.ethernet_powerlink.VarDeclaration;
import org.ethernet_powerlink.ObjectList.Object.SubObject;

/**
 * This class parses the xml/xdd file using ethernet_powerlink definitions,
 * stores it into object.
 * 
 * @author honza801
 *
 */
public class XDDDocument implements DocumentInterface {

	private final String pkgname = "org.ethernet_powerlink";
	private File xddFile;
	private ISO15745ProfileContainer profileContainer;
	private Logger log;
	
	/**
	 * Creates object
	 * @param filename file to parse
	 */
	public XDDDocument(String filename) throws FileNotFoundException {
		this(new File(filename));
	}
	
	public XDDDocument(File xddFile) throws FileNotFoundException {
		this.xddFile = xddFile;
		log = Logger.getLogger(this.getClass().getCanonicalName());
		log.setParent(Logger.getLogger(Logger.GLOBAL_LOGGER_NAME));
		log.setLevel(Level.WARNING);

		if (xddFile.exists()) {
			loadDocument();
		}
		else {
			log.warning("File not found: "+xddFile.getAbsolutePath());
			throw new FileNotFoundException();
		}
	}

	@Override
	public void loadDocument() {
		try {
			JAXBContext jc = JAXBContext.newInstance(pkgname);
			Unmarshaller u = jc.createUnmarshaller();
			profileContainer = (ISO15745ProfileContainer) u.unmarshal(xddFile);
			log.fine(xddFile.getAbsolutePath() + " unmarshalled.");
		} catch (JAXBException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void saveDocument() {
		log.finest("saving document...");
		try {
			JAXBContext jc = JAXBContext.newInstance(pkgname);
			Marshaller m = jc.createMarshaller();
			m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
			m.marshal(profileContainer, xddFile);
			log.fine(xddFile.getAbsolutePath() + " marshalled.");
		} catch (JAXBException e) {
			e.printStackTrace();
		}
	}

	/**
	 * expands domain type SubObject
	 * @param out
	 * @param so
	 */
	private void expandDomainIfExists(EplSubindex eso, SubObject so) {
		log.finer("expandDomain()");
		int i = 0;
		while (i < profileContainer.getISO15745Profile().size() && 
				!ProfileBodyDevicePowerlink.class.isInstance(
				profileContainer.getISO15745Profile().get(i).getProfileBody())
				) 
		{
			i++;
		}
		
		if (i >= profileContainer.getISO15745Profile().size() || so.getUniqueIDRef() == null) {
			//log.finest("NetworkPowerlink profile not found.");
		}
		else {
			ProfileBodyDevicePowerlink net = 
				(ProfileBodyDevicePowerlink)profileContainer.getISO15745Profile().get(i).getProfileBody();
			if (!Parameter.class.isInstance(so.getUniqueIDRef())) {
				log.finest(this.getClass().getCanonicalName()+":: not an instance of parameter!");
				return ;
			}
			// now comes the hard work... let's watch for the correct domain
			Parameter sop = (Parameter)so.getUniqueIDRef();
			for (ApplicationProcess ap : net.getApplicationProcess()) {
				for (Parameter p : ap.getParameterList().getParameter()) {
					if (sop.getUniqueID().equals(p.getUniqueID())) {
						for (Object object : ap.getDataTypeList().getGComplex()) {
							if (p.getDataTypeIDRef().getUniqueIDRef().equals(object)
									&& Struct.class.isInstance(object)) {
								Struct str = (Struct)object;
								for (VarDeclaration vd : str.getVarDeclaration()) {
									// finally, we've found the right one
									log.finer("expandDomain:: VarDeclaration found.");
									eso.addChildObject(new EplDomain(vd, eso));
								}
							}
						}
					}
				}
			}
		}
		// expand domain ends
	}

	/**
	 * Transforms byte array into int
	 * @param ba - byte array hex string
	 * @return int representation
	 */
	public static int byteArrToInt(byte[] ba) {
		int ret = 0;
		if (ba == null) {
			return ret;
		}
		for (int i : ba)
		{
			ret = ret << 8;
			ret += i & 0xff;
		}
		return ret;
	}
	
	/**
	 * Transforms int into byte array
	 * @param index
	 * @param arraySize size of returned byte array
	 * @return byte array representation of index
	 */
	public static byte[] intToByteArr(int index, int arraySize) {
		byte[] out = new byte[arraySize];
		switch (arraySize) {
		case 1:
			out[0] = (byte) (index);
		break;
		case 2:
			out[0] = (byte) (index >> 8);
			out[1] = (byte) index;
			break;
		}
		return out;
	}
	
	/**
	 * 
	 * @param dataType
	 * @return
	 */
	public static byte[] dataTypeIntToByteArr(int dataType) {
		byte[] out = new byte[2];
		out[0] = (byte)(dataType << 8);
		out[1] = (byte)(dataType);
		return out;
	}
	
	/**
	 * generates root node object and children
	 * @return
	 */
	public List<RootNodeInterface> getRootNodes() {
		ArrayList<RootNodeInterface> root = new ArrayList<RootNodeInterface>();
		
		for (ISO15745Profile profile : profileContainer.getISO15745Profile()) {
			EplRootNode node = new EplRootNode(profile);
			if (node.getType() == RootNodeTypeEnum.NETWORK_PROFILE) {
				ProfileBodyCommunicationNetworkPowerlink body = 
					(ProfileBodyCommunicationNetworkPowerlink) profile.getProfileBody();
				node.setObjectNodes(
						expandObjectList(
								body.getApplicationLayers().getObjectList().getObject()));
				node.setObjectList(body.getApplicationLayers().getObjectList().getObject());
			}
			root.add(node);
		}		
		
		return root;
	}
	
	/**
	 * @param object this should be an profile object list
	 * @return expanded profile object
	 */
	@SuppressWarnings("unchecked")
	private ArrayList<EplIndex> expandObjectList(Object object) {
		ArrayList<EplIndex> objects = new ArrayList<EplIndex>();
		if (ArrayList.class.isInstance(object)) {
			for (Object uo : (ArrayList<Object>) object) {
				if (org.ethernet_powerlink.ObjectList.Object.class.isInstance(uo)) {
					org.ethernet_powerlink.ObjectList.Object o  = 
						(org.ethernet_powerlink.ObjectList.Object) uo;
					EplIndex eo = new EplIndex(o);
					for (SubObject soo : o.getSubObject()) {
						EplSubindex eso = new EplSubindex(soo, eo);
						if (soo.getUniqueIDRef() != null) {
							expandDomainIfExists(eso, soo);
							if (eso.getDataTypeString() == null) {
								eso.setDataType(DataType.DOMAIN);
							}
						}
						eo.addChildObject(eso, true);
					}
					objects.add(eo);
				}
			}
		}
		return objects;
	}

	/**
	 * @return String representation of this Object
	 */
	public String toString() {
		String out = profileContainer.toString();
		out += "\n Profiles: " + profileContainer.getISO15745Profile().size();
		for (ISO15745Profile p : profileContainer.getISO15745Profile()) {
			out += "\n  Profile: " + p.getProfileHeader().getProfileName();
			out += "\n   Body: " + p.getProfileBody().getClass().getSimpleName();
			if (ProfileBodyDevicePowerlink.class.isInstance(p.getProfileBody())) {
				ProfileBodyDevicePowerlink b = 
					(ProfileBodyDevicePowerlink) p.getProfileBody();
				out += "\n    " + b.getDeviceIdentity().getVendorID().getValue();
			}
			else if (ProfileBodyCommunicationNetworkPowerlink.class.isInstance(p.getProfileBody())) {
				ProfileBodyCommunicationNetworkPowerlink b = 
					(ProfileBodyCommunicationNetworkPowerlink) p.getProfileBody();
				out += "\n    " + b.getNetworkManagement().getGeneralFeatures().getNMTCycleTimeMax();
			}
		}
		return out;
	}

	@Override
	public File getFile() {
		return xddFile;
	}

	@Override
	public void setFile(File file) {
		this.xddFile = file;
	}

}
