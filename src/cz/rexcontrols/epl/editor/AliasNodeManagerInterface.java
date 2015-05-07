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

import java.util.List;

import cz.rexcontrols.epl.editor.project.CfgAlias;
import cz.rexcontrols.epl.editor.project.CfgAliases;

/**
 * 
 * @author honza801
 *
 */
public interface AliasNodeManagerInterface {

	/**
	 * Add new alias.
	 * @param aliasName
	 * @param node
	 */
	public void addAliasNode(String aliasName, BaseNodeInterface node);
	
	/**
	 * Add new empty alias with default name.
	 * @return index of new alias.
	 */
	public int addNewAlias();
	
	/**
	 * Remove alias from list specified by index
	 * @param aliasIndex
	 */
	public void removeAlias(int aliasIndex);
	
	/**
	 * 
	 * @return {@link CfgAliases} handled by this manager.
	 */
	public CfgAliases getAliases();
	
	/**
	 * 
	 * @return list of {@link BaseNodeInterface}.
	 */
	public List<BaseNodeInterface> getNodeAliasses();
	
	/**
	 * 
	 * @return Aliases count.
	 */
	public int getAliasesCount();
	
	/**
	 * 
	 * @param index
	 * @return 
	 */
	public CfgAlias getAliasAt(int index);

	/**
	 * 
	 * @param index
	 * @return Alias destination specified by index.
	 */
	public BaseNodeInterface getAliasNodeAt(int index);
	
	/**
	 * 
	 * @param name
	 * @return index of alias specified by its name
	 */
	public int getIndexOf(String name);
	
	/**
	 * Search for the correct index/subindex/domain in the project
	 * @param project
	 */
	public void syncToProject(EplProject project);
	
	/**
	 * Set label for alias with index.
	 * @param index
	 * @param label
	 */
	public void setAliasLabel(int index, String label);
	
	/**
	 * Set destination for alias with index.
	 * @param index
	 * @param node
	 */
	public void setAliasDestination(int index, BaseNodeInterface node);
	
	public void syncAliasesToObjects();
}
