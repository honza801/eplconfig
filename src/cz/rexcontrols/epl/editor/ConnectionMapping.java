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
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

import cz.rexcontrols.epl.editor.project.CfgConnection;
import cz.rexcontrols.epl.editor.project.CfgDataIdent;

/**
 * This class represents logical wires "PDO Mapping"
 * 
 * @author honza801
 * 
 */
public class ConnectionMapping implements MappingInterface {

	private BaseNodeInterface source;
	private ArrayList<BaseNodeInterface> destination;
	private Logger log;

	//private Map<Object, MapDataPosition> positions;

	public static String MAPPING_PREFIX = "mapping";
	public static String MAPPING_SRC_SUFFIX = "source";
	public static String MAPPING_DEST_SUFFIX = "destination";

	private CfgConnection cfgmap;
	
	/**
	 * Constructor.
	 * @param name
	 *            Name of the connection mapping.
	 */
	public ConnectionMapping(String name) {
		this(new CfgConnection());
		this.setMappingName(name);
	}

	/**
	 * Constructor.
	 * @param cfgConnection
	 */
	public ConnectionMapping(CfgConnection cfgConnection) {
		initLogger();
		this.cfgmap = cfgConnection;
		this.destination = new ArrayList<BaseNodeInterface>();
	}


	/**
	 * Pushes correct objects into mappings
	 * @param project
	 */
	public void pushMapping(EplProject project) {
		CfgDataIdent source = cfgmap.getSource();
		
		if (source == null) {
			log.warning("source is null");
			return; 
		}
		
		// find source node
		ProfileInterface en = project.getProfile(source.getNode());
		if (en == null) {
			log.warning("Cannot find node "+source.getNode());
		} else {
			addSource(findBaseNode(en, source));			
		}
		
		// find the destinations nodes
		for (CfgDataIdent dst : cfgmap.getDestination()) {
			en = project.getProfile(dst.getNode());
			if (en == null) {
				log.warning("Cannot find node "+dst.getNode());
			} else {
				addDestination(findBaseNode(en, dst), false);
			}
		}
	}

	/**
	 * Initializes logger for this object.
	 */
	private void initLogger() {
		log = Logger.getLogger(this.getClass().getCanonicalName());
		log.setParent(Logger.getLogger(Logger.GLOBAL_LOGGER_NAME));
		log.setLevel(Level.WARNING);
		log.finest("starting debugger");
	}

	
	@Override
	public String getMappingName() {
		return cfgmap.getName();
	}

	@Override
	public void setMappingName(String name) {
		this.cfgmap.setName(name);
	}

	@Override
	public BaseNodeInterface getFirstSource() {
		log.finest("getFirstSource() " + ((source != null) ? source.toFullString() : "null"));
		return source;
	}

	@Override
	public List<BaseNodeInterface> getSource() {
		ArrayList<BaseNodeInterface> out = new ArrayList<BaseNodeInterface>();
		out.add(source);
		return out;
	}

	@Override
	public void setSource(List<BaseNodeInterface> source) {
		this.source = source.iterator().next();
		this.cfgmap.setSource(this.source.getDataIdent());
		log.finest("addSource(List)" + this.source.toFullString());
	}

	@Override
	public void addSource(BaseNodeInterface source) {
		if (source == null) {
			log.warning("Null source could not be added!");
			return;
		}
		this.source = source;
		this.cfgmap.setSource(source.getDataIdent());
		log.finest("addSource(BaseNodeInterface)" + toString());
	}

	@Override
	public List<BaseNodeInterface> getDestination() {
		return destination;
	}

	@Override
	public BaseNodeInterface getFirstDestination() {
		return destination.get(0);
	}

	@Override
	public void setDestination(List<BaseNodeInterface> destination) {
		this.destination = new ArrayList<BaseNodeInterface>(destination);
		this.cfgmap.getDestination().removeAll(this.cfgmap.getDestination());
		for (BaseNodeInterface bni : this.destination) {
			this.cfgmap.getDestination().add(bni.getDataIdent());
		}
		log.finest("setDestination(List)" + toString());
	}

	@Override
	public void addDestination(BaseNodeInterface destination) {
		addDestination(destination, true);
	}

	public void addDestination(BaseNodeInterface destination, boolean umap) {
		if (destination == null) {
			log.warning("Null destination could not be added!");
			return;
		}
		this.destination.add(destination);
		if (umap) {
			this.cfgmap.getDestination().add(destination.getDataIdent());
		}
		log.finest("addDestination(BaseNodeInterface) " + toString());
	}

	@Override
	public void addDestination(int index, BaseNodeInterface destination) {
		this.destination.add(index, destination);
		this.cfgmap.getDestination().add(index, destination.getDataIdent());
		log.finest("addDestination(int, BaseNodeInterface) " + toString());
	}

	@Override
	public void removeDestination(int index) {
		if (index < 0) {
			log.fine("removeDestination(" + index + ") bad index!");
			return;
		} else {
			this.destination.remove(index);
			this.cfgmap.getDestination().remove(index);
			log.fine("removeDestination(" + index + ")");
		}
	}

	/**
	 * This method is from Comparable interface
	 */
	public int compareTo(MappingInterface o) {
		return this.getMappingName().compareTo(o.getMappingName());
	}

	public String destinationToString(int i) {
		return destination.get(i).toFullString();
	}

	public String destinationToString() {
		String out = "";
		for (BaseNodeInterface dest : this.getDestination()) {
			out += dest.toFullString() + ",";
		}
		return out;
	}

	public String sourceToString() {
		return (source != null) ? source.toFullString() : "";
	}

	@Override
	public Map<String, String> getMap() {
		HashMap<String, String> out = new HashMap<String, String>();
		log.finest("getMap() n:" + this.getMappingName());
		out.put(MAPPING_PREFIX + "." + this.getMappingName() + "."
				+ MAPPING_SRC_SUFFIX, source.getParentProfile().getProfileId()
				+ "." + sourceToString());
		int i = 0;
		for (BaseNodeInterface d : this.getDestination()) {
			out.put(MAPPING_PREFIX + "." + this.getMappingName() + "."
					+ MAPPING_DEST_SUFFIX + i, d.getParentProfile()
					.getProfileId()
					+ "." + d.toFullString());
			log.finest("getMap() " + MAPPING_DEST_SUFFIX + " "
					+ d.toFullString());
			i++;
		}
		return out;
	}

	/**
	 * String representation of this object.
	 */
	public String toString() {
		String out = "ConnectionMapping: name: " + getMappingName() + "\n"
				+ "    [src:" + sourceToString() + "]\n" + "    [dst:"
				+ destinationToString() + "]"
				+ "\n" + formatCfgDataIdent(cfgmap.getSource()) + " " + 
				((cfgmap.getDestination().size() > 0) ? 
						formatCfgDataIdent(cfgmap.getDestination().get(0)) : "null");
		return out;
	}
	
	private String formatCfgDataIdent(CfgDataIdent c) {
		String s = "";
		s += c.getNode() + ".";
		s += c.getIndex() + ".";
		s += c.getSubindex() + ":";
		s += c.getDomainPart();
		return s;
	}
	
	/**
	 * 
	 * @param pi
	 * @param cdi
	 * @return {@link EplIndex} or {@link EplSubindex} depending on parameters
	 */
	private BaseNodeInterface findBaseNode(ProfileInterface pi, CfgDataIdent cdi) {
		BaseNodeInterface out = pi.getByIndex(cdi.getIndex());
		//System.out.println("Index:"+cdi.getSubindex());		
		
		if (cdi.getSubindex() != null && out != null) {
			//System.out.println("Subindex:"+cdi.getSubindex());
			out = ((EplIndex)out).getByIndex(cdi.getSubindex());
		}

		if (cdi.getDomainPart() != null && out != null) {
			//System.out.println("DomainPart:"+cdi.getSubindex());
			out = ((EplSubindex)out).getByIndex(cdi.getDomainPart());
		}
		
		if (out != null) {
			out.setParentProfile(pi);
		}
		
		return out;
	}

	public CfgConnection getCfgConnection() {
		return cfgmap;
	}

	@Override
	public void removeSource(BaseNodeInterface source) {
		source = null;
		log.finest("removeSource(BaseNodeInterface)");
	}

	@Override
	public void removeSource(int index) {
		source = null;
		log.finest("removeSource(int)");
	}

	@Override
	public boolean hasConnections(ProfileInterface profile) {
		BaseNodeInterface src = getFirstSource();
		if (src != null && src.getParentProfile().getProfileId() == profile.getProfileId()) {
			return true;
		}
		for (BaseNodeInterface bni : getDestination()) {
			if (bni.getParentProfile().getProfileId() == profile.getProfileId()) {
				return true;
			}
		}
		return false;
	}

	@Override
	public boolean hasInvalidSourceOrDestinations(EplProject project) {
		BaseNodeInterface src = getFirstSource();
		if (project== null) {
			log.warning("Project is null!");
			return true;
		}
		if (src == null) {
			log.warning("Source is null!");
			return true;
		}
		if (src.getParentProfile() == null) {
			log.warning("Source parent is null!");
			return true;
		}
		if (project.getProfile(src.getParentProfile().getProfileId()) == null) {
			return true;
		}
		for (BaseNodeInterface bni : getDestination()) {
			if (project.getProfile(bni.getParentProfile().getProfileId()) == null) {
				return true;
			}			
		}
		return false;
	}

}
