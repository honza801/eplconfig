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

import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;

import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.tree.TreeNode;

import cz.rexcontrols.epl.editor.BaseNodeInterface;
import cz.rexcontrols.epl.editor.EplIndex;
import cz.rexcontrols.epl.editor.EplSubindex;
import cz.rexcontrols.epl.editor.gui.EplObjectFactory;

/**
 * 
 * @author honza801
 *
 */
public class MyBaseNodeInterfaceNode implements TreeNode {

	private TreeNode parent;
	private BaseNodeInterface eplObject;
	
	public MyBaseNodeInterfaceNode(BaseNodeInterface object, TreeNode parent) {
		this.parent = parent;
		this.eplObject = object;
	}
	
	@Override
	public Enumeration<MyBaseNodeInterfaceNode> children() {
		if (getChildCount() > 0) {
			return new BaseNodeChildrenEnumeration(this);
		}
		return null;
	}

	@Override
	public boolean getAllowsChildren() {
		if (eplObject instanceof EplIndex) {
			return true;
		}
		else if (eplObject instanceof EplSubindex) {
			return true;
		}
		return false;
	}

	@Override
	public TreeNode getChildAt(int childIndex) {
		if (eplObject instanceof EplIndex) {
			List<EplSubindex> nodes = ((EplIndex) eplObject).getChildSubObjects();
			if (nodes != null) {
				return new MyBaseNodeInterfaceNode(nodes.get(childIndex), this);
			}
		}
		else if (eplObject instanceof EplSubindex) {
			List<BaseNodeInterface> nodes = null;
			nodes = ((EplSubindex) eplObject).getChildObjects();
			if (nodes != null) {
				return new MyBaseNodeInterfaceNode(nodes.get(childIndex), this);
			}
		}
		return null;
	}

	@Override
	public int getChildCount() {
		if (eplObject instanceof EplIndex) {
			List<EplSubindex> nodes = ((EplIndex) eplObject).getChildSubObjects();
			if (nodes != null) {
				return nodes.size();
			}
		}
		else if (eplObject instanceof EplSubindex) {
			List<BaseNodeInterface> nodes = ((EplSubindex) eplObject).getChildObjects();
			if (nodes != null) {
				return nodes.size();
			}
		}
		return 0;
	}

	@Override
	public int getIndex(TreeNode node) {
		MyBaseNodeInterfaceNode bnode = (MyBaseNodeInterfaceNode) node;
		if (eplObject instanceof EplIndex) {
			return ((EplIndex) eplObject).getChildSubObjects().indexOf(bnode.getBaseNode());
		}
		if (eplObject instanceof EplSubindex) {
			return ((EplSubindex) eplObject).getChildObjects().indexOf(bnode.getBaseNode());
		}
		return 0;
	}

	@Override
	public TreeNode getParent() {
		return parent;
	}

	@Override
	public boolean isLeaf() {
		return getChildCount() < 1;
	}
	
	@Override
	public String toString() {
		return eplObject.toString();
	}

	public void addIndex(JFrame parent) {
		// show dialog
		AddObjectDialog aodial = new AddObjectDialog(parent, "Add Index");

		if (aodial.getAnswer()) {
			EplIndex index = EplObjectFactory.createEplIndex(getBaseNode().getParentProfile(), aodial);
			getBaseNode().getParentProfile().addObject(index);
		}
	}
	
	public void addSubindex(JFrame parent, EplSubindex subIndex) {
		if (getBaseNode() instanceof EplIndex) {
			if (subIndex == null) {
				// show dialog
				AddObjectDialog aodial = new AddObjectDialog(parent, "Add Subindex");

				if (aodial.getAnswer()) {
					subIndex = EplObjectFactory.createEplSubindex((EplIndex)getBaseNode(), aodial);
					((EplIndex) getBaseNode()).addChildObject(subIndex);
				}
			}
			else {
				((EplIndex) getBaseNode()).addChildObject(subIndex);
			}
		}
		else {
			// cannot add subindex here
		}
	}
	
	public void remove(JFrame parent) {
		if (getBaseNode() instanceof EplIndex) {
			EplIndex sel = (EplIndex) getBaseNode();
			// ask user
			int answer = JOptionPane.showConfirmDialog(parent, 
					"Really delete \"" + sel + "\"?",
					"Delete node from tree.",
					JOptionPane.YES_NO_OPTION);
			// check the answer
			if (answer == JOptionPane.YES_OPTION) {
				sel.getParentProfile().setModified(true);
				sel.getParentProfile().removeObject(sel);
			}
		}
		else if (getBaseNode() instanceof EplSubindex) {
			EplSubindex sel = (EplSubindex) getBaseNode();
			// ask user
			int answer = JOptionPane.showConfirmDialog(parent, 
					"Really delete \"" + sel + "\"?",
					"Delete node from tree.",
					JOptionPane.YES_NO_OPTION);
			// check the answer
			if (answer == JOptionPane.YES_OPTION) {
				sel.getParentProfile().setModified(true);
				EplIndex pnode = sel.getParentIndex();
				pnode.removeChildSubObobject(sel);
				pnode.refreshNumberOfEntries();
			}
		}
		else {
			// cannot remove index
		}
	}

	/**
	 * 
	 * @return
	 */
	public BaseNodeInterface getBaseNode() {
		return this.eplObject;
	}

	/**
	 * 
	 * @author honza801
	 *
	 */
	private class BaseNodeChildrenEnumeration implements Enumeration<MyBaseNodeInterfaceNode> {

		private MyBaseNodeInterfaceNode parent;
		private Iterator<BaseNodeInterface> iterator = null;
		
		public BaseNodeChildrenEnumeration(MyBaseNodeInterfaceNode parent) {
			this.parent = parent;
			
			BaseNodeInterface baseNode = parent.getBaseNode();
			if (baseNode instanceof EplSubindex) {
				this.iterator = ((EplSubindex) baseNode).getChildObjects().iterator();
			}
		}

		@Override
		public boolean hasMoreElements() {
			if (iterator != null) {
				return iterator.hasNext();
			}
			return false;
		}

		@Override
		public MyBaseNodeInterfaceNode nextElement() {
			if (iterator != null) {
				return new MyBaseNodeInterfaceNode(iterator.next(), parent);
			}
			return null;
		}
	}
	
}
