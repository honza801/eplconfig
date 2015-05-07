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

import java.util.ArrayList;

import cz.rexcontrols.epl.editor.BaseNodeInterface;
import cz.rexcontrols.epl.editor.DataType;
import cz.rexcontrols.epl.editor.EplIndex;
import cz.rexcontrols.epl.editor.EplSubindex;
import cz.rexcontrols.epl.editor.ObjectType;
import cz.rexcontrols.epl.editor.PDOMappingType;
import cz.rexcontrols.epl.editor.ProfileInterface;
import cz.rexcontrols.epl.editor.gui.tree.AddObjectDialog;

/**
 * 
 * @author honza801
 *
 */
public class EplObjectFactory {

	private EplObjectFactory() {
		
	}
	
	/**
	 * Create {@link EplIndex}
	 * @param pi
	 * @param aodial
	 * @return
	 */
	public static EplIndex createEplIndex(ProfileInterface pi, AddObjectDialog aodial) {
		EplIndex newIndex = new EplIndex(aodial.getName());
		newIndex.setIndex(EplIndex.fromHexStringToInteger(aodial.getIndex()));
		newIndex.setParentProfile(pi);
		newIndex.setExportable(false);
		newIndex.setUserObject(true);
		newIndex.setPDO(PDOMappingType.NO);
		newIndex.setDataType(DataType.UNSIGNED8);
		newIndex.setObjectType(ObjectType.VAR);
		return newIndex;
	}

	/**
	 * Create {@link EplSubindex}
	 * @param parent
	 * @param aodial
	 * @return
	 */
	public static EplSubindex createEplSubindex(EplIndex parent, AddObjectDialog aodial) {
		//EplSubindex newSubindex = new EplSubindex(aodial.getName());
		EplSubindex newSubindex = createEplSubindex(
				parent, aodial.getIndex(), aodial.getName());
		
		ObjectType preferedObjectType =	ObjectType.DEFTYPE;	
		if (parent.getObjectType() == ObjectType.ARRAY) {
			preferedObjectType = parent.getObjectType();
		}
		newSubindex.setObjectType(preferedObjectType);
		
		return newSubindex;
	}

	/**
	 * Create {@link EplSubindex}
	 * @param parent
	 * @param index
	 * @param name
	 * @return
	 */
	public static EplSubindex createEplSubindex(EplIndex parent, String index, String name) {
		EplSubindex newSubindex = new EplSubindex(name);

		newSubindex.setIndex(EplSubindex.fromHexStringToInteger(index));
		newSubindex.setParentIndex(parent);
		newSubindex.setExportable(false);
		newSubindex.setUserObject(true);
		newSubindex.setChildSubObjects(new ArrayList<BaseNodeInterface>());
		newSubindex.setPDO(PDOMappingType.NO);
		newSubindex.setDataType(DataType.UNSIGNED8);
		newSubindex.setObjectType(ObjectType.VAR);
		return newSubindex;
	}
}
