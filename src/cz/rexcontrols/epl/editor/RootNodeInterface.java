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
import java.util.Properties;

/**
 * This class is mainly user for display purposes.
 * It contains the Device/Network/Objects TreeNode.
 * 
 * @author honza801
 *
 */
public interface RootNodeInterface {
	
	/**
	 * Set Properties of this object
	 * @param props
	 */
	public void setProperties(Properties props);
	
	/**
	 * 
	 * @return Properties of this object.
	 */
	public Properties getProperties();
	
	/**
	 * 
	 * @return {@link RootNodeTypeEnum} of this object.
	 */
	public RootNodeTypeEnum getType();
	
	/**
	 * 
	 * @return parent {@link ProfileInterface}.
	 */
	public ProfileInterface getParentProfile();
	
	/**
	 * Set {@link ProfileInterface}.
	 * @param parent
	 */
	public void setParentProfile(ProfileInterface parent);
	
	/**
	 * Set child {@link List<ObjectNodeInterface> of this object}.
	 * @param object
	 */
	public void setObjectNodes(List<EplIndex> objects);
	
	/**
	 * Add {@link ObjectNodeInterface} to this object.
	 * @param object
	 * @return position of child subobject in list
	 */
	public int addObjectNode(EplIndex object);
	
	/**
	 * Remove {@link ObjectNodeInterface} from object list.
	 * @param object
	 */
	public boolean removeObjectNode(EplIndex object);
	
	/**
	 * 
	 * @return {@link List<ObjectNodeInterface>}, objects of this node depending on view.  
	 */
	public List<EplIndex> getObjectNodes();
	
	/**
	 * 
	 * @return {@link List<ObjectNodeInterface>}, all objects of this node.  
	 */
	public List<EplIndex> getAllObjectNodes();
	
	/**
	 * 
	 * @param index
	 * @return {@link ObjectNodeInterface} from list, specified by index.
	 */
	public EplIndex getByIndex(int index);


}
