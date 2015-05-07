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
import cz.rexcontrols.epl.editor.ProfileInterface;
import cz.rexcontrols.epl.editor.RootNodeInterface;
import cz.rexcontrols.epl.editor.gui.EplObjectFactory;

/**
 * 
 * @author honza801
 *
 */
public class MyProfileNode implements TreeNode {

	private ProfileInterface profile;
	private MyProjectNode parent;
	
	public MyProfileNode(ProfileInterface profile, MyProjectNode parent) {
		this.profile = profile;
		this.parent = parent;
	}
	
	@Override
	public Enumeration<MyRootNode> children() {
		if (getChildCount() > 0) {
			return new RootNodeChildrenEnumeration(this);
		}
		return null;
	}

	@Override
	public boolean getAllowsChildren() {
		return true;
	}

	@Override
	public TreeNode getChildAt(int childIndex) {
		return new MyRootNode(profile.getRootNodes().get(childIndex), this);
	}

	@Override
	public int getChildCount() {
		return profile.getRootNodes().size();
	}

	@Override
	public int getIndex(TreeNode node) {
		MyRootNode rnode = (MyRootNode) node;
		return profile.getRootNodes().indexOf(rnode.getRootNode());
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
		return profile.toString();
	}
	
	public void remove() {
		parent.getProject().removeNode(profile);
	}
	
	/**
	 * 
	 * @return profile served by this node
	 */
	public ProfileInterface getProfile() {
		return profile;
	}

	public void addIndex(JFrame parent) {
		// show dialog
		AddObjectDialog aodial = new AddObjectDialog(parent, "Add Index");

		if (aodial.getAnswer()) {
			EplIndex index = EplObjectFactory.createEplIndex(getProfile(), aodial);
			getProfile().addObject(index);
		}
	}
	
	/**
	 * 
	 * @author honza801
	 *
	 */
	private class RootNodeChildrenEnumeration implements Enumeration<MyRootNode> {

		private MyProfileNode parent;
		private Iterator<RootNodeInterface> iterator;
		
		public RootNodeChildrenEnumeration(MyProfileNode parent) {
			this.parent = parent;
			this.iterator = parent.getProfile().getRootNodes().iterator();
		}
		
		@Override
		public boolean hasMoreElements() {
			return iterator.hasNext();
		}

		@Override
		public MyRootNode nextElement() {
			return new MyRootNode(iterator.next(), parent);
		}
		
	}
	
}
