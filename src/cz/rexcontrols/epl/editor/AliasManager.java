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

import java.util.ArrayList;
import java.util.List;

import cz.rexcontrols.epl.editor.project.CfgAlias;
import cz.rexcontrols.epl.editor.project.CfgAliases;
import cz.rexcontrols.epl.editor.project.CfgDataIdent;

/**
 * 
 * @author honza801
 *
 */
public class AliasManager implements AliasNodeManagerInterface {

	private CfgAliases aliases;
	
	private List<BaseNodeInterface> nodes;
	
	/**
	 * default constructor
	 */
	public AliasManager() {
		this(new CfgAliases());
	}
	
	/**
	 * 
	 * @param aliasses
	 */
	public AliasManager(CfgAliases aliasses) {
		this.aliases = aliasses;
		this.nodes = new ArrayList<BaseNodeInterface>();
	}
	
	@Override
	public void addAliasNode(String aliasName, BaseNodeInterface node) {
		CfgAlias newAlias = new CfgAlias();
		newAlias.setLabel(aliasName);
		newAlias.setDestination(node.getDataIdent());
		aliases.getCfgAlias().add(newAlias);
		nodes.add(node);
	}

	@Override
	public CfgAliases getAliases() {
		return aliases;
	}
	
	@Override
	public void removeAlias(int aliasIndex) {
		aliases.getCfgAlias().remove(aliasIndex);
		nodes.remove(aliasIndex);
	}

	@Override
	public int getAliasesCount() {
		if (aliases.getCfgAlias() != null) {
			return aliases.getCfgAlias().size();			
		}
		return 0;
	}

	@Override
	public int addNewAlias() {
		//addAliasNode("alias"+(getAliasesCount()+1), new EplIndex("dumb"));
		addAliasNode("", new EplIndex(""));
		return aliases.getCfgAlias().size();
	}

	@Override
	public CfgAlias getAliasAt(int index) {
		return aliases.getCfgAlias().get(index);
	}

	@Override
	public BaseNodeInterface getAliasNodeAt(int index) {
		return nodes.get(index);
	}

	@Override
	public void syncToProject(EplProject project) {
		nodes.clear();
		for (CfgAlias a : aliases.getCfgAlias()) {
			CfgDataIdent data = a.getDestination();
			ProfileInterface profile = project.getProfile(data.getNode());
			if (data.getDomainPart() != null) {
				EplIndex idx = profile.getByIndex(data.getIndex());
				EplSubindex sidx = (EplSubindex)idx.getByIndex(data.getSubindex());
				DomainNodeInterface domain = (DomainNodeInterface) sidx.getByIndex(data.getDomainPart()); 
				nodes.add(domain);
			} else if (data.getSubindex() != null) {
				EplIndex idx = profile.getByIndex(data.getIndex());
				EplSubindex sidx = (EplSubindex)idx.getByIndex(data.getSubindex());
				nodes.add(sidx);
			} else if (data.getIndex() != 0) {
				EplIndex idx = profile.getByIndex(data.getIndex());
				nodes.add(idx);
			} else {
				nodes.add(new EplIndex("sync_not_found"));
			}
		}
	}

	@Override
	public void setAliasDestination(int index, BaseNodeInterface node) {
		aliases.getCfgAlias().get(index).setDestination(node.getDataIdent());
		nodes.remove(index);
		nodes.add(index, node);
	}

	@Override
	public void setAliasLabel(int index, String label) {
		aliases.getCfgAlias().get(index).setLabel(label);
	}

	@Override
	public int getIndexOf(String name) {
		for (CfgAlias a : aliases.getCfgAlias()) {
			if (a.getLabel().compareTo(name) == 0) {
				return aliases.getCfgAlias().indexOf(a);
			}
		}
		return -1;
	}

	@Override
	public List<BaseNodeInterface> getNodeAliasses() {
		return nodes;
	}

	@Override
	public void syncAliasesToObjects() {
		for (int i = 0; i < nodes.size(); i++) {
			nodes.get(i).setAlias(aliases.getCfgAlias().get(i).getLabel());
		}
	}

	/**
	 * 
	 * @return maximum index of all aliases
	 */
	public int getMaxAliasIndex() {
		if (aliases.getCfgAlias() != null) {
			return aliases.getCfgAlias().size()-1;			
		}
		return 0;
	}

}
