package cz.rexcontrols.epl.editor.gui;
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

import javax.swing.AbstractButton;

/**
 * 
 * @author honza801
 *
 */
public interface CMEventListener extends EventListener {

	/**
	 * Clear project.
	 * @param e
	 */
	public void emptyProject(CMEvent e);
	
	/**
	 * Open project.
	 * @param e
	 */
	public void openProject(CMEvent e);
	
	/**
	 * Save project.
	 * @param e
	 */
	public void saveProject(CMEvent e);

	/**
	 * Save project asking for project destination
	 * @param e
	 */
	public void saveProjectAs(CMEvent e);
	
	/**
	 * Add new profile
	 * @param e
	 */
	public void addProfileEvent(CMEvent e);
	
	/**
	 * Add new connection mapping
	 * @param e
	 */
	public void addConnectionMappingEvent(CMEvent e);
	
	/**
	 * Generate PDO mapping
	 * @param e
	 */
	public void generatePDO(CMEvent e);
	
	/**
	 * Generate outputs
	 * @param e
	 */
	public void generateOutputs(CMEvent e);
	
	/**
	 * Set advanced view of {@link EplTree}
	 * @param button
	 */
	public void advancedView(AbstractButton button);
	
	/**
	 * Reload project
	 * @param e
	 */
	public void reload(CMEvent e);
	
	/**
	 * Load definded project (used for testing)
	 * @param e
	 */
	public void loadDefProject(CMEvent e);
	
	/**
	 * Exit configurator
	 * @param e
	 */
	public void closeConfigurator(CMEvent e);
	
	/**
	 * Open folder in system file manager
	 * @param e
	 */
	public void openFolder(CMEvent e);
	
	/**
	 * Display help dialog
	 * @param e
	 */
	public void showHelpDialog(CMEvent e);
	
	/**
	 * Show network properties of the project.
	 * @param e
	 */
	public void showProjectProperties(CMEvent e);
	
}
