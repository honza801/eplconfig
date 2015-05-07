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

import java.io.File;
import java.util.List;
import java.util.Properties;

/**
 * Methods defining profile/node interface.
 * Profile should contain following items:
 * <ul>
 * <li>profile name</li>
 * <li>profile id</li>
 * <li>profile source file name</li>
 * </ul>
 * 
 * @author honza801
 *
 */
public interface ProfileInterface extends Comparable<ProfileInterface> {

	/**
	 * 
	 * @return Name of this Profile 
	 */
	public String getProfileName();
	
	/**
	 * Sets name of this profile
	 * @param profileName
	 */
	public void setProfileName(String profileName);

	/**
	 * 
	 * @return Id of this Profile
	 */
	public int getProfileId();
	
	/**
	 * Sets Id of this Profile
	 * @param profileId
	 */
	public void setProfileId(int profileId);
	
	/**
	 * 
	 * @return Root nodes of the DocumentInterface.
	 */
	public List<RootNodeInterface> getRootNodes();
	
	/**
	 * 
	 * @return Source file of the profile.
	 */
	public File getSourceFile();
	
	/**
	 * Set source file for DocumentInterface.
	 * @param file
	 */
	public void setSourceFile(File file);

	/**
	 * 
	 * @return Document that was used to create this object.
	 */
	public DocumentInterface getDocument();
	public String getSourceFileName();
	
	/**
	 * 
	 * @return Properties of this profile for viewing.
	 */
	public Properties getViewProperties();

	/**
	 * Adds object to the profile.
	 * @param object
	 * @return position of child subobject in list
	 */
	public int addObject(EplIndex object);
	
	/**
	 * Removes object from list.
	 * @param object
	 */
	public void removeObject(EplIndex object);

	/**
	 * 
	 * @return Objects owned by this profile.
	 */
	public List<EplIndex> getObjects();
	
	/**
	 * 
	 * @param index
	 * @return ObjectNode specified by index.
	 */
	public EplIndex getByIndex(int index);
	
	public EplSubindex getSubindex(int index, int subindex);
	
	public boolean isMN();
	
	/**
	 * Saves document in specified folder.
	 * @param targetDir
	 */
	public void saveDocument(File targetDir);
	
	public BaseNodeInterface getObject(int index, int subindex);
	
	/**
	 * @param isRex the isRex to set
	 */
	public void setRexNode(boolean rexNode);

	/**
	 * @return the isRex
	 */
	public boolean isRexNode();

	public boolean isModified();
	public void setModified(boolean modified);
	
	public boolean isDisabled();
	public void setDisabled(boolean disabled);
	
	public boolean isAdvanced();
	
}
