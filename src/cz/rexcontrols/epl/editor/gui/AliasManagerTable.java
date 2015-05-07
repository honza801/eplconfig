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

import java.awt.datatransfer.DataFlavor;
import java.awt.datatransfer.UnsupportedFlavorException;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.swing.JTable;
import javax.swing.ListSelectionModel;
import javax.swing.TransferHandler;
import javax.swing.event.EventListenerList;

import cz.rexcontrols.epl.editor.gui.tree.MyBaseNodeInterfaceNode;

/**
 * This class manages aliases of the nodes (index/subindex/domains).
 * 
 * @author honza801
 *
 */
public class AliasManagerTable extends JTable {
	
	private static final long serialVersionUID = 1L;
	private Logger log;
	private AliasTableModel model;
	private EPLCViewPanel parent;
	
	/**
	 * Default constructor
	 * @param manager
	 */
	public AliasManagerTable(AliasTableModel model) {
		super(model);
		this.model = model;
		this.model.setTable(this);
		
		log = Logger.getLogger(this.getClass().getCanonicalName());
		log.setParent(Logger.getLogger(Logger.GLOBAL_LOGGER_NAME));
		log.setLevel(Level.ALL);
		
		init();
	}

	public void init() {
		setDragEnabled(true);
		setTransferHandler(new AliasManagerTransferHandler(this));
		addKeyListener(new KeyListener() {
			
			@Override
			public void keyTyped(KeyEvent arg0) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void keyReleased(KeyEvent arg0) {
				if (arg0.getKeyCode() == KeyEvent.VK_DELETE) {
					deleteCurrentSelectedItem();
				}
				
			}
			
			@Override
			public void keyPressed(KeyEvent arg0) {
				// TODO Auto-generated method stub
				
			}
		});
		
		setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
		//setAutoResizeMode(AUTO_RESIZE_OFF);
		this.getTableHeader().setReorderingAllowed(false);
		this.setRowSorter(new EplTableRowSorter(model));
	}

	protected void deleteCurrentSelectedItem() {
		model.deleteData(getSelectedRow(), getSelectedColumn());
	}

	public void setParent(EPLCViewPanel parent) {
		this.parent = parent;
	}
	
	public EventListenerList getEventListenerList() {
		return parent.getEventListenerList(); 
	}
	
	
	/**
	 * 
	 * @author honza801
	 *
	 */
	private class AliasManagerTransferHandler extends TransferHandler {

		private static final long serialVersionUID = 1L;
		private AliasManagerTable table;
		private Logger log;

		public AliasManagerTransferHandler(AliasManagerTable aliasManagerTable) {
			this.table = aliasManagerTable;

			log = Logger.getLogger(this.getClass().getCanonicalName());
			log.setParent(Logger.getLogger(Logger.GLOBAL_LOGGER_NAME));
			log.setLevel(Level.ALL);
		}
		
		@Override
	    public boolean canImport(TransferSupport info) {
	    	if (!info.isDrop()) {
	    		return false;
	    	}

	    	try {
				Object data = info.getTransferable().getTransferData(
						new DataFlavor(EplTransferableData.TREE_TRANSFER_OBJECT));
				if (data instanceof MyBaseNodeInterfaceNode) {
					return true;
				}
			} catch (UnsupportedFlavorException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
	    	
	    	return false;
	    }
	    
		@Override
	    public boolean importData(TransferSupport info) {
			try {
				Object data = info.getTransferable().getTransferData(
						new DataFlavor(EplTransferableData.TREE_TRANSFER_OBJECT));
				if (data instanceof MyBaseNodeInterfaceNode) {
					log.finest("importData()");
					MyBaseNodeInterfaceNode node = (MyBaseNodeInterfaceNode) data;
					javax.swing.JTable.DropLocation dl = 
						(javax.swing.JTable.DropLocation) info.getDropLocation(); 
					table.setValueAt(node.getBaseNode(),
							dl.getRow(), dl.getColumn());
				}
				else {
					return false;
				}
			} catch (UnsupportedFlavorException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			
	    	return true;
	    }
		
	}
	
}
