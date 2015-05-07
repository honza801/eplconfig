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

import java.io.File;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import cz.rexcontrols.epl.editor.project.CfgAliases;
import cz.rexcontrols.epl.editor.project.CfgConnections;
import cz.rexcontrols.epl.editor.project.CfgNode;
import cz.rexcontrols.epl.editor.project.CfgProject;

/**
 * Contains EplProfileNodes and projectName
 *
 * @author honza801
 * 
 */
public class EplProject {

	private ArrayList<ProfileInterface> nodes;
	private MappingManagerInterface mappingManager;
	private AliasNodeManagerInterface aliasManager;
	private File projectFile;
	
	private CfgProject cfgProject;
	
	private boolean modified;
	
	/**
	 * default constructor
	 * @param name project name
	 */
	public EplProject(String name) 
	{
		this(name, null, 
				new ConnectionMappingManager(), 
				new AliasManager());
		this.getMappingManager().setProject(this);
	}
	
	/**
	 * @param projectName project name
	 * @param node first node of the project
	 */
	public EplProject(
			String projectName, 
			ProfileInterface node, 
			MappingManagerInterface mappingManager,
			AliasNodeManagerInterface aliasManager)
	{
		setProjectName(projectName);
		setMappingManager(mappingManager);
		setAliasManager(aliasManager);
		
		nodes = new ArrayList<ProfileInterface>();
		if (node != null) {
			nodes.add(node);
		}
		setModified(false);
	}
	
	/**
	 * Construct project defined by XML.
	 * @param cfgProject
	 * @param projectFile
	 */
	public EplProject(CfgProject cfgProject, File projectFile) {
		this.setCfgProject(cfgProject);
		this.projectFile = projectFile;
		
		if (cfgProject.getCfgAliases() == null) {
			cfgProject.setCfgAliases(new CfgAliases());
		}
		this.aliasManager = new AliasManager(cfgProject.getCfgAliases());
		
		nodes = new ArrayList<ProfileInterface>();
		if (cfgProject.getCfgNodes() != null) {
			for (CfgNode cfgNode : cfgProject.getCfgNodes().getCfgNode()) {
				EplNode node = new EplNode(cfgNode, this);
				nodes.add(node);
			}
		}
		setModified(false);
	}
	
	
	/**
	 * @param profileId
	 * @return node with nodeId
	 */
	public ProfileInterface getProfile(int profileId) {
		for (ProfileInterface n : nodes) {
			if (n.getProfileId() == profileId) {
				return n;
			}
		}
		return null;
	}
	
	/**
	 * Add node to project.
	 * @param node
	 */
	public void addNode(ProfileInterface node) {
		nodes.add(node);
		//CfgNode cnode = new CfgNode();
		//cfgProject.getCfgNodes().getCfgNode().add(cnode);
		setModified(true);
	}
	
	/**
	 * Insert node to specified index.
	 * @param index
	 * @param node
	 */
	public void addNode(int index, ProfileInterface node) {
		nodes.add(index, node);
		setModified(true);
	}
	
	/**
	 * Remove node from project.
	 * @param node
	 */
	public int removeNode(ProfileInterface node) {
		int index = nodes.indexOf(node);
		nodes.remove(node);
		for (CfgNode cn : cfgProject.getCfgNodes().getCfgNode()) {
			if (cn.getNumber() == node.getProfileId()) {
				cfgProject.getCfgNodes().getCfgNode().remove(cn);
				break;
			}
		}
		setModified(true);
		return index;
	}
	
	/**
	 * Replace/merge two nodes.
	 * @param oldNode
	 * @param newNode
	 */
	public void replaceNode(ProfileInterface oldNode, ProfileInterface newNode) {
		int index = removeNode(oldNode);
		addNode(index, newNode);
		getMappingManager().replaceNodes(oldNode, newNode);
	}
	
	/**
	 * 
	 * @param profile
	 * @return <code>true</code> if profile is present in connections
	 */
	public boolean hasConnections(ProfileInterface profile) {
		return getMappingManager().hasConnections(profile);
	}
	
	/**
	 * 
	 * @return Connection mapping which has sources/destinations owned by non-existent node.
	 */
	public ArrayList<MappingInterface> getInvalidConnectionMappings() {
		return new ArrayList<MappingInterface>(getMappingManager().getInvalidConnectionMappings());
	}
	
	/**
	 * Add new connection mapping.
	 */
	public void addNewMapping() {
		getMappingManager().addMapping();
		setModified(true);
	}
	
	/**
	 * 
	 * @return Project name.
	 */
	public String getProjectName() {
		if (cfgProject == null)
			return null;
		else 
			return cfgProject.getName();
	}

	/**
	 * Set project name.
	 * @param projectName
	 */
	public void setProjectName(String projectName) {
		accessCfgProject();
		cfgProject.setName(projectName);
		setModified(true);
	}

	/**
	 * 
	 * @return List of {@link ProfileInterface}.
	 */
	public ArrayList<ProfileInterface> getEplProfiles() {
		return nodes;
	}
	
	/**
	 * 
	 * @return Sorted list of {@link ProfileInterface}
	 */
	public ArrayList<ProfileInterface> getSortedEplProfiles() {
		ArrayList<ProfileInterface> sortnodes = new ArrayList<ProfileInterface>(nodes);
		Collections.sort(sortnodes);
		return sortnodes;
	}

	public Map<String, String> getEplMappings() {
		Map<String,String> out = new HashMap<String, String>();
		out.putAll(getMappingManager().getMappingMap());
		return out;
	}

	private Calendar getCalendar(long milisecond, long days) {
		Calendar cal = Calendar.getInstance();
		cal.clear();
		cal.set(1984, 0, 1);
		cal.add(Calendar.MILLISECOND, (int) milisecond);
		cal.add(Calendar.DAY_OF_YEAR, (int) days);
		return cal;
	}
	
	/**
	 * @return Properties for this project.
	 */
	public Properties getProperties() {
		Properties props = new Properties();
		Calendar cal = getCalendar(getConfigurationTime(), getConfigurationDate());
		int 
		hour = cal.get(Calendar.HOUR), 
		min = cal.get(Calendar.MINUTE), 
		sec = cal.get(Calendar.SECOND), 
		year = cal.get(Calendar.YEAR),
		month = cal.get(Calendar.MONTH)+1,
		day = cal.get(Calendar.DAY_OF_MONTH);
		String ptime = (hour<10?"0":"") + hour + (min<10?":0":":")+min+(sec<10?":0":":")+sec;
		String pdate = year+(month<10?"-0":"-")+month+(day<10?"-0":"-")+day;
		props.setProperty(
				EplPropertyType.PROJECT_NAME.toString(), 
				getProjectName());
		props.setProperty(
				EplPropertyType.PROJECT_CTIME.toString(), 
				ptime);
		props.setProperty(
				EplPropertyType.PROJECT_CDATE.toString(), 
				pdate);
		props.setProperty(
				EplPropertyType.PROJECT_CYCLE_LEN.toString(), 
				String.valueOf(getCycleLength()));
		props.setProperty(
				EplPropertyType.PROJECT_FILENAME.toString(), 
				(getProjectFile()!=null) ? getProjectFile().getAbsolutePath() : "none");
		return props;
	}
	
	private Long getDaysFromDate(String date) {
		Calendar cal = getCalendar(0, 0);
		String[] dates = date.split("-");
		cal.set(Integer.valueOf(dates[0]), Integer.valueOf(dates[1])-1, Integer.valueOf(dates[2]));
		return (cal.getTimeInMillis()-getCalendar(0, 0).getTimeInMillis())/(1000*60*60*24);
	}
	
	private Long getMillisFromTime(String time) {
		Calendar cal = getCalendar(0, 0);
		String[] dates = time.split(":");
		cal.set(1970, 0, 1, Integer.valueOf(dates[0])+1, Integer.valueOf(dates[1]), Integer.valueOf(dates[2]));
		return cal.getTimeInMillis();		
	}
	
	public void setProperties(Properties props) {
		
		setProjectName(
				props.getProperty(EplPropertyType.PROJECT_NAME.toString()));
		setCycleLength(
				Double.valueOf(
						props.getProperty(EplPropertyType.PROJECT_CYCLE_LEN.toString())));
		setConfigurationTime(
				getMillisFromTime(
						props.getProperty(EplPropertyType.PROJECT_CTIME.toString())));
		setConfigurationDate(
				getDaysFromDate(
						props.getProperty(EplPropertyType.PROJECT_CDATE.toString())));
		setModified(true);
	}

	/**
	 * 
	 * @return {@link MappingManagerInterface} for this project.
	 */
	public MappingManagerInterface getMappingManager() {
		return mappingManager;
	}
	
	/**
	 * Set mapping manager and {@link CfgConnections}.
	 * @param mappingManager
	 */
	public void setMappingManager(MappingManagerInterface mappingManager) {
		this.mappingManager = mappingManager;
		mappingManager.setCfgProject(accessCfgProject());
	}
	
	@Override
	public String toString() {
		String out = "EplProject name:" + this.getProjectName() + "\n";
		out += getMappingManager().toString();
		return out;
	}

	/**
	 * 
	 * @return {@link AliasManager} for this project.
	 */
	public AliasNodeManagerInterface getAliasManager() {
		return aliasManager;
	}
	
	/**
	 * Set alias manager and {@link CfgAliases}.
	 * @param aliasManager
	 */
	public void setAliasManager(AliasNodeManagerInterface aliasManager) {
		this.aliasManager = aliasManager;
		cfgProject.setCfgAliases(aliasManager.getAliases());
	}
	
	/**
	 * 
	 * @return {@link File} where this project is stored.
	 */
	public File getProjectFile()
	{
		return projectFile;
	}

	public double getCycleLength() {
		if (cfgProject == null)
			return 0;
		else 
			return cfgProject.getCycleLength();
	}

	public void setCycleLength(double cycleLength) {
		accessCfgProject();
		cfgProject.setCycleLength((int) cycleLength);
		setModified(true);
	}

	public void setProjectFile(File file) {
		projectFile = file;
	}

	/**
	 * 
	 * @return Directory ehre this project resides.
	 */
	public String getProjectDir() {
		if (projectFile == null)
			return null;
		return projectFile.getParent();
	}

	public void setCfgProject(CfgProject cfgProject) {
		this.cfgProject = cfgProject;
	}
	
	public CfgProject accessCfgProject() {
		if (cfgProject == null) {
			cfgProject = new CfgProject();
		}
		return cfgProject;
	}
	
	/**
	 * 
	 * @return <code>true</code> if there is an advanced view for this project selected.
	 */
	public boolean isAdvancedView() {
		return ((cfgProject != null) && (cfgProject.isAdvancedView()));
	}
	
	/**
	 * Set advanced viev for this project.
	 * @param advancedView
	 */
	public void setAdvancedView(boolean advancedView) {
		accessCfgProject();
		cfgProject.setAdvancedView(advancedView);
		setModified(true);
	}
	
	public long getConfigurationTime() {
		return cfgProject.getConfigurationTime();
	}
	
	public void setConfigurationTime(long ctime) {
		cfgProject.setConfigurationTime(ctime);
		setModified(true);
	}
	
	public long getConfigurationDate() {
		return cfgProject.getConfigurationDate();
	}

	public void setConfigurationDate(long cdate) {
		cfgProject.setConfigurationDate(cdate);
		setModified(true);
	}

	/**
	 * 
	 * @return <code>true</code> if this project or any node of this project is modified.
	 */
	public boolean isModified() {
		if (modified) {
			return modified;
		} else {
			for (ProfileInterface i : nodes) {
				if (i.isModified()) {
					return true;
				}
			}
			return false;
		}
	}

	/**
	 * Set modified flag of this project and all its nodes. 
	 * @param modified
	 */
	public void setModified(boolean modified) {
		this.modified = modified;
		if (nodes != null) {
			for (ProfileInterface i : nodes) {
				i.setModified(modified);
			}
		}
	}
	
	/**
	 * 
	 * @return <code>true</code> if project file exists and is not empty.
	 */
	public boolean isSaved() {
		return ((projectFile != null) && (projectFile.getName() != null));
	}

}
