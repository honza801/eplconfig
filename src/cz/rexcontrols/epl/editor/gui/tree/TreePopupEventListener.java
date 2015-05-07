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

import java.util.EventListener;

import cz.rexcontrols.epl.editor.EplSubindex;

/**
 * Event listener mainly for popups.
 * 
 * @author honza801
 *
 */
public interface TreePopupEventListener extends EventListener {

	/**
	 * Add object to tree. 
	 * @param e
	 */
	public void addObjectTreeNode(TreePopupEvent e);

	/**
	 * Remove object from tree.
	 * @param e
	 */
	public void removeObjectTreeNode(TreePopupEvent e);

	/**
	 * Add subobject to tree.
	 * @param e
	 */
	public void addSubObjectTreeNode(TreePopupEvent e);
	
	/**
	 * Remove subobject from tree.
	 * @param e
	 */
	public void removeSubObjectTreeNode(TreePopupEvent e);

	/**
	 * Mark all actual values as exportable
	 * @param e
	 */
	public void exportActualValues(TreePopupEvent e);
	
	/**
	 * Refresh tree.
	 * @param treePopupEvent
	 */
	public void refreshTreeNode(TreePopupEvent treePopupEvent);

	/**
	 * Add subindex from parameter to the last selected object.
	 * @param subIndex
	 */
	public void addSubIndexToLastSelectedComponent(EplSubindex subIndex);
	
	/**
	 * Add new EplNode.
	 * @param e
	 */
	public void addEplNode(TreePopupEvent e);
	
	/**
	 * Remove selected node.
	 * @param e
	 */
	public void removeEplNode(TreePopupEvent e);
	
	/**
	 * Enable node.
	 * @param e
	 */
	public void enableTreeNode(TreePopupEvent e);
	
	/**
	 * Disable node.
	 * @param e
	 */
	public void disableEplNode(TreePopupEvent e);
	
	/**
	 * Replace selected epl node.
	 * @param e
	 */
	public void replaceEplNode(TreePopupEvent e);
	
}
