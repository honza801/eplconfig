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

import java.awt.Color;
import java.awt.Component;
import java.awt.datatransfer.DataFlavor;
import java.awt.datatransfer.UnsupportedFlavorException;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.swing.JTable;
import javax.swing.ListSelectionModel;
import javax.swing.TransferHandler;
import javax.swing.event.EventListenerList;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.TableCellRenderer;
import javax.swing.table.TableColumn;

import cz.rexcontrols.epl.editor.gui.tree.MyBaseNodeInterfaceNode;

/**
 * 
 * @author honza801
 *
 */
public class ConnectionTable extends JTable {

	private static final long serialVersionUID = 1L;

	private ConnectionTableAbstractModel model;
	private EPLCViewPanel parent;
	
	/**
	 * Preferred column width
	 */
	private static final int PREFERRED_COLUMN_SIZE = 150;

	
	/**
	 * Constructor
	 * @param model
	 */
	public ConnectionTable(ConnectionTableAbstractModel model) {
		super(model);
		this.model = model;
		
		if (ConnectionTableModel.class.isInstance(model)) {
			((ConnectionTableModel) model).setConnectionTable(this);			
		}
		
		init();
		
		//this.setRowSorter(new TableRowSorter<TableModel>(model));
		this.setRowSorter(new EplTableRowSorter(model));
	}
	
	/**
	 * Set drag function, key listeners, mouse listeners.
	 */
	private void init() {
		setDragEnabled(true);
		setTransferHandler(new ConnectionTableTransferHandler(this));
		this.addKeyListener(new KeyListener() {
			
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
		
		this.addMouseListener(new MouseListener() {
			
			@Override
			public void mouseReleased(MouseEvent e) {
				// right click
				if (e.getButton() == MouseEvent.BUTTON3) {
					rightMouseClicked(e);
				}
			}
			
			@Override
			public void mousePressed(MouseEvent e) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void mouseExited(MouseEvent e) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void mouseEntered(MouseEvent e) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void mouseClicked(MouseEvent e) {
				// TODO Auto-generated method stub
				
			}
		});
		
		setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
		//setAutoResizeMode(AUTO_RESIZE_ALL_COLUMNS);
		if (getConnectionTableModel() != null) {
			setDefaultRenderer(model.getColumnClass(0), new ColorTableCellRenderer());
		} else if (getConnectionTableLargeMode() != null) {
			setDefaultRenderer(model.getColumnClass(0), new LargeColorTableCellRenderer());			
		}
		
		restorePreferredConnectionTableColumnsWidth();
		this.getTableHeader().setReorderingAllowed(false);
	}

	/**
	 * Handles right click on the table.
	 * @param e
	 */
	protected void rightMouseClicked(MouseEvent e) {
		new ConnectionTablePopupMenu(this, e);
	}

	/**
	 * Removes current selected item
	 */
	protected void deleteCurrentSelectedItem() {
		if (ConnectionTableModel.class.isInstance(model)) {
			((ConnectionTableModel)model).deleteData(
					getSelectedRow(), getSelectedColumn());			
		}
	}
	
	/**
	 * 
	 * @return {@link ConnectionTableModel} handled by this table
	 */
	public ConnectionTableModel getConnectionTableModel() {
		if (ConnectionTableModel.class.isInstance(model)) {
			return (ConnectionTableModel) model;
		}
		return null;
	}
	
	/**
	 * 
	 * @return {@link ConnectionTableLargeModel} handled by this table
	 */
	public ConnectionTableLargeModel getConnectionTableLargeMode() {
		if (ConnectionTableLargeModel.class.isInstance(model)) {
			return (ConnectionTableLargeModel) model;
		}
		return null;
	}
	
	/**
	 * Set parent component
	 * @param parent
	 */
	public void setParent(EPLCViewPanel parent) {
		this.parent = parent;
	}
	
	/**
	 * 
	 * @return event listener list inherited by parent
	 */
	public EventListenerList getEventListenerList() {
		return parent.getEventListenerList();
	}
	
	public void restorePreferredConnectionTableColumnsWidth() {
		// first column (id) is smaller
		getColumn(getColumnName(0)).setPreferredWidth(25);
		
		// other columns has PREFERRED_COLUMN_SIZE 
		for (int i = 1 ; i < this.getColumnCount(); i++) {
			TableColumn tc = getColumn(getColumnName(i));
			tc.setPreferredWidth(PREFERRED_COLUMN_SIZE);
		}
	}
	
	/**
	 * 
	 * @author honza801
	 *
	 */
	public class ColorTableCellRenderer implements TableCellRenderer {

		@Override
		public Component getTableCellRendererComponent(JTable table, Object value,
				boolean isSelected, boolean hasFocus, int row, int column) {
			Component comp = 
				new DefaultTableCellRenderer().getTableCellRendererComponent(
						table, value, isSelected, hasFocus, row, column);
			if (column == 3) {
				comp.setBackground(Color.GREEN);			
			} else if (column > 3) {
				comp.setBackground(Color.YELLOW);			
			}
			
			return comp;
		}

	}

	/**
	 * 
	 * @author honza801
	 *
	 */
	public class LargeColorTableCellRenderer implements TableCellRenderer {

		@Override
		public Component getTableCellRendererComponent(JTable table, Object value,
				boolean isSelected, boolean hasFocus, int row, int column) {
			Component comp = 
				new DefaultTableCellRenderer().getTableCellRendererComponent(
						table, value, isSelected, hasFocus, row, column);
			if (column > 0 && row < table.getModel().getRowCount()-1) {
				if (value.toString().startsWith("s:")) {
					comp.setBackground(Color.GREEN);				
				} else if (value.toString().startsWith("d:")){
					comp.setBackground(Color.YELLOW);
				}
			}
			return comp;
		}

	}

	/**
	 * 
	 * @author honza801
	 *
	 */
	public class ConnectionTableTransferHandler extends TransferHandler {

		private static final long serialVersionUID = 1L;
		
		private ConnectionTable table;
		private Logger log;

		/**
		 * Constructor
		 * @param model
		 */
		public ConnectionTableTransferHandler(ConnectionTable table) {
			this.table = table;
			
			log = Logger.getLogger(this.getClass().getCanonicalName());
			log.setParent(Logger.getLogger(Logger.GLOBAL_LOGGER_NAME));
			log.setLevel(Level.ALL);

		}

		@Override
	    public boolean canImport(TransferSupport info) {
	    	if (!info.isDrop()) {
	    		return false;
	    	}

    		return model.canImport(info);
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
