package cz.rexcontrols.epl.editor.gui.tree;
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

import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.swing.JOptionPane;
import javax.swing.tree.TreeNode;
import javax.swing.tree.TreePath;

import cz.rexcontrols.epl.editor.BaseNodeInterface;
import cz.rexcontrols.epl.editor.EplIndex;
import cz.rexcontrols.epl.editor.EplProject;
import cz.rexcontrols.epl.editor.EplSubindex;
import cz.rexcontrols.epl.editor.ProfileInterface;
import cz.rexcontrols.epl.editor.RootNodeInterface;
import cz.rexcontrols.epl.editor.gui.DetailPanelEventListener;
import cz.rexcontrols.epl.editor.gui.EplConfiguratorFrame;

/**
 * 
 * @author honza801
 *
 */
public class MyTree extends EplTreeInterface {

	private static final long serialVersionUID = 1L;
	private Logger log;
	private EplConfiguratorFrame parent;
	private MyTreeModel mymodel;

	/**
	 * Constructor.
	 * @param parent
	 */
	public MyTree(EplConfiguratorFrame parent) {
		super(new MyTreeModel(parent.getEplProject()));
		this.parent = parent;
		this.mymodel = (MyTreeModel) this.getModel();

		this.log = Logger.getLogger(Logger.GLOBAL_LOGGER_NAME);
		log.setLevel(Level.FINE);

		setEventListenerList(parent.getEventListenerList());
		initListeners();
		
		this.setDragEnabled(true);
		this.setTransferHandler(new EplTreeTransferHandler());

	}

	public void initProject(EplProject project) {
		this.mymodel = new MyTreeModel(project); 
		setModel(mymodel);
		this.treeDidChange();
		project.setModified(false);
		
		log.finest("Inserted new project into the tree.");
	}
	
	/**
	 * Initialize several listeners
	 */
	private void initListeners() {
		this.addMouseListener(new MouseListener() {
			
			@Override
			public void mouseReleased(MouseEvent e) {
				if (e.getButton() == MouseEvent.BUTTON1) {
					showNode();
				}
			}
			
			@Override
			public void mousePressed(MouseEvent e) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void mouseExited(MouseEvent e) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void mouseEntered(MouseEvent e) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void mouseClicked(MouseEvent e) {
				if (e.getButton() == MouseEvent.BUTTON3) {
					rightMouseClicked(e);
				}
				
			}
		});
		
		this.addKeyListener(new KeyListener() {
			
			@Override
			public void keyTyped(KeyEvent e) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void keyReleased(KeyEvent e) {
				if (
						e.getKeyCode() == KeyEvent.VK_UP ||
						e.getKeyCode() == KeyEvent.VK_DOWN
						) 
				{
					showNode();
				}
				else if (e.getKeyCode() == KeyEvent.VK_DELETE) {
					removeObjectNode();
				}
			}
			
			@Override
			public void keyPressed(KeyEvent e) {
				// TODO Auto-generated method stub
				
			}
		});
		
		getEventListenerList().add(TreePopupEventListener.class, new TreePopupEventListener() {
			
			@Override
			public void removeObjectTreeNode(TreePopupEvent e) {
				removeObjectNode();
			}
			
			@Override
			public void refreshTreeNode(TreePopupEvent treePopupEvent) {
				refreshTree();
			}
			
			@Override
			public void exportActualValues(TreePopupEvent e) {
				doExportActualValues();
			}
			
			@Override
			public void enableTreeNode(TreePopupEvent e) {
				doEnableNode();
			}
			
			@Override
			public void disableEplNode(TreePopupEvent e) {
				doDisableNode();
			}
			
			@Override
			public void removeEplNode(TreePopupEvent e) {
				removeCurrentSelectedEplNode();
			}
			
			@Override
			public void removeSubObjectTreeNode(TreePopupEvent e) {
				removeObjectNode();
			}
			
			@Override
			public void addSubObjectTreeNode(TreePopupEvent e) {
				addSubindexNode(null);
			}
			
			@Override
			public void addSubIndexToLastSelectedComponent(EplSubindex subIndex) {
				addSubindexNode(subIndex);
			}
			
			@Override
			public void addObjectTreeNode(TreePopupEvent e) {
				addIndexNode();
			}

			@Override
			public void replaceEplNode(TreePopupEvent e) {
				replaceCurrentSelectedEplNode();
			}

			@Override
			public void addEplNode(TreePopupEvent e) {
				addProjectProfile();
			}

		});
		
		getEventListenerList().add(DetailPanelEventListener.class, new DetailPanelEventListener() {
			
			@Override
			public void updateProjectName() {
				//if (getModel().getRoot() instanceof MyProjectNode) {
				//	((MyProjectNode)getModel().getRoot());
				//}
				MyTree.this.refreshTree();
			}
			
			@Override
			public void updateBaseNodeLabel(TreeNode treeNode) {
				MyTree.this.refreshTree();
			}
		});
		
	}

	private void addIndexNode() {
		Object lastComponent = this.getLastSelectedPathComponent();
		
		// get the right profile
		if (lastComponent instanceof MyBaseNodeInterfaceNode) {
			((MyBaseNodeInterfaceNode) lastComponent).addIndex(parent);
			this.refreshTree();
		}
		else if (lastComponent instanceof MyRootNode) {
			((MyRootNode) lastComponent).addIndex(parent);
			this.refreshTree();
		}
		else if (lastComponent instanceof MyProfileNode) {
			((MyProfileNode) lastComponent).addIndex(parent);
			this.refreshTree();
		}
		else {
			log.fine("lastComponent type not allowed ("+lastComponent.getClass().getCanonicalName()+")");
		}
		
	}

	private void addSubindexNode(EplSubindex subIndex) {
		Object lastComponent = this.getLastSelectedPathComponent();
		
		if (lastComponent == null) {
			log.fine("lastComponent is null!");
			return;
		}
		// get the right profile
		else if (lastComponent instanceof MyBaseNodeInterfaceNode) {
			((MyBaseNodeInterfaceNode) lastComponent).addSubindex(parent, subIndex);
			this.refreshTree();
		}
		else {
			log.fine("lastComponent type not allowed ("+lastComponent.getClass().getCanonicalName()+")");
			return;
		}
		
	}

	/**
	 * Used by mouse/key event listener to display node info
	 */
	public void showNode() {
		for (int i=0; i<2*getEventListenerList().getListenerCount(); i+=2) {
			if (getEventListenerList().getListenerList()[i]==TreeEventListener.class) {
				((TreeEventListener)getEventListenerList().getListenerList()[i+1])
					.treeEventOccured(new TreeEvent(this));
			}
		}
	}

	/**
	 * Handle right mouse click
	 * @param e
	 */
	private void rightMouseClicked(MouseEvent e) {
		// also select the node under mouse 
		TreePath row = this.getPathForLocation(e.getX(), e.getY());
		this.setSelectionPath(row);
		
		// nothing selected
		if (row == null) {
			return;
		}
		
		Object node = row.getLastPathComponent();
		if (node instanceof MyBaseNodeInterfaceNode) {
			BaseNodeInterface bnode = ((MyBaseNodeInterfaceNode) node).getBaseNode();
			if (bnode instanceof EplIndex) {
				new IndexNodePopupMenu(this).show(this, e.getX(), e.getY());
			}
			else if (bnode instanceof EplSubindex) {
				new SubindexNodePopupMenu(this).show(this, e.getX(), e.getY());				
			}
		}
		else if (node instanceof MyProfileNode) {
			new EplNodePopupMenu(this).show(this, e.getX(), e.getY());			
		}
		else {
			new DefaultPopupMenu(this).show(this, e.getX(), e.getY());
		}		
		
	}

	@Override
	public Object getLastPathSelectedObject() {
		Object node = this.getSelectionPath().getLastPathComponent();
		if (node instanceof MyProjectNode) {
			return ((MyProjectNode) node).getProject();
		}
		else if (node instanceof MyProfileNode) {
			return ((MyProfileNode) node).getProfile();
		}
		else if (node instanceof MyRootNode) {
			return ((MyRootNode) node).getRootNode();			
		}
		else if (node instanceof MyBaseNodeInterfaceNode) {
			return ((MyBaseNodeInterfaceNode) node).getBaseNode();
		}
		return null;
	}

	/**
	 * Enable selected node.
	 */
	private void doEnableNode() {
		Object object = getLastPathSelectedObject();
		
		if (object instanceof ProfileInterface) {
			((ProfileInterface) object).setDisabled(false);
			((ProfileInterface) object).setModified(true);
		}
	}

	/**
	 * Disable selected node.
	 */
	private void doDisableNode() {
		Object object = getLastPathSelectedObject();
		
		if (object instanceof ProfileInterface) {
			((ProfileInterface) object).setDisabled(true);
			((ProfileInterface) object).setModified(true);
		}
	}
	
	/**
	 * Delete selected node.
	 */
	private int removeCurrentSelectedEplNode() {
		Object node = getLastSelectedPathComponent();
		if (node instanceof MyProfileNode) {
			MyProfileNode pnode = (MyProfileNode) node;
			log.finest(getProject().toString());
			if (getProject().hasConnections(pnode.getProfile())) {
				log.finest("node in connections, asking for delete");
				int answer = JOptionPane.showConfirmDialog(
						parent, 
						"Selected node has active connections, deleting this node would break them!", 
						"Delete selected node", 
						JOptionPane.YES_NO_OPTION);
				if (answer == JOptionPane.YES_OPTION) {
					//getProject().getMappingManager().removeMappingsByProfile(pnode.getProfile());
					parent.refreshViewPanel();
					pnode.remove();
				}
				return answer;
			}
			else {
				log.finest("node not in connections.");
				pnode.remove();
			}
			this.refreshTree();
		} else {
			log.fine("Not an MyProfileNode!");
		}
		return JOptionPane.NO_OPTION;
	}

	/**
	 * Replace selected tree node with a differed one and merge changes.
	 */
	private void replaceCurrentSelectedEplNode() {
		Object node = getLastSelectedPathComponent();
		if (node instanceof MyProfileNode) {
			MyProfileNode mnode = (MyProfileNode) node;
			// selected profile
			ProfileInterface oldnode = mnode.getProfile();
			
			AddProfileDialog apdial = new ReplaceProfileDialog(parent, oldnode);
			if (apdial.getAnswer() == true) {
				EplProject project = getEplModel().getProjectRootNode().getProject();
				// create new profile
				ProfileInterface newnode = apdial.createProfile(project);
				// replace 'em
				project.replaceNode(oldnode, newnode);
				this.refreshTree();	
			}
			
		} else {
			log.fine("Not an MyProfileNode!");
		}		
	}
	
	private void doExportActualValues() {
		Object sel = getLastPathSelectedObject();
	
		if (sel instanceof EplIndex) {
			doExportActualValues((EplIndex) sel);
		} else if (sel instanceof EplSubindex) {
			doExportActualValues((EplSubindex) sel);
		} else if (sel instanceof ProfileInterface) {
			doExportActualValues((ProfileInterface) sel);
		} else if (sel instanceof RootNodeInterface) {
			doExportActualValues(((RootNodeInterface) sel).getParentProfile());
		} else {
			log.fine("No valid object selected");
		}
		showNode();
	}

	private void doExportActualValues(EplIndex index) {
		if (index.getActualValueValid()) {
			index.setExportable(true);
		}
		
		if (index.getChildSubObjects() == null) {
			return;
		}
		
		for (EplSubindex si : index.getChildSubObjects()) {
			doExportActualValues(si);
		}
	}

	private void doExportActualValues(EplSubindex subindex) {
		if (subindex.getActualValueValid()) {
			subindex.setExportable(true);
		}
	}

	private void doExportActualValues(ProfileInterface node) {
		for (EplIndex i : node.getObjects()) {
			doExportActualValues(i);
		}
	}

	public void refreshTree() {
		this.updateUI();
	}
	
	/**
	 * Remove selected object. It should be an {@link MyBaseNodeInterfaceNode} instance.
	 */
	private void removeObjectNode() {
		// delete only correct components
		if (getLastSelectedPathComponent() instanceof MyBaseNodeInterfaceNode) {
			int row = getSelectionRows()[0];
			((MyBaseNodeInterfaceNode) getLastSelectedPathComponent()).remove(parent);
			refreshTree();
			setSelectionRow(row);
		}
		else if (getLastSelectedPathComponent() instanceof MyProfileNode) {
			int row = getSelectionRows()[0];
			int answer = removeCurrentSelectedEplNode();
			if (answer == JOptionPane.YES_OPTION) {
				refreshTree();
				setSelectionRow(row);				
			}
		}
		// tell me that the component was not the one we expected
		else {
			log.info("Unknown object type!");
		}
	}

	@Override
	public void addProjectProfile() {
		AddProfileDialog apdial = new AddProfileDialog(parent);
		while (apdial.getAnswer()) {
			if (apdial.getNodeId() < 1 || apdial.getNodeId() > 255) {
				JOptionPane.showMessageDialog(parent, "Node id value not valid!");
				apdial.setVisible(true);				
			}
			else if(getProject().getProfile(apdial.getNodeId()) != null) {
				JOptionPane.showMessageDialog(parent, "Node id already exists!");
				apdial.setVisible(true);
			}
			else {
				getEplModel().addProjectProfile(apdial);
				this.expandRow(0);
				refreshTree();
				break;
			}
		}
	}
	
	/**
	 * 
	 * @return {@link MyTreeModel}
	 */
	public MyTreeModel getEplModel() {
		return mymodel;
	}
	
	/**
	 * 
	 * @return {@link EplProject} handed by model
	 */
	public EplProject getProject() {
		return getEplModel().getProjectRootNode().getProject();
	}
}
