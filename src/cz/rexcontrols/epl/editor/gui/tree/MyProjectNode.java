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

import javax.swing.tree.TreeNode;
import cz.rexcontrols.epl.editor.EplProject;
import cz.rexcontrols.epl.editor.ProfileInterface;

/**
 * 
 * @author honza801
 *
 */
public class MyProjectNode implements TreeNode {

	private EplProject project;
	
	public MyProjectNode(EplProject project) {
		this.project = project;
		
	}
	
	@Override
	public Enumeration<MyProfileNode> children() {
		if (getChildCount() > 0) {
			return new ProfileChildrenEnumeration(this);
		}
		return null;
	}

	@Override
	public boolean getAllowsChildren() {
		return true;
	}

	@Override
	public TreeNode getChildAt(int childIndex) {
		return new MyProfileNode(project.getSortedEplProfiles().get(childIndex), this);
	}

	@Override
	public int getChildCount() {
		return project.getSortedEplProfiles().size();
	}

	@Override
	public int getIndex(TreeNode node) {
		MyProfileNode child = (MyProfileNode) node;
		return project.getSortedEplProfiles().indexOf(child.getProfile());
	}

	@Override
	public TreeNode getParent() {
		return null;
	}

	@Override
	public boolean isLeaf() {
		return this.getChildCount() < 1;
	}
	
	@Override
	public String toString() {
		return ((EplProject) project).getProjectName();
	}

	/**
	 * 
	 * @return object served by this tree node
	 */
	public EplProject getProject() {
		return this.project;
	}
	
	/**
	 * 
	 * @author honza801
	 *
	 */
	private class ProfileChildrenEnumeration implements Enumeration<MyProfileNode> {

		private MyProjectNode parent;
		private Iterator<ProfileInterface> iterator;
		
		public ProfileChildrenEnumeration(MyProjectNode parent) {
			this.parent = parent;
			this.iterator = parent.getProject().getSortedEplProfiles().iterator();
		}
		
		@Override
		public boolean hasMoreElements() {
			return iterator.hasNext();
		}

		@Override
		public MyProfileNode nextElement() {
			return new MyProfileNode(iterator.next(), parent);
		}
		
	}
	
}
