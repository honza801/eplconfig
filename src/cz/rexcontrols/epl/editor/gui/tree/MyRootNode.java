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

import javax.swing.JFrame;
import javax.swing.tree.TreeNode;

import cz.rexcontrols.epl.editor.EplIndex;
import cz.rexcontrols.epl.editor.RootNodeInterface;
import cz.rexcontrols.epl.editor.RootNodeTypeEnum;
import cz.rexcontrols.epl.editor.gui.EplObjectFactory;

/**
 * 
 * @author honza801
 *
 */
public class MyRootNode implements TreeNode{

	private RootNodeInterface rootNode;
	private MyProfileNode parent;
	
	public MyRootNode(RootNodeInterface rootNode, MyProfileNode parent) {
		this.rootNode = rootNode;
		this.parent = parent;
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
		return 	rootNode.getType() == RootNodeTypeEnum.NETWORK_PROFILE;
	}

	@Override
	public TreeNode getChildAt(int childIndex) {
		if (getAllowsChildren()) {
			return new MyBaseNodeInterfaceNode(rootNode.getObjectNodes().get(childIndex), this);
		}
		return null;
	}

	@Override
	public int getChildCount() {
		if (getAllowsChildren()) {
			return rootNode.getObjectNodes().size();
		}
		return 0;
	}

	@Override
	public int getIndex(TreeNode node) {
		MyBaseNodeInterfaceNode bnode = (MyBaseNodeInterfaceNode) node;
		return rootNode.getObjectNodes().indexOf(bnode.getBaseNode());
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
		return rootNode.getType().name();
	}
	
	/**
	 * 
	 * @return
	 */
	public RootNodeInterface getRootNode() {
		return this.rootNode;
	}
	
	public void addIndex(JFrame parent) {
		// show dialog
		AddObjectDialog aodial = new AddObjectDialog(parent, "Add Index");

		if (aodial.getAnswer()) {
			EplIndex index = EplObjectFactory.createEplIndex(getRootNode().getParentProfile(), aodial);
			getRootNode().getParentProfile().addObject(index);
		}
	}
	
	/**
	 * 
	 * @author honza801
	 *
	 */
	private class BaseNodeChildrenEnumeration implements Enumeration<MyBaseNodeInterfaceNode> {

		private MyRootNode parent;
		private Iterator<EplIndex> iterator;
		
		public BaseNodeChildrenEnumeration(MyRootNode parent) {
			this.parent = parent;
			this.iterator = parent.getRootNode().getObjectNodes().iterator();
		}
		
		@Override
		public boolean hasMoreElements() {
			return iterator.hasNext();
		}

		@Override
		public MyBaseNodeInterfaceNode nextElement() {
			return new MyBaseNodeInterfaceNode(iterator.next(), parent);
		}
		
	}
}
