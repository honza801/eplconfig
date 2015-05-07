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

import javax.swing.TransferHandler.TransferSupport;
import javax.swing.event.EventListenerList;

import cz.rexcontrols.epl.editor.BaseNodeInterface;
import cz.rexcontrols.epl.editor.DomainNodeInterface;
import cz.rexcontrols.epl.editor.EplObject;
import cz.rexcontrols.epl.editor.MappingInterface;
import cz.rexcontrols.epl.editor.MappingManagerInterface;
import cz.rexcontrols.epl.editor.gui.tree.MyBaseNodeInterfaceNode;

/**
 * 
 * @author honza801
 *
 */
public class ConnectionTableLargeModel extends ConnectionTableAbstractModel {

	private static final long serialVersionUID = 1L;
	private Logger log;
	
	/**
	 * Constructor
	 * @param manager
	 */
	public ConnectionTableLargeModel(MappingManagerInterface manager) {
		setManager(manager);
		
		log = Logger.getLogger(this.getClass().getCanonicalName());
		log.setParent(Logger.getLogger(Logger.GLOBAL_LOGGER_NAME));
		log.setLevel(Level.FINEST);
	}
	
	@Override
	public int getColumnCount() {
		return 	getNodes().size() + 3;
	}

	@Override
	public int getRowCount() {
		return getManager().getMappingCount()+1;
	}

	@Override
	public Object getValueAt(int rowIndex, int columnIndex) {
		if (rowIndex >= getManager().getMappingCount()) {
			return null;
		}
		MappingInterface mi = getManager().getMappingAt(rowIndex);
		
		switch (columnIndex) {
		case 0:	return rowIndex;
		case 1:	return mi.getMappingName();
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
		default:
			if (mi.getFirstSource() != null &&
					mi.getFirstSource().getParentProfile().getProfileId() == 
						getNodes().get(columnIndex-3).getProfileId()) {
				return "s: " + mi.getFirstSource().toFullString();
			} else 	{
				for (BaseNodeInterface dst : mi.getDestination()) {
					if (dst.getParentProfile().getProfileId() == 
						getNodes().get(columnIndex-3).getProfileId()) {
						return "d: " + dst.toFullString();
					}					
				}
			}

		}
		
		return "";
	}

	@Override
	public void setValueAt(Object value, int row, int column) {
		log.finest("setValue :: import data: " + value);
		MappingInterface mi;
		if (row >= getManager().getMappingCount()) {
			mi = getManager().addMapping();
			fireTableRowsInserted(row, row);
		}
		else {
			mi = getManager().getMappingAt(row);
		}
		
		if (value instanceof BaseNodeInterface) {
			BaseNodeInterface node = (BaseNodeInterface) value;
			if (node.getPDO().canBeSource()) {
				mi.addSource(node);
			}
			else if (node.getPDO().canBeDestination()){
				mi.addDestination(node);
			}
			fireTableRowsUpdated(row, row);
		}
		else {
			switch (column) {
			case 1:
				mi.setMappingName(value.toString());
			}
			fireTableCellUpdated(row, column);
		}
		
		fireConnectionChangedEvent();
	}
	
	@Override
    public String getColumnName(int columnIndex) {
    	switch (columnIndex) {
    	case 0: return "";
    	case 1:	return "Connection";
    	case 2: return "Type";
    	default:
    		if (columnIndex - 3 < getNodes().size()) {
        		return getNodes().get(columnIndex-3).toString();
    		}
    	}
    	return "";
    }
	
	@Override
	public boolean isCellEditable(int rowIndex, int columnIndex) {
		switch (columnIndex) {
		case 1: 
			return true;
		default:
			return false;
		}
	}

	@Override
	public boolean canImport(TransferSupport info) {
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

	
}
