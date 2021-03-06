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

import javax.swing.JTree;
import javax.swing.event.EventListenerList;
import javax.swing.tree.TreeModel;

import cz.rexcontrols.epl.editor.EplProject;

/**
 * 
 * @author honza801
 *
 */
public abstract class EplTreeInterface extends JTree {

	private static final long serialVersionUID = -1L;
	private EventListenerList evlist;
	
	/**
	 * Constructor
	 */
	public EplTreeInterface() {
		super();
	}
	
	/**
	 * Constructor
	 * @param projectModel
	 */
	public EplTreeInterface(TreeModel projectModel) {
		super(projectModel);
	}

	/**
	 * This method initializes project
	 * @param project
	 */
	public abstract void initProject(EplProject project);

	public EventListenerList getEventListenerList() {
		return evlist;
	}
	
	public void setEventListenerList(EventListenerList evlist) {
		this.evlist = evlist;
	}
	
	public abstract Object getLastPathSelectedObject();

	public abstract void addProjectProfile();

	public abstract void refreshTree();

	public abstract void showNode();
	
}
