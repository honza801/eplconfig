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

import java.util.logging.Level;
import java.util.logging.Logger;

import javax.swing.event.EventListenerList;
import javax.swing.table.AbstractTableModel;

import cz.rexcontrols.epl.editor.AliasNodeManagerInterface;
import cz.rexcontrols.epl.editor.BaseNodeInterface;

/**
 * 
 * @author honza801
 *
 */
public class AliasTableModel extends AbstractTableModel {

	private static final long serialVersionUID = 1L;

	private AliasManagerTable table;
	private AliasNodeManagerInterface manager;
	
	private Logger log;
	
	/**
	 * Constructor
	 * @param manager
	 */
	public AliasTableModel(AliasNodeManagerInterface manager) {
		this.manager = manager;
		
		log = Logger.getLogger(this.getClass().getCanonicalName());
		log.setParent(Logger.getLogger(Logger.GLOBAL_LOGGER_NAME));
		log.setLevel(Level.ALL);
		
	}
	
	@Override
	public int getColumnCount() {
		// id | name | node
		return 3;
	}

	@Override
	public int getRowCount() {
		return manager.getAliasesCount() + 1;
	}

	@Override
	public String getColumnName(int col) {
		switch (col) {
		case 0:
			return "Id";
		case 1:
			return "Name";
		case 2:
			return "Destination";
		default:
			return null;
		}
	}
	
	@Override
	public Object getValueAt(int row, int column) {
		if (row >= manager.getAliasesCount()) {
			return null;
		}
		switch (column) {
		case 0:
			return row;
		case 1:
			return manager.getAliasAt(row).getLabel();
		case 2:
			return manager.getAliasNodeAt(row).toFullString();
		}
		return null;
	}
	
	/**
	 * Removes Data at the specified position.
	 * @param row
	 * @param column
	 */
	public void deleteData(int row, int column) {
		log.finest("delete data (" + row + "," + column + ")");
		if (row < 0 || row >= manager.getAliasesCount()) {
			return;
		}
		manager.removeAlias(row);
		tableModelStructureChanged();
		
		fireConnectionChangedEvent();
	}
	
	@Override
	public void setValueAt(Object value, int row, int column) {
		if (row >= manager.getAliasesCount()) {
			manager.addNewAlias();
			tableModelStructureChanged();
		}
		
		if (BaseNodeInterface.class.isInstance(value)) {
			BaseNodeInterface node = (BaseNodeInterface) value;
			manager.setAliasDestination(row, node);
			fireTableRowsUpdated(row, row);
		}
		else {
			if (column == 1) {
				manager.setAliasLabel(row, value.toString());
			}
		}
		
		fireConnectionChangedEvent();
	}

	/**
	 * Executes fireTableStructureChanged() and sets new preferred size for columns.
	 */
	private void tableModelStructureChanged() {
		// save column widths before table update
		int[] width = new int[] {
				table.getColumn(getColumnName(0)).getWidth(),
				table.getColumn(getColumnName(1)).getWidth(),
				table.getColumn(getColumnName(2)).getWidth(),				
		};

		// update table
		this.fireTableStructureChanged();
		
		// restore column widths
		table.getColumn(getColumnName(0)).setPreferredWidth(width[0]);
		table.getColumn(getColumnName(1)).setPreferredWidth(width[1]);
		table.getColumn(getColumnName(2)).setPreferredWidth(width[2]);
		
	}
	
	/**
	 * 
	 * @param table
	 */
	public void setTable(AliasManagerTable table) {
		this.table = table;
	}
	
	/**
	 * Fires connection changed event
	 */
	public void fireConnectionChangedEvent() {
		EventListenerList evlist = table.getEventListenerList(); 
		for (int i=0; i<2*evlist.getListenerCount(); i+=2) {
			if (evlist.getListenerList()[i] == EplFrameEventListener.class) {
				((EplFrameEventListener)evlist.getListenerList()[i+1])
				.projectChangedEvent(true);
			}
		}
	}

	
	@Override
	public boolean isCellEditable(int rowIndex, int columnIndex) {
		if (columnIndex == 1) {
			return true;
		}
		return false;
	}

}
