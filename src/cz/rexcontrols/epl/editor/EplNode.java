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
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

import cz.rexcontrols.epl.editor.project.CfgIndex;
import cz.rexcontrols.epl.editor.project.CfgIndexes;
import cz.rexcontrols.epl.editor.project.CfgNode;
import cz.rexcontrols.epl.editor.project.CfgNodes;
import cz.rexcontrols.epl.editor.project.CfgProject;

/**
 * EPL Node informations including xdd document, profile name, node id
 * 
 * @author honza801
 *
 */
public class EplNode implements ProfileInterface {

	private DocumentInterface xddDocument;
	private Logger log;
	private CfgNode cfgNode;
	private EplProject parentProject;
	private List<RootNodeInterface> nodeContent;
	
	private boolean modified;
	
	/**
	 * Constructor
	 * 
	 * @param name
	 * @param nodeId
	 * @param xddFile
	 */
	public EplNode(String name, int nodeId, File xddFile, EplProject parentProject) {
		this(name, nodeId, xddFile, false, parentProject);
	}
	
	/**
	 * Constructor specially used for rex nodes
	 * 
	 * @param name
	 * @param nodeId
	 * @param xddFile
	 * @param isRex
	 */
	public EplNode(String name, int nodeId, File xddFile, boolean rexNode, EplProject parentProject) {
		this.parentProject = parentProject;
		//this.xddDocument = new XDDDocument(xddFile);

		this.setProfileName(name);
		this.setProfileId(nodeId);
		this.setRexNode(rexNode);
		this.setSourceFile(xddFile);

		initLogger();
		this.nodeContent = xddDocument.getRootNodes();
		this.modified = false;

		initRootNodesParent();
		initEplObjectsParents(getNetworkRootNode());
	}
	
	/**
	 * Construct object from parameters
	 * @param node
	 * @param parentProject
	 */
	public EplNode(CfgNode node, EplProject parentProject) {
		try {
			this.parentProject = parentProject;
			this.xddDocument = new XDDDocument(
					parentProject.getProjectDir()
					.concat(File.separator)
					.concat(node.getSourceFile()));
			this.nodeContent = xddDocument.getRootNodes();
			this.setCfgNode(node);
			this.modified = false;
			
			initRootNodesParent();
			initEplObjectsParents(getNetworkRootNode());
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * Initializes object logger.
	 */
	private void initLogger() {
		log = Logger.getLogger(this.getClass().getCanonicalName());
		log.setParent(Logger.getLogger(Logger.GLOBAL_LOGGER_NAME));
		log.setLevel(Level.ALL);
	}
	
	/**
	 * Initialize parent of all root nodes
	 */
	private void initRootNodesParent() {
		for (RootNodeInterface ri : getRootNodes()) {
			ri.setParentProfile(this);
		}
	}
	
	/**
	 * Initialize parent of nodes
	 * @param rnode
	 */
	private void initEplObjectsParents(RootNodeInterface rnode) {
		for (EplIndex oni : rnode.getAllObjectNodes()) {
			oni.setParentProfile(this);
			if (oni.hasSubIndexChildren()) {
				for (BaseNodeInterface boni : oni.getChildSubObjects()) {
					EplSubindex soni = (EplSubindex) boni;
					soni.setParentIndex(oni);
				}					
			}
		}		
	}
	
	@Override
	public String getProfileName() {
		if (cfgNode == null)
			return null;
		else
			return cfgNode.getName();
	}
	
	@Override
	public void setProfileName(String profileName) {
		accessCfgNode();
		cfgNode.setName(profileName);
	}
	
	@Override
	public int getProfileId() {
		if (cfgNode == null)
			return 0;
		else
			return cfgNode.getNumber();
	}
	
	@Override
	public void setProfileId(int profileId) {
		accessCfgNode();
		cfgNode.setNumber(profileId);
	}
	
	@Override
	public DocumentInterface getDocument() {
		//log.finest("getting document");
		return xddDocument;
	}
	
	@Override
	public String getSourceFileName() {
		return xddDocument.getFile().getName();
	}
	
	@Override
	public File getSourceFile() {
		return xddDocument.getFile();
	}
	
	@Override
	public void setSourceFile(File xddFile) {
		try {
			this.xddDocument = new XDDDocument(xddFile);
			this.nodeContent = xddDocument.getRootNodes();
			
			initRootNodesParent();
			initEplObjectsParents(getNetworkRootNode());
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public Properties getViewProperties() {
		Properties props = new Properties();
		props.setProperty(
				EplNodePropertyType.PROFILE_NAME.toString(), 
				getProfileName());
		props.setProperty(
				EplNodePropertyType.NODE_ID.toString(), 
				String.valueOf(getProfileId()));
		props.setProperty(
				EplNodePropertyType.FILE.toString(), 
				getSourceFileName());
		return props;
	}

	@Override
	public List<RootNodeInterface> getRootNodes() {
		return nodeContent;
	}

	private RootNodeInterface getNetworkRootNode() {
		for (RootNodeInterface node : this.getRootNodes()) {
			if (node.getType() == RootNodeTypeEnum.NETWORK_PROFILE) {
				return node;
			}
		}
		return null;
	}
	
	@Override
	public int addObject(EplIndex object) {
		RootNodeInterface node = getNetworkRootNode();
		return node.addObjectNode(object);
	}

	@Override
	public void removeObject(EplIndex object) {
		RootNodeInterface node = getNetworkRootNode();
		node.removeObjectNode(object);
	}

	@Override
	public List<EplIndex> getObjects() {
		return getNetworkRootNode().getAllObjectNodes();
	}
	
	@Override
	public EplIndex getByIndex(int index)
	{
		RootNodeInterface node = getNetworkRootNode();
		return node.getByIndex(index);
	}
	
	@Override
	public void setRexNode(boolean rexNode) {
		accessCfgNode();
		cfgNode.setRexNode(rexNode);
	}

	/**
	 * @param isRex the isRex to set
	 */
	public void setDisabled(boolean disabled) {
		accessCfgNode();
		cfgNode.setDisabled(disabled);
	}

	/**
	 * @param isRex the isRex to set
	 */
	public boolean isDisabled() {
		accessCfgNode();
		if ((Object)cfgNode.isDisabled() == null) {
			return false;
		}
		return cfgNode.isDisabled();
	}

	@Override
	public boolean isRexNode() {
		return ((cfgNode != null) && (cfgNode.isRexNode()));
	}

	@Override
	public EplSubindex getSubindex(int index, int subindex) {
		EplIndex oi = getByIndex(index);
		
		if (oi != null && oi.hasSubIndexChildren()) {
			return (EplSubindex) oi.getByIndex(subindex);
			
		} else {
			return null;
		}
	}
	
	@Override
	public BaseNodeInterface getObject(int index, int subindex) {
		EplIndex oi = getByIndex(index);
		BaseNodeInterface si;
		
		if (oi == null)
			return null;
		
		si = oi.getByIndex(subindex);
		
		if ((si == null) && (subindex == 0))
			return oi;
		
		return si;
	}

	@Override
	public boolean isMN() {
		return getProfileId() == 240;
	}

	@Override
	public void saveDocument(File targetDir) {
		try {
			File targetDocumentFile = new File(
					targetDir.getAbsolutePath().
					concat(File.separator).concat(getProfileFileInProject()));
			FilesystemUtils.copyFile(xddDocument.getFile(), targetDocumentFile);
			cfgNode.setSourceFile(targetDocumentFile.getName());
			xddDocument.setFile(targetDocumentFile);
			xddDocument.saveDocument();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public String getProfileFileInProject()
	{
		return String.format("%03d_%s.xdc", this.getProfileId(), this.getProfileName());
	}

	private void distributeCfgIndexes() {
		if (cfgNode == null)
			return;
		
		CfgIndexes cfgIndexes = cfgNode.getCfgIndexes();
		if (cfgIndexes == null)
			return;
		
		int i = 0;
		
		while (i < cfgIndexes.getCfgIndex().size())
		{
			CfgIndex ci = cfgIndexes.getCfgIndex().get(i);

			int num = ci.getNumber();
			EplIndex index = (EplIndex) this.getByIndex(num);
			
			if (index == null) {
				cfgIndexes.getCfgIndex().remove(i);
			} else {
				index.setCfgIndex(ci);
				i++;
			}
		}
	}
	
	public void setCfgNode(CfgNode cfgNode) {
		this.cfgNode = cfgNode;
		distributeCfgIndexes();
	}
	
	public CfgNode getCfgNode() {
		return cfgNode;
	}
	
	public CfgNode accessCfgNode() {
		if (cfgNode == null) {
			CfgProject cfgProject = parentProject.accessCfgProject();
			cfgNode = new CfgNode();
			CfgNodes cfgNodes = cfgProject.getCfgNodes();
			if (cfgNodes == null) {
				cfgNodes = new CfgNodes();
				cfgProject.setCfgNodes(cfgNodes);
			}
			cfgNodes.getCfgNode().add(cfgNode);
		}
		
		return cfgNode;
	}
	
	public boolean setObjectValue(int index, int subindex, int value, boolean modifyExport, boolean export) {
		BaseNodeInterface obj = getObject(index, subindex);
		
		if (obj == null)
			return false;
		
		obj.setActualValue(value);
		
		if (modifyExport)
			obj.setExportable(export);
		
		return true;
	}

	public boolean setObjectValue(int index, int subindex, long value, boolean modifyExport, boolean export) {
		BaseNodeInterface obj = getObject(index, subindex);
		
		if (obj == null)
			return false;
		
		obj.setActualValue(value);
		
		if (modifyExport)
			obj.setExportable(export);
		
		return true;
	}
	
	public boolean setObjectExportable(int index, int subindex, boolean exportable) {
		BaseNodeInterface obj = getObject(index, subindex);
		
		if (obj == null)
			return false;
		obj.setExportable(exportable);
		return true;
	}

	public boolean setObjectValue(int index, int subindex, String value, boolean modifyExport, boolean export) {
		BaseNodeInterface obj = getObject(index, subindex);
		
		if (obj == null)
			return false;
		
		obj.setActualValue(value);
		
		if (modifyExport)
			obj.setExportable(export);
		
		return true;
	}

	@Override
	public boolean isModified() {
		return modified;
	}

	@Override
	public void setModified(boolean modified) {
		this.modified = modified;
	}

	@Override
	public String toString() {
		return getProfileName() + " ["+getProfileId()+"]";
	}

	@Override
	public boolean isAdvanced() {
		return parentProject.isAdvancedView();
	}

	@Override
	public int compareTo(ProfileInterface o) {
		return (int) Math.signum(this.getProfileId() - o.getProfileId());
	}
	
}
