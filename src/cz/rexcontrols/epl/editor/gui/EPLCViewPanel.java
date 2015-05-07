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

import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Properties;
import java.util.logging.Logger;

import javax.swing.BorderFactory;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTabbedPane;
import javax.swing.event.EventListenerList;
import javax.swing.tree.TreeNode;

import cz.rexcontrols.epl.editor.AliasNodeManagerInterface;
import cz.rexcontrols.epl.editor.MappingManagerInterface;
import cz.rexcontrols.epl.editor.gui.tree.MyTree;
import cz.rexcontrols.epl.editor.gui.tree.TreeEvent;
import cz.rexcontrols.epl.editor.gui.tree.TreeEventListener;

/**
 * EPL Configurator Viev Panel
 * This panel checks for data source and displays several text fields and labels.
 * 
 * @author honza801
 *
 */
public class EPLCViewPanel extends JTabbedPane {

	private static final long serialVersionUID = 1L;
	protected EventListenerList evlist;
	private DetailPanel detailPanel;
	private JPanel aliasesTabPanel;
	private MappingManagerInterface mappingManager;
	
	private JPanel connectionsTablePanel;
	
	private Logger log;
	private JFrame parent;
	
	/**
	 * default constructor
	 */
	public EPLCViewPanel(EplConfiguratorFrame parent) {
		super();
		this.parent = parent;
		
		this.log = Logger.getLogger(Logger.GLOBAL_LOGGER_NAME);
		setListener(parent.getEventListenerList());
		
		detailPanel = new DetailPanel(new Properties(), parent.getEventListenerList());

		/*
		connectionsTabPanel = new JPanel();
		connectionsTabPanel.setLayout(new FlowLayout(FlowLayout.LEADING));
		*/
		
		aliasesTabPanel = new JPanel();
		aliasesTabPanel.setLayout(new BorderLayout());
		//aliasesTabPanel.setBorder(BorderFactory.createLineBorder(Color.GREEN));

		JPanel proptab = new JPanel();
		proptab.setLayout(new FlowLayout(FlowLayout.LEADING));
		proptab.add(detailPanel);
		
		connectionsTablePanel = new JPanel();
		connectionsTablePanel.setLayout(new BorderLayout());
		//connectionsTablePanel.setBorder(BorderFactory.createLineBorder(Color.RED));

		this.addTab("Properties", new JScrollPane(proptab));
		//this.addTab("Connections", new JScrollPane(connectionsTabPanel));
		this.addTab("Connections", new JScrollPane(connectionsTablePanel));
		this.addTab("Aliases", new JScrollPane(aliasesTabPanel));

	}

	public void initPanels(
			MappingManagerInterface mappingManager, 
			AliasNodeManagerInterface aliasManager) 
	{
		this.mappingManager = mappingManager;
		/*
		connectionManagerPanel = new ConnectionManagerPanel(this, mappingManager);
		connectionsTabPanel.removeAll();
		connectionsTabPanel.add(new JScrollPane(connectionManagerPanel));
		*/
		
		AliasTableModel aliasModel = new AliasTableModel(aliasManager);
		AliasManagerTable aliasTable = new AliasManagerTable(aliasModel);
		aliasTable.setParent(this);
		aliasesTabPanel.removeAll();
		aliasesTabPanel.add(aliasTable .getTableHeader(), BorderLayout.PAGE_START);
		aliasesTabPanel.add(aliasTable );

		initConnectionTable();
	}

	private void initLargeConnectionTable() {
		ConnectionTable connTable = new ConnectionTable(new ConnectionTableLargeModel(mappingManager));
		connTable.setParent(this);
		connectionsTablePanel.removeAll();
		JButton switchButton = new JButton("Switch to compact view");
		switchButton.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				initConnectionTable();
			}
		});
		connectionsTablePanel.add(switchButton, BorderLayout.PAGE_START);
		JPanel top = new JPanel(new BorderLayout());
		top.setBorder(BorderFactory.createCompoundBorder(
				BorderFactory.createEmptyBorder(5, 5, 5, 5),
				BorderFactory.createEmptyBorder()));
		connectionsTablePanel.add(top);
		top.add(connTable.getTableHeader(), BorderLayout.PAGE_START);
		top.add(connTable);
		repaintViewPanel();
	}
	
	private void initConnectionTable() {
		ConnectionTable connTable = new ConnectionTable(new ConnectionTableModel(mappingManager));
		connTable.setParent(this);
		connectionsTablePanel.removeAll();
		JButton switchButton = new JButton("Switch to large view");
		switchButton.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				initLargeConnectionTable();
			}
		});
		connectionsTablePanel.add(switchButton, BorderLayout.PAGE_START);
		JPanel top = new JPanel(new BorderLayout());
		top.setBorder(BorderFactory.createEmptyBorder(5, 5, 5, 5));
		connectionsTablePanel.add(top);
		top.add(connTable.getTableHeader(), BorderLayout.PAGE_START);
		top.add(connTable);
		repaintViewPanel();
	}	
	
	/**
	 * assign event listener and set the action
	 * @param evlist
	 */
	public void setListener(EventListenerList evlist) {
		this.evlist = evlist;
		evlist.add(TreeEventListener.class, new TreeEventListener() {
			public void treeEventOccured(TreeEvent e) {
				viewData(e.getSource());
			}
		});
	}

	/**
	 * called by eventlistener
	 * @param source
	 */
	public void viewData(Object source) {
		if (detailPanel.wasChanged()) {
			int answer = JOptionPane.showConfirmDialog(parent, 
					"Some properties were changed. Save changes?", 
					"Properties changed",
					JOptionPane.YES_NO_OPTION);
			if (answer == JOptionPane.YES_OPTION) {
				detailPanel.saveProperties();
			}
		}
		
		detailPanel.removeAll();
		if (source instanceof MyTree) {
			Object selected = ((MyTree)source).getLastSelectedPathComponent();
			if (selected == null) {
				// if jtree is collapsed, returns null
				log.fine("viewData(): null object provided!");
				return;
			}
			if (selected instanceof TreeNode) {
				detailPanel.displayTreeNode((TreeNode)selected);
			} else {
				log.fine("other:"+selected.getClass().getCanonicalName());
				String message = "viewData(): FIXME:: Unknown src (view data)";
				Properties props = new Properties();
				props.setProperty(selected.toString(), message);
				detailPanel.showData(props, false);
			}			
		} else {
			String message = "viewData(): FIXME:: Unknown src (src not tree)";
			Properties props = new Properties();
			props.setProperty(source.toString(), message);
			detailPanel.showData(props, false);
			log.fine(message);
		}
		//this.repaint();
	}
	
	public EventListenerList getEventListenerList() {
		return evlist;
	}
	
	/**
	 * focuses on the second tab
	 */
	public void switchToConnectionManager() {
		this.setSelectedIndex(1);
	}
	
	public void refreshView() {
		detailPanel.refreshView();
		connectionsTablePanel.repaint();
	}
	
	public void repaintViewPanel() {
		this.repaint();
	}
	
}
