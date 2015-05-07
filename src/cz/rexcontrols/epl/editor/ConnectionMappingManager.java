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

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

import cz.rexcontrols.epl.editor.project.CfgConnection;
import cz.rexcontrols.epl.editor.project.CfgConnections;
import cz.rexcontrols.epl.editor.project.CfgProject;

/**
 * Manages connection mappings, but not their sources/destinations.
 * 
 * @author honza801
 *
 */
public class ConnectionMappingManager implements MappingManagerInterface {

	/**
	 * HashMap<ConnectionName,Mapping itself>
	 */
	private List<MappingInterface> connectionList;
	private Logger log;

	private CfgProject cfgProject;
	private EplProject project;
	
	/**
	 * Default constructor
	 */
	public ConnectionMappingManager() {
		this.connectionList = new ArrayList<MappingInterface>();
		this.log = Logger.getLogger(this.getClass().getCanonicalName());

		log.setParent(Logger.getLogger(Logger.GLOBAL_LOGGER_NAME));
		log.setLevel(Level.FINE);
		log.fine("initialized.");
		
	}
	
	/**
	 * 
	 * @param cfgProject
	 */
	public ConnectionMappingManager(CfgProject cfgProject) {
		this();
		setCfgProject(cfgProject);
		this.cfgProject = cfgProject;
		if (cfgProject.getCfgConnections() == null) {
			cfgProject.setCfgConnections(new CfgConnections());
		}
	}

	/**
	 * Exports all the connection mappings from this.connectionList
	 * to the specified writer
	 * @param output
	 * @throws IOException 
	 */
	public void exportMapping(BufferedWriter output) throws IOException {
		for (MappingInterface mi : getMappingList()) {
			ConnectionMapping cm = (ConnectionMapping)mi;
			output.write("connection="+cm.getMappingName()+";");
			output.write("source="+cm.getSource()+";");
			output.write("destinations=");
			output.write(cm.destinationToString()+";\n");
		}
	}
	
	/**
	 * Exports all the connection mappings from this.connectionList 
	 * to the specified file and closes stream.
	 * @param output file for output
	 */
	public void exportMapping(File output) {
		try {
			BufferedWriter bw = new BufferedWriter(new FileWriter(output));
			exportMapping(bw);
			bw.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * Returns all connections represented by Map<String,String> format.
	 */
	public Map<String, String> getMappingMap() {
		Map<String, String> out = new HashMap<String,String>();
		for (MappingInterface mi : getMappingList()) {
			log.finest("getMappingMap() " + mi.toString());
			out.putAll(mi.getMap());
		}
		return out;
	}
	
	@Override
	public List<MappingInterface> getMappingList() {
		return connectionList;
	}
	
	@Override
	public MappingInterface addMapping() {
		return addConnectionMapping("");
	}
	
	public MappingInterface addConnectionMapping(String name) {
		return addConnectionMapping(new ConnectionMapping(name));
	}
	
	public MappingInterface addConnectionMapping(ConnectionMapping cm) {
		getMappingList().add(cm);
		cfgProject.getCfgConnections().getCfgConnection().add(cm.getCfgConnection());
		return cm;
	}

	/**
	 * String representation of this object
	 */
	public String toString() {
		String out = "ConnectionMappingManager size:" + getMappingList().size() + "\n";
		for (MappingInterface mi : getMappingList()) {
			out += mi.toString() + "\n";
		}
		return out;
	}
	
	/**
	 * Pushes correct objects into mappings
	 * @param project
	 */
	public void pushMappingsToProject(EplProject project) {
		log.finest("pushing to mappings: " + cfgProject.getCfgConnections().getCfgConnection().size());
		setProject(project);
		project.setMappingManager(this);
		for (CfgConnection cc : cfgProject.getCfgConnections().getCfgConnection()) {
			ConnectionMapping cm = new ConnectionMapping(cc);
			cm.pushMapping(project);
			getMappingList().add(cm);
			log.finest("pushing mapping " + cm.toString());
		}
	}
	
	@Override
	public void removeMapping(String name) {
		for (MappingInterface mi : getMappingList()) {
			if (mi.getMappingName().compareTo(name) == 0) {
				boolean r = getMappingList().remove(mi);
				log.finest("removed from list? " + r);
				break;
			}
		}
		for (CfgConnection cc : cfgProject.getCfgConnections().getCfgConnection()) {
			if (cc.getName().matches(name)) {
				boolean r = cfgProject.getCfgConnections().getCfgConnection().remove(cc);
				log.finest("removed from cfg? " + r);
				break;
			}
		}
	}
	
	@Override
	public void removeMappingAt(int index) {
		getMappingList().remove(index);
		cfgProject.getCfgConnections().getCfgConnection().remove(index);
	}

	@Override
	public EplProject getProject() {
		return project;
	}

	@Override
	public void setProject(EplProject project) {
		this.project = project;
	}

	@Override
	public void setCfgProject(CfgProject project) {
		this.cfgProject = project;
		if (cfgProject.getCfgConnections() == null) {
			cfgProject.setCfgConnections(new CfgConnections());
		}
	}

	@Override
	public MappingInterface getMappingAt(int index) {
		return getMappingList().get(index);
	}

	@Override
	public MappingInterface getMappingByIndex(int index) {
		return getMappingList().get(index);
	}

	@Override
	public MappingInterface getMappingByName(String mappingName) {
		for (MappingInterface mi : getMappingList()) {
			if (mi.getMappingName().compareTo(mappingName) == 0) {
				return mi;
			}
		}
		return null;
	}

	/**
	 * 
	 * @return maximum value of id of mappings from connection list
	 */
	public int getMaxMappingIndex() {
		return getMappingList().size()+1;
	}

	@Override
	public int getMappingCount() {
		return getMappingList().size();
	}

	@Override
	public void replaceNodes(ProfileInterface oldNode, ProfileInterface newNode) {
		// TODO: what should i do when some targets do not exist???
		for (MappingInterface mi : getMappingList()) {
			// replace source
			BaseNodeInterface src = mi.getFirstSource();
			if (src.getParentProfile() != null && (oldNode == null || src.getParentProfile().getProfileId() == oldNode.getProfileId())) {
				if (src instanceof EplIndex) {
					mi.addSource(newNode.getByIndex(src.getIndex()));
				}
				else if (src instanceof EplSubindex) {
					EplIndex ei = ((EplSubindex) src).getParentIndex();
					mi.addSource(newNode.getSubindex(ei.getIndex(),	src.getIndex()));
				}
				else if (src instanceof EplDomain) {
					EplObject eo = ((EplDomain) src).getParentNode();
					if (eo instanceof EplIndex) {
						EplIndex newindex = newNode.getByIndex(eo.getIndex());
						BaseNodeInterface newdom = newindex.getByIndex(src.getIndex());
						mi.addSource(newdom);
					}
					else if (eo instanceof EplSubindex) {
						EplIndex newindex = ((EplSubindex) eo).getParentIndex();
						EplSubindex es = newNode.getSubindex(newindex.getIndex(), eo.getIndex());
						mi.addSource(es.getByIndex(src.getIndex()));
					}
				}
			}
			// replace destinations
			ArrayList<BaseNodeInterface> invalid_destinations = new ArrayList<BaseNodeInterface>();
			for (BaseNodeInterface dest : mi.getDestination()) {
				if (oldNode == null || dest.getParentProfile().getProfileId() == oldNode.getProfileId()) {
					invalid_destinations.add(dest);
				}
			}
			for (BaseNodeInterface dest : invalid_destinations) {
				if (dest instanceof EplIndex) {
					int destindex = mi.getDestination().indexOf(dest);
					BaseNodeInterface newdest = newNode.getByIndex(dest.getIndex());
					mi.removeDestination(destindex);
					mi.addDestination(newdest);
				}
				else if (dest instanceof EplSubindex) {
					int destindex = mi.getDestination().indexOf(dest);
					EplIndex ei = ((EplSubindex) dest).getParentIndex();
					EplSubindex newdest = newNode.getSubindex(ei.getIndex(),	dest.getIndex());
					mi.removeDestination(destindex);
					mi.addDestination(newdest);
				}
				else if (dest instanceof EplDomain) {
					EplObject eo = ((EplDomain) dest).getParentNode();
					int destindex = mi.getDestination().indexOf(dest);
					if (eo instanceof EplIndex) {
						EplIndex newindex = newNode.getByIndex(eo.getIndex());
						BaseNodeInterface newdom = newindex.getByIndex(dest.getIndex());
						mi.removeDestination(destindex);
						mi.addDestination(newdom);
					}
					else if (eo instanceof EplSubindex) {
						EplIndex newindex = ((EplSubindex) eo).getParentIndex();
						EplSubindex es = newNode.getSubindex(newindex.getIndex(), eo.getIndex());
						if (es != null) {
							BaseNodeInterface newdest = es.getByIndex(dest.getIndex());
							mi.removeDestination(destindex);
							mi.addDestination(newdest);
						}
						else {
							mi.removeDestination(destindex);
						}
					}
				}
			}
		}
	}

	@Override
	public boolean hasConnections(ProfileInterface profile) {
		log.finest(toString());
		for (MappingInterface mi : getMappingList()) {
			if (mi.hasConnections(profile)) {
				return true;
			}
		}
		return false;
	}

	@Override
	public void removeMappingsByProfile(ProfileInterface profile) {
		Iterator<MappingInterface> it = getMappingList().iterator();
		while (it.hasNext()) {
			if (it.next().hasConnections(profile)) {
				it.remove();
			}			
		}
	}

	@Override
	public List<MappingInterface> getInvalidConnectionMappings() {
		ArrayList<MappingInterface> out = new ArrayList<MappingInterface>();
		Iterator<MappingInterface> it = getMappingList().iterator();
		while (it.hasNext()) {
			MappingInterface mi = it.next();
			if (mi.hasInvalidSourceOrDestinations(getProject())) {
				out.add(mi);
			}
		}
		return out;
	}

	@Override
	public void removeMappings(List<MappingInterface> removeMappings) {
		for (MappingInterface mi : removeMappings) {
			int mindex = getMappingList().indexOf(mi);
			removeMappingAt(mindex);
		}
	}

}
