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
import java.util.Map;

/**
 * Implements mapping of objects represented by Strings.
 * Mapping contains name, multiple source and destination pointers.
 * 
 * @author honza801
 *
 */
public interface MappingInterface extends Comparable<MappingInterface> {

	/**
	 * Set name of this mapping.
	 * @param mappingName
	 */
	public void setMappingName(String mappingName);
	
	/**
	 * 
	 * @return Name of this mapping.
	 */
	public String getMappingName();
	
	/**
	 * 
	 * @return First object from sources list.
	 */
	public BaseNodeInterface getFirstSource();
	
	/**
	 * 
	 * @return Sources list.
	 */
	public List<BaseNodeInterface> getSource();
	
	/**
	 * Add source object to the sources list.
	 * @param source
	 */
	public void addSource(BaseNodeInterface source);
	
	/**
	 * Set sources list.
	 * @param source
	 */
	public void setSource(List<BaseNodeInterface> source);
	
	/**
	 * Remove source from list
	 * @param source
	 */
	public void removeSource(BaseNodeInterface source);
	
	/**
	 * Remove source by index from list
	 * @param index
	 */
	public void removeSource(int index);
	
	/**
	 * 
	 * @return First destination from destinations list.
	 */
	public BaseNodeInterface getFirstDestination();
	
	/**
	 * 
	 * @return Destinations list.
	 */
	public List<BaseNodeInterface> getDestination();
	
	/**
	 * Set destination list.
	 * @param destination
	 */
	public void setDestination(List<BaseNodeInterface> destination);
	
	/**
	 * Add destination object to the destination list.
	 * @param destination
	 */
	public void addDestination(BaseNodeInterface destination);
	
	/**
	 * Add destination object to the specified position in destination list.
	 * @param index
	 * @param destination
	 */
	public void addDestination(int index, BaseNodeInterface destination);
	
	/**
	 * Remove destination from list.
	 * @param index
	 */
	public void removeDestination(int index);
	
	public Map<String,String> getMap();
	
	public String sourceToString();
	public String destinationToString();

	/**
	 * 
	 * @param profile
	 * @return <code>true</code> if profile is presented in this mapping
	 */
	public boolean hasConnections(ProfileInterface profile);

	/**
	 * 
	 * @param project
	 * @return <code>true</code> if any source or destination has parent node, that is not in the project.
	 */
	public boolean hasInvalidSourceOrDestinations(EplProject project);
	
}
