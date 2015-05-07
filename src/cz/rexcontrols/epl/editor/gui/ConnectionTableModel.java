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
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.swing.JTable.DropLocation;
import javax.swing.TransferHandler.TransferSupport;
import javax.swing.event.EventListenerList;

import cz.rexcontrols.epl.editor.BaseNodeInterface;
import cz.rexcontrols.epl.editor.DomainNodeInterface;
import cz.rexcontrols.epl.editor.EplIndex;
import cz.rexcontrols.epl.editor.EplObject;
import cz.rexcontrols.epl.editor.MappingInterface;
import cz.rexcontrols.epl.editor.MappingManagerInterface;
import cz.rexcontrols.epl.editor.gui.tree.MyBaseNodeInterfaceNode;

/**
 * 
 * @author Roman Pisl
 * @author Jan Krcmar
 *
 */
public class ConnectionTableModel extends ConnectionTableAbstractModel {

	private static final long serialVersionUID = 1L;

	private static final int dsa = 4; 
	
	private Logger log;
	
	/**
	 * Constructor
	 * @param manager
	 */
	public ConnectionTableModel(MappingManagerInterface manager) {
		setManager(manager);
		
		log = Logger.getLogger(this.getClass().getCanonicalName());
		log.setParent(Logger.getLogger(Logger.GLOBAL_LOGGER_NAME));
		log.setLevel(Level.FINEST);
		
	}
	
	/**
	 * 
	 * @return maximum destinations for all connections
	 */
	protected int getMaxDestinations() {
		int max = 0;
		
		for (MappingInterface mi : getManager().getMappingList()) {
			if (mi.getDestination().size() > max) {
				max = mi.getDestination().size();
			}
		}
		
		return max;
	}

	@Override
	public int getColumnCount() {
		return getMaxDestinations() + dsa + 1;
	}
	
	@Override
	public String getColumnName(int col) {
		switch (col) {
		case 0: return "";
		case 1: return "Description";
		case 2: return "Type";
		case 3: return "Source";
		default: 
			return "Destination " + Integer.toString(col - dsa + 1);
		}
	}

	@Override
	public int getRowCount() {
		// we have to add 1, because of the last empty 
		// line which is used for adding new mappings
		return getManager().getMappingCount() + 1;
	}

	@Override
	public Object getValueAt(int row, int column) {
		if (row >= getManager().getMappingCount()) {
			return null;
		}
		MappingInterface mi = getManager().getMappingAt(row);
	
		switch (column) {
		case 0:
			return row;
		case 1: 
			return mi.getMappingName();
		case 2:
			BaseNodeInterface bni = mi.getFirstSource();
			if (EplObject.class.isInstance(bni)) {
				EplObject eo = (EplObject)bni;
				if (eo.getDataType() != null) {
					return eo.getDataType().name();
				}
			} else if (DomainNodeInterface.class.isInstance(bni)) {
				DomainNodeInterface eo = (DomainNodeInterface)bni;
				if (eo.getDataType() != null) {
					return eo.getDataType().name();
				}
			}
			return "";
		case 3: 
			return mi.sourceToString(); 
		default: 
			if (column - dsa + 1 > mi.getDestination().size()) {
				return null;
			}
			BaseNodeInterface bni2 = mi.getDestination().get(column - dsa);
			return bni2.toFullString(); 
		}
	}

	/**
	 * 
	 * @return mapping manager
	 */
	public MappingManagerInterface getMappingManager() {
		return getManager();
	}
	
	/**
	 * Removes Data at the specified position.
	 * @param row
	 * @param column
	 */
	public void deleteData(int row, int column) {
		log.finest("delete data (" + row + "," + column + ")");
		if (row < 0 || row >= getManager().getMappingCount()) {
			return;
		}

		switch (column) {
		case 0:
		case 1:
			removeConnectionMappingAt(row);
			break;
		case 2:
			return;
		case 3: 
			removeSource(row, column);
			break;
		default: 
			removeDestination(row, column);
		}

		// set previous selected row after repaint
		getConnectionTable().setRowSelectionInterval(row, row);
		fireConnectionChangedEvent();
	}
	
	/**
	 * Executes fireTableStructureChanged() and sets new preferred size for columns.
	 */
	private void tableModelStructureChanged() {
		fireTableStructureChanged();
		getConnectionTable().restorePreferredConnectionTableColumnsWidth();
	}
	
	@Override
	public boolean isCellEditable(int rowIndex, int columnIndex) {
		switch (columnIndex) {
		//case 0:
		case 1:
			return true;
		default: 
			return false;
		}
	}
	
	@Override
	public void setValueAt(Object value, int row, int column) {
		
        log.finest("setValue:: import data: " + value);
        MappingInterface mi;
		if (row >= getManager().getMappingCount()) {
			mi = addNewConnectionMapping();
			fireTableRowsInserted(row, row);
		}
		else {
			mi = getManager().getMappingAt(row);			
		}
		
		if (BaseNodeInterface.class.isInstance(value)) {
			BaseNodeInterface node = (BaseNodeInterface) value;
			switch (column) {
			case 0:
			case 1:
			case 2: 
			case 3: 
				mi.addSource(node);
				break;
			default: 
				if (column - dsa + 1 > mi.getDestination().size()) {
					mi.addDestination(node);
				}
				else {
					mi.removeDestination(column - dsa);
					mi.addDestination(column - dsa, node);
				}
			}
			fireTableDataChanged();
		}
		else {
    		log.finest("set value (" + row + "," + column + ")");
			switch (column) {
			case 1:
	    		mi.setMappingName(value.toString());
	    		break;
			}
    		fireTableCellUpdated(row, column);
		}
		
		fireConnectionChangedEvent();
    }
	
	/**
	 * Adds new connection mapping
	 */
	public MappingInterface addNewConnectionMapping() {
		log.fine("add new connection mapping");
		return getManager().addMapping();
	}
	
	/**
	 * Remove connection mapping specified by parameter
	 * @param row
	 */
	public void removeConnectionMappingAt(int row) {
		getManager().removeMappingAt(row);
		tableModelStructureChanged();
	}
	
	/**
	 * Remove destination specified by parameter
	 * @param row
	 * @param column
	 */
	public void removeDestination(int row, int column) {
		MappingInterface mi = getManager().getMappingAt(row);
		if (column - dsa + 1 > mi.getDestination().size()) {
			return;
		}
		else {
			mi.removeDestination(column - dsa);
		}
		tableModelStructureChanged();
	}
	
	/**
	 * Remove Source specified by parameter
	 * @param row
	 * @param column
	 */
	public void removeSource(int row, int column) {
		MappingInterface mi = getManager().getMappingAt(row);
		mi.addSource(new EplIndex(""));
		fireTableCellUpdated(row, column);
		fireTableCellUpdated(row, column-1);
	}

	/**
	 * Fires connection changed event
	 */
	public void fireConnectionChangedEvent() {
		EventListenerList evlist = getConnectionTable().getEventListenerList(); 
		for (int i=0; i<2*evlist.getListenerCount(); i+=2) {
			if (evlist.getListenerList()[i] == EplFrameEventListener.class) {
				((EplFrameEventListener)evlist.getListenerList()[i+1])
				.projectChangedEvent(true);
			}
		}
	}
	
	@Override
	public boolean canImport(TransferSupport info) {
    	try {
			Object data = info.getTransferable().getTransferData(
					new DataFlavor(EplTransferableData.TREE_TRANSFER_OBJECT));
			if (data instanceof MyBaseNodeInterfaceNode) {
				BaseNodeInterface node = ((MyBaseNodeInterfaceNode)data).getBaseNode();
				DropLocation location = (DropLocation) info.getDropLocation();
				switch (location.getColumn()) {
				case 0:
				case 1:
				case 2: 
				case 3:
					if (node instanceof EplObject) {
						return 
						((EplObject) node).getAccessType().isReadable() &&
						node.getPDO().canBeSource();
					}
					else {
						return true;
					}
				default: 
					if (node instanceof EplObject) {
						return 
						((EplObject) node).getAccessType().isWritable() &&
						node.getPDO().canBeDestination();
					}
					else {
						return true;
					}
				}
			}
			
			return false;
		} catch (UnsupportedFlavorException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
    	
    	return false;
	}


}
