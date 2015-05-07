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

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JMenuItem;
import javax.swing.JPopupMenu;
import javax.swing.event.EventListenerList;


/**
 * Default popup menu. Allows only add object node.
 * 
 * @author honza801
 *
 */
public class DefaultPopupMenu extends JPopupMenu {
	
	private static final long serialVersionUID = 1L;
	private EplTreeInterface parent;
	private JMenuItem addObjectNodeItem;
	private JMenuItem refreshTreeNodeItem;
	private JMenuItem exportActualValuesItem;
	private JMenuItem addEplNodeItem;

	public DefaultPopupMenu(EplTreeInterface parent) {
		super();
		this.parent = parent;
		init();
	}

	protected void init() {
		addObjectNodeItem = new JMenuItem("Add index");
		addObjectNodeItem.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				addObjectTreeNode();
			}
		});
		refreshTreeNodeItem = new JMenuItem("Refresh");
		refreshTreeNodeItem.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent arg0) {
				refreshTree();
			}
		});
		exportActualValuesItem = new JMenuItem("Export actual values");
		exportActualValuesItem.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent arg0) {
				exportActualValues();
			}
		});
		addEplNodeItem = new JMenuItem("Add node");
		addEplNodeItem.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				addEplNodeItem();
			}
		});
		
		this.add(addObjectNodeItem);
		this.add(refreshTreeNodeItem);
		this.add(exportActualValuesItem);
		this.add(addEplNodeItem);
	}
	
	protected void addEplNodeItem() {
		for (int i=0; i<2*getEventListenerList().getListenerCount(); i+=2) {
			if (getEventListenerList().getListenerList()[i]==TreePopupEventListener.class) {
				((TreePopupEventListener)getEventListenerList().getListenerList()[i+1])
					.addEplNode(new TreePopupEvent(this));
			}
		}		
	}

	protected void refreshTree() {
		for (int i=0; i<2*getEventListenerList().getListenerCount(); i+=2) {
			if (getEventListenerList().getListenerList()[i]==TreePopupEventListener.class) {
				((TreePopupEventListener)getEventListenerList().getListenerList()[i+1])
					.refreshTreeNode(new TreePopupEvent(this));
			}
		}		
	}

	protected void addObjectTreeNode() {
		for (int i=0; i<2*getEventListenerList().getListenerCount(); i+=2) {
			if (getEventListenerList().getListenerList()[i]==TreePopupEventListener.class) {
				((TreePopupEventListener)getEventListenerList().getListenerList()[i+1])
					.addObjectTreeNode(new TreePopupEvent(this));
			}
		}
	}

	protected void exportActualValues() {
		for (int i=0; i<2*getEventListenerList().getListenerCount(); i+=2) {
			if (getEventListenerList().getListenerList()[i]==TreePopupEventListener.class) {
				((TreePopupEventListener)getEventListenerList().getListenerList()[i+1])
					.exportActualValues(new TreePopupEvent(this));
			}
		}		
	}

	public EventListenerList getEventListenerList() {
		return parent.getEventListenerList();
	}
	
	protected EplTreeInterface getParentTree() {
		return parent;
	}
}
