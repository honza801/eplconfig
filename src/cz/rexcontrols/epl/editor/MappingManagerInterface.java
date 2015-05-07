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

import java.io.BufferedWriter;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import cz.rexcontrols.epl.editor.project.CfgProject;

/**
 * 
 * @author honza801
 *
 */
public interface MappingManagerInterface {

	/**
	 * Add new empty mapping
	 */
	public MappingInterface addMapping();
	
	/**
	 * Remove mapping defined by its name
	 * @param key
	 */
	public void removeMapping(String key);
	
	/**
	 * Remove mappings in parameter if exists
	 * @param removeMappings
	 */
	public void removeMappings(List<MappingInterface> removeMappings);
	
	/**
	 * Remove mapping at index
	 * @param index
	 */
	public void removeMappingAt(int index);
	
	/**
	 * Export mapping to file
	 * @param output
	 */
	public void exportMapping(File output);
	
	/**
	 * Export mapping to output
	 * @param output
	 * @throws IOException
	 */
	public void exportMapping(BufferedWriter output) throws IOException;
	
	/**
	 * 
	 * @return list of {@link MappingInterface} 
	 */
	public List<MappingInterface> getMappingList();
	
	/**
	 * 
	 * @return Mapping represented by String map
	 */
	public Map<String, String> getMappingMap();
	
	/**
	 * 
	 * @return {@link CfgProject} 
	 */
	public EplProject getProject();
	
	/**
	 * Set project for this mappings
	 * @param project
	 */
	public void setProject(EplProject project);
	
	/**
	 * 
	 * @param project
	 */
	public void setCfgProject(CfgProject project);
	
	/**
	 * 
	 * @return number of mappings.
	 */
	public int getMappingCount();
	
	/**
	 * 
	 * @param index
	 * @return {@link MappingInterface} specified by position.
	 */
	public MappingInterface getMappingAt(int index);
	
	/**
	 * 
	 * @param id
	 * @return {@link MappingInterface} specified by index.
	 */
	public MappingInterface getMappingByIndex(int id);
	
	/**
	 * 
	 * @param mappingName
	 * @return {@link MappingInterface} specified by mapping name.
	 */
	public MappingInterface getMappingByName(String mappingName);
	
	/**
	 * Correct connection mappings.
	 * @param oldNode
	 * @param newNode
	 */
	public void replaceNodes(ProfileInterface oldNode, ProfileInterface newNode);

	/**
	 * 
	 * @param profile
	 * @return <code>true</code> if profile is present in some connections
	 */
	public boolean hasConnections(ProfileInterface profile);
	
	/**
	 * Removes connection mappings which contains nodes of the profile
	 * @param profile
	 */
	public void removeMappingsByProfile(ProfileInterface profile);

	/**
	 * 
	 * @return Connection mapping which has sources/destinations owned by non-existent node.
	 */
	public List<MappingInterface> getInvalidConnectionMappings();
	
}