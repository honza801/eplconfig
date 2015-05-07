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

import cz.rexcontrols.epl.editor.*;

public class EplNodePopupMenu extends DefaultPopupMenu {

	private static final long serialVersionUID = 1L;
	private JMenuItem enableNodeItem;
	private JMenuItem disableNodeItem;
	private JMenuItem deleteEplNodeItem;
	private JMenuItem replaceEplNodeItem;

	public EplNodePopupMenu(EplTreeInterface parent) {
		super(parent);
	}
	
	protected void init() {
		super.init();
		
		deleteEplNodeItem = new JMenuItem("Delete Node");
		deleteEplNodeItem.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent arg0) {
				deleteSelectedNode();
			}
		});
		this.add(deleteEplNodeItem);
		
		replaceEplNodeItem = new JMenuItem("Replace Node");
		replaceEplNodeItem.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				replaceSelectedNode();
			}
		});
		this.add(replaceEplNodeItem);
		
		if (((EplNode)getParentTree().getLastPathSelectedObject()).isDisabled()) {
			enableNodeItem = new JMenuItem("Enable");
			enableNodeItem.addActionListener(new ActionListener() {
				@Override
				public void actionPerformed(ActionEvent e) {
					enableNode();
				}
			});
			this.add(enableNodeItem);
		} else {
			disableNodeItem = new JMenuItem("Disable");
			disableNodeItem.addActionListener(new ActionListener() {
				@Override
				public void actionPerformed(ActionEvent arg0) {
					disableNode();
				}
			});
			this.add(disableNodeItem);
		}
	}

	protected void replaceSelectedNode() {
		for (int i=0; i<2*getEventListenerList().getListenerCount(); i+=2) {
			if (getEventListenerList().getListenerList()[i]==TreePopupEventListener.class) {
				((TreePopupEventListener)getEventListenerList().getListenerList()[i+1])
					.replaceEplNode(new TreePopupEvent(this));
			}
		}		
	}

	protected void enableNode() {
		for (int i=0; i<2*getEventListenerList().getListenerCount(); i+=2) {
			if (getEventListenerList().getListenerList()[i]==TreePopupEventListener.class) {
				((TreePopupEventListener)getEventListenerList().getListenerList()[i+1])
					.enableTreeNode(new TreePopupEvent(this));
			}
		}
	}
	
	protected void disableNode() {
		for (int i=0; i<2*getEventListenerList().getListenerCount(); i+=2) {
			if (getEventListenerList().getListenerList()[i]==TreePopupEventListener.class) {
				((TreePopupEventListener)getEventListenerList().getListenerList()[i+1])
					.disableEplNode(new TreePopupEvent(this));
			}
		}
	}
	
	protected void deleteSelectedNode() {
		for (int i=0; i<2*getEventListenerList().getListenerCount(); i+=2) {
			if (getEventListenerList().getListenerList()[i]==TreePopupEventListener.class) {
				((TreePopupEventListener)getEventListenerList().getListenerList()[i+1])
				.removeEplNode(new TreePopupEvent(this));
			}
		}
	}
	
}
