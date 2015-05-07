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

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseEvent;

import javax.swing.JMenuItem;
import javax.swing.JPopupMenu;

/**
 * 
 * @author honza801
 *
 */
public class ConnectionTablePopupMenu extends JPopupMenu {

	private static final long serialVersionUID = 1L;

	private ConnectionTable table;
	private MouseEvent e;
	
	private JMenuItem addConnectionItem;
	private JMenuItem removeConnectionItem;
	private JMenuItem removeSourceItem;	
	private JMenuItem removeDestinationItem;
	
	/**
	 * Constructor
	 * @param parent
	 * @param e
	 */
	public ConnectionTablePopupMenu(ConnectionTable parent, MouseEvent e) {
		this.table = parent;
		this.e = e;
		
		init();
		show(parent, e.getX(), e.getY());
	}


	private void init() {
		addConnectionItem = new JMenuItem("Add connection");
		addConnectionItem.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				table.getConnectionTableModel().addNewConnectionMapping();
			}
		});
		this.add(addConnectionItem);
		
		removeConnectionItem = new JMenuItem("Remove connection");
		removeConnectionItem.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				table.getConnectionTableModel().removeConnectionMappingAt(getRow());
			}
		});
		this.add(removeConnectionItem);

		if (getColumn() > 2) {
			removeDestinationItem = new JMenuItem("Remove destination");
			removeDestinationItem.addActionListener(new ActionListener() {
				
				@Override
				public void actionPerformed(ActionEvent e) {
					table.getConnectionTableModel().removeDestination(getRow(), getColumn());
				}
			});
			this.add(removeDestinationItem);
		} else if (getColumn() == 2) {
			removeSourceItem = new JMenuItem("Remove source");
			removeSourceItem.addActionListener(new ActionListener() {
				
				@Override
				public void actionPerformed(ActionEvent e) {
					table.getConnectionTableModel().removeSource(getRow(), getColumn());
				}
			});
			this.add(removeSourceItem);
		}
		
	}
	
	/**
	 * 
	 * @return Clicked column
	 */
	private int getColumn() {
		return table.columnAtPoint(e.getPoint());
	}
	
	/**
	 * 
	 * @return Clicked row
	 */
	private int getRow() {
		return table.rowAtPoint(e.getPoint());
	}

}
