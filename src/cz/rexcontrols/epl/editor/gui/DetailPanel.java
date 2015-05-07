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
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.swing.AbstractButton;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.SpringLayout;
import javax.swing.event.EventListenerList;
import javax.swing.tree.DefaultMutableTreeNode;
import javax.swing.tree.TreeNode;

import cz.rexcontrols.epl.editor.AccessType;
import cz.rexcontrols.epl.editor.BaseNodeInterface;
import cz.rexcontrols.epl.editor.DataType;
import cz.rexcontrols.epl.editor.DomainNodeInterface;
import cz.rexcontrols.epl.editor.EplIndex;
import cz.rexcontrols.epl.editor.EplNode;
import cz.rexcontrols.epl.editor.EplObject;
import cz.rexcontrols.epl.editor.EplProject;
import cz.rexcontrols.epl.editor.EplPropertyType;
import cz.rexcontrols.epl.editor.EplSubindex;
import cz.rexcontrols.epl.editor.ObjectType;
import cz.rexcontrols.epl.editor.PDOMappingType;
import cz.rexcontrols.epl.editor.ProfileInterface;
import cz.rexcontrols.epl.editor.RootNodeInterface;
import cz.rexcontrols.epl.editor.gui.tree.MyBaseNodeInterfaceNode;
import cz.rexcontrols.epl.editor.gui.tree.MyProfileNode;
import cz.rexcontrols.epl.editor.gui.tree.MyProjectNode;
import cz.rexcontrols.epl.editor.gui.tree.MyRootNode;
import cz.rexcontrols.epl.editor.gui.tree.TreePopupEvent;
import cz.rexcontrols.epl.editor.gui.tree.TreePopupEventListener;

/**
 * Displays data in multiple rows/columns.
 * 
 * @author honza801
 */
public class DetailPanel extends JPanel {

	private static final long serialVersionUID = 1L;
	
	private boolean changed;
	private Properties props;
	private Logger log;
	private EventListenerList evlist;

	private DetailShowing currentView;
	private TreeNode currentTreeNode;
	
	private BaseNodeInterface baseNodeInterface;
	private EplProject project;
	private ProfileInterface profileNode;
	private RootNodeInterface rootNode;
	
	private JComboBox dataTypeComboBox;
	//private JComboBox domainDataTypeComboBox;
	private JComboBox accessTypeComboBox;
	private JComboBox objectTypeComboBox;
	private JComboBox subObjectTypeComboBox;
	private JComboBox PDOMappingTypeComboBox;
	
	private JButton fillProjectTimestampButton;

	/**
	 * Every object has a number of properties and a number of non-standard properties.
	 * This value is supposed to carry the number of non-standard properties.   
	 */
	private int dynamicRowCount;
	
	/**
	 * Constructor
	 * @param data - rows/cols to display.
	 */
	public DetailPanel(Properties props, EventListenerList evlist) {
		super();
		this.setLayout(new SpringLayout());
		this.evlist = evlist;
		log = Logger.getLogger(this.getClass().getCanonicalName());
		log.setParent(Logger.getLogger(Logger.GLOBAL_LOGGER_NAME));
		log.setLevel(Level.FINEST);
		//this.setBorder(BorderFactory.createLineBorder(Color.blue));
		setChanged(false);
		this.dynamicRowCount = 0;
		
		this.dataTypeComboBox = new JComboBox(getDataTypeModel());
		//this.domainDataTypeComboBox = new JComboBox(getDomainDataTypeModel());
		this.accessTypeComboBox = new JComboBox(getAccessTypeModel());
		this.objectTypeComboBox = new JComboBox(getObjectTypeModel());
		this.subObjectTypeComboBox = new JComboBox(getSubObjectTypeModel());
		this.PDOMappingTypeComboBox = new JComboBox(getPDOMappingModel());
		this.currentTreeNode = new DefaultMutableTreeNode("dumb");
		
		showData(props, false);
	}

	/**
	 * Generates DefaultComboBoxModel from {@link DataType} 
	 * @return 
	 */
	private DefaultComboBoxModel getDataTypeModel() {
		DefaultComboBoxModel model = new DefaultComboBoxModel();
		for (DataType dt : DataType.values()) {
			model.addElement(dt.name());
		}
		return model;
	}

	/*
	 * Generates DefaultComboBoxModel from {@link DomainDataType} 
	 * @return 
	 */
	/*
	private DefaultComboBoxModel getDomainDataTypeModel() {
		DefaultComboBoxModel model = new DefaultComboBoxModel();
		for (DomainDataType dt : DomainDataType.values()) {
			model.addElement(dt.name());
		}
		return model;
	}
	*/
	
	/**
	 * Generates DefaultComboBoxModel from {@link AccessType} 
	 * @return 
	 */
	private DefaultComboBoxModel getAccessTypeModel() {
		DefaultComboBoxModel model = new DefaultComboBoxModel();
		for (AccessType at : AccessType.values()) {
			model.addElement(at.name());
		}
		return model;		
	}
	
	/**
	 * Generates DefaultComboBoxModel from {@link ObjectType} 
	 * @return 
	 */
	private DefaultComboBoxModel getObjectTypeModel() {
		DefaultComboBoxModel model = new DefaultComboBoxModel();
		for (ObjectType ot : ObjectType.values()) {
			model.addElement(ot);
		}
		return model;				
	}

	/**
	 * Generates DefaultComboBoxModel from {@link PDOMappingType} 
	 * @return 
	 */
	private DefaultComboBoxModel getPDOMappingModel() {
		DefaultComboBoxModel model = new DefaultComboBoxModel();
		for (PDOMappingType ot : PDOMappingType.values()) {
			model.addElement(ot);
		}
		return model;				
	}

	/**
	 * Generates DefaultComboBoxModel from {@link ObjectType} 
	 * @return 
	 */
	private DefaultComboBoxModel getSubObjectTypeModel() {
		DefaultComboBoxModel model = new DefaultComboBoxModel();
		model.addElement(ObjectType.DEFTYPE);
		model.addElement(ObjectType.DOMAIN);
		model.addElement(ObjectType.VAR);
		return model;				
	}

	public void displayTreeNode(TreeNode node) {
		if (node instanceof MyProjectNode) {
			showData(((MyProjectNode)node).getProject());
		}
		else if (node instanceof MyProfileNode) {
			showData(((MyProfileNode)node).getProfile());
		}
		else if (node instanceof MyRootNode) {
			showData(((MyRootNode)node).getRootNode());
		}
		else if (node instanceof MyBaseNodeInterfaceNode) {
			BaseNodeInterface bni = ((MyBaseNodeInterfaceNode) node).getBaseNode();
			if (bni instanceof EplObject) {
				showData((EplObject) bni);
			}
			else if (bni instanceof DomainNodeInterface) {
				showData((DomainNodeInterface) bni);
			}
		}
	}
	
	/**
	 * Shows parameters of {@link EplProject}
	 * @param project
	 */
	public void showData(EplProject project) {
		this.removeAll();
		this.project = project;
		this.props = project.getProperties();
		this.currentView = DetailShowing.EPL_PROJECT;
		
		dynamicRowCount = 0;
		setChanged(false);
		log.finest("setting local project properties");
		for (String key : props.stringPropertyNames()) {
			addLine(key, 
					props.getProperty(key), 
					EplPropertyType.getEnum(key).isProjectEditable());
		}		

		//addFillTimestampButton();
		setTableDimension(2, getNumberOfRows());
	}

	/**
	 * Shows parameters of {@link EplNode}
	 * @param node
	 */
	public void showData(ProfileInterface node) {
		this.profileNode = node;
		this.currentView = DetailShowing.EPL_PROFILE;
		showData(node.getViewProperties(), false);
		addIsRexCheckBox();
		setTableDimension(2, getNumberOfRows());
	}
	
	/**
	 * Shows parameters of {@link RootNodeInterface}
	 * @param n
	 */
	public void showData(RootNodeInterface node) {
		this.rootNode = node;
		this.currentView = DetailShowing.ROOTNODEINTERFACE;
		showRootNodeData(node.getProperties());
		setTableDimension(2, getNumberOfRows());
	}

	/**
	 * Shows parameters of {@link BaseNodeInterface}
	 * @param o
	 */
	public void showData(EplObject o) {
		this.baseNodeInterface = o;
		this.currentView = DetailShowing.BASENODEINTERFACE;
		this.removeAll();
		showBaseNodeData(o);
		setTableDimension(2, getNumberOfRows());
	}

	/**
	 * Shows parameters of {@link DomainNodeInterface}
	 * @param o
	 */
	public void showData(DomainNodeInterface o) {
		this.baseNodeInterface = o;
		this.currentView = DetailShowing.BASENODEINTERFACE;
		this.removeAll();
		showDomainNodeData(o);
		setTableDimension(2, getNumberOfRows());
	}
	
	/**
	 * Base data view functions. Displays data in nice lines.
	 * @param props Data to display.
	 * @param editable Set if the fields should be editable.
	 */
	public void showData(Properties props, boolean editable) {
		this.props = props;
		dynamicRowCount = 0;
		setChanged(false);
		log.finest("setting local properties");
		for (String key : props.stringPropertyNames()) {
			addLine(key, props.getProperty(key), editable);
		}
	}

	/**
	 * Base data view functions. Displays data in nice lines.
	 * @param props Data to display.
	 */
	public void showRootNodeData(Properties props) {
		this.props = props;
		dynamicRowCount = 0;
		setChanged(false);
		log.finest("setting root node properties");
		for (String key : props.stringPropertyNames()) {
			addLine(key, props.getProperty(key), EplPropertyType.getEnum(key).isRootNodeEditable());
		}
	}

	/**
	 * Shows data of {@link BaseNodeInterface}
	 * @param bni
	 */
	private void showBaseNodeData(EplObject bni) {
		this.props = bni.getProperties();
		this.dynamicRowCount = 0;
		setChanged(false);
		log.finest("setting local properties: " + props.stringPropertyNames());
		for (String key : props.stringPropertyNames()) {
			EplPropertyType ptype = EplPropertyType.getEnum(key); 
			addLine(
					key, 
					props.getProperty(key), 
					ptype.isEditableByObject(bni.getObjectType()));
		}
		if (!bni.getObjectType().isComplexType()) {
			addPDOMappingTypeComboBox();
			addDataTypeComboBox();
			addAccessTypeComboBox();
		}
		else if (bni.getObjectType() == ObjectType.ARRAY) {
			addDataTypeComboBox();			
		}
		//addIsUserObject();
		addObjectTypeComboBox();
		addIsExportable();
	}
	
	/**
	 * Show data of {@link DomainNodeInterface}
	 * @param bni
	 */
	private void showDomainNodeData(DomainNodeInterface bni) {
		this.props = bni.getProperties();
		this.dynamicRowCount = 0;
		setChanged(false);
		log.finest("setting local properties: " + props.stringPropertyNames());
		for (String key : props.stringPropertyNames()) {
			EplPropertyType ptype = EplPropertyType.getEnum(key); 
			addLine(
					key, 
					props.getProperty(key), 
					ptype.isDomainEditable());
		}
		//addDomainDataTypeComboBox();
	}
	
	/**
	 * Adds line to the view
	 * @param label
	 * @param text
	 * @param editable - is the field editable
	 */
	private void addLine(String label, String text, boolean editable) {
		final JLabel l = new JLabel();
		this.add(l);
		l.setText(label);
		final JTextField t = new JTextField(30);
		this.add(t);
		t.setText(text);
		t.setCaretPosition(0);
		t.setEditable(editable);
		t.addKeyListener(new KeyListener() {
			@Override
			public void keyTyped(KeyEvent arg0) {
			}
			@Override
			public void keyReleased(KeyEvent arg0) {
				if (arg0.getKeyCode() == KeyEvent.VK_ENTER) {
					saveProperties();
				}
				else {
					setProperty(l.getText(), t.getText());
					setChanged(true);					
				}
			}
			@Override
			public void keyPressed(KeyEvent arg0) {
			}
		});
	}
	
	/**
	 * Creates new checkbox and puts it to the panel.
	 */
	private void addIsRexCheckBox() {
		final JLabel l = new JLabel();
		this.add(l);
		l.setText("Rex profile");
		JCheckBox isRexCheckBox = new JCheckBox();
		this.add(isRexCheckBox);
		isRexCheckBox.setSelected(profileNode.isRexNode());
		isRexCheckBox.addItemListener(new ItemListener() {
			@Override
			public void itemStateChanged(ItemEvent e) {
				AbstractButton abs = (AbstractButton)e.getSource();
				profileNode.setRexNode(abs.getModel().isSelected());
			}
		});
		dynamicRowCount++;
	}
	
	/**
	 * Creates new checkbox and puts it to the panel.
	 */
	private void addIsExportable() {
		JLabel l = new JLabel();
		this.add(l);
		l.setText("Is exportable");
		JCheckBox isExportableCheckBox = new JCheckBox();
		this.add(isExportableCheckBox);
		isExportableCheckBox.setSelected(baseNodeInterface.isExportable());
		isExportableCheckBox.addItemListener(new ItemListener() {
			@Override
			public void itemStateChanged(ItemEvent e) {
				AbstractButton abs = (AbstractButton)e.getSource();
				baseNodeInterface.setExportable(abs.getModel().isSelected());
			}
		});
		dynamicRowCount++;
	}
	
	/**
	 * Creates {@link DataType} combo box and puts it to the panel.
	 */
	private void addDataTypeComboBox() {
		while (dataTypeComboBox.getActionListeners().length > 0) {
			dataTypeComboBox.removeActionListener(dataTypeComboBox.getActionListeners()[0]);			
		}
		
		EplObject eo = (EplObject) baseNodeInterface;
		
		JLabel l = new JLabel();
		this.add(l);
		l.setText("Data type");
		this.add(dataTypeComboBox);
		
		if (eo.getDataType() != null) {
			dataTypeComboBox.setSelectedItem(eo.getDataType().name());
		}
		else {
			dataTypeComboBox.setSelectedIndex(0);
		}
		
		dataTypeComboBox.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				JComboBox cbox = (JComboBox) e.getSource();
				DataType newType = DataType.getEnum((String)cbox.getSelectedItem());
				((EplObject) baseNodeInterface).setDataType(newType);
				log.finer("Updating data type on "+e.getActionCommand() + 
						" to " + newType.toString());
			}
		});
		
		dynamicRowCount++;
	}

	/*
	 * Creates {@link DomainDataType} combo box and puts it to the panel.
	 */
	/*
	private void addDomainDataTypeComboBox() {
		while (domainDataTypeComboBox.getActionListeners().length > 0) {
			domainDataTypeComboBox.removeActionListener(domainDataTypeComboBox.getActionListeners()[0]);
		}
		
		DomainNodeInterface di = (DomainNodeInterface) baseNodeInterface;
		
		JLabel l = new JLabel();
		this.add(l);
		l.setText("Data type");
		this.add(domainDataTypeComboBox);
		
		if (di.getDataType() != null) {
			domainDataTypeComboBox.setSelectedItem(di.getDataType().name());
		}
		else {
			domainDataTypeComboBox.setSelectedIndex(0);
		}
		
		domainDataTypeComboBox.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				JComboBox cbox = (JComboBox) e.getSource();
				DomainDataType newType = DomainDataType.getEnum((String)cbox.getSelectedItem());
				((DomainNodeInterface) baseNodeInterface).setDataType(newType);
				log.finer("Updating data type on "+e.getActionCommand() + 
						" to " + newType.toString());
			}
		});
		
		dynamicRowCount++;
	}
	*/
	
	/**
	 * Creates {@link AccessType} combo box and puts it to the panel.
	 */
	private void addAccessTypeComboBox() {
		while (accessTypeComboBox.getActionListeners().length > 0) {
			accessTypeComboBox.removeActionListener(accessTypeComboBox.getActionListeners()[0]);
		}

		EplObject eo = (EplObject) baseNodeInterface;

		JLabel l = new JLabel();
		this.add(l);
		l.setText("Access type");
		this.add(accessTypeComboBox);
		
		if (eo.getAccessType() != null) {
			accessTypeComboBox.setSelectedItem(eo.getAccessType().name());
		}
		else {
			accessTypeComboBox.setSelectedIndex(0);
		}
		accessTypeComboBox.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				JComboBox cbox = (JComboBox) e.getSource();
				AccessType newType = AccessType.getEnumByName((String)cbox.getSelectedItem());
				((EplObject) baseNodeInterface).setAccessType(newType);
				log.finer("Updating access type to " + newType.toString());
			}
		});
		dynamicRowCount++;		
	}

	/**
	 * Creates {@link ObjectType} combo box and puts it to the panel.
	 */
	private void addObjectTypeComboBox() {
		JLabel l = new JLabel();
		this.add(l);
		l.setText("Object type");
		
		EplObject eo = (EplObject) baseNodeInterface;
		
		if (EplIndex.class.isInstance(baseNodeInterface)) {
			this.add(objectTypeComboBox);
			while (objectTypeComboBox.getActionListeners().length > 0) {
				objectTypeComboBox.removeActionListener(objectTypeComboBox.getActionListeners()[0]);
			}
			if (eo.getObjectType() != null) {
				objectTypeComboBox.setSelectedItem(eo.getObjectType());
			}
			else {
				objectTypeComboBox.setSelectedIndex(0);
			}
			objectTypeComboBox.addActionListener(new ActionListener() {
				@Override
				public void actionPerformed(ActionEvent e) {
					JComboBox cbox = (JComboBox) e.getSource();
					ObjectType newType = (ObjectType) cbox.getSelectedItem();
					((EplObject) baseNodeInterface).setObjectType(newType);
					if (newType.isComplexType()) {
						setNumberOfEntries((EplIndex) baseNodeInterface);
					}
					refreshView();
					log.finer("Updating object type to " + newType.toString());
				}
			});
		} else if (EplSubindex.class.isInstance(baseNodeInterface)) {
			this.add(subObjectTypeComboBox);			
			while (subObjectTypeComboBox.getActionListeners().length > 0) {
				subObjectTypeComboBox.removeActionListener(subObjectTypeComboBox.getActionListeners()[0]);
			}
			if (eo.getObjectType() != null) {
				subObjectTypeComboBox.setSelectedItem(eo.getObjectType());
			}
			else {
				subObjectTypeComboBox.setSelectedIndex(0);
			}
			subObjectTypeComboBox.addActionListener(new ActionListener() {
				@Override
				public void actionPerformed(ActionEvent e) {
					JComboBox cbox = (JComboBox) e.getSource();
					ObjectType newType = (ObjectType) cbox.getSelectedItem();
					((EplObject) baseNodeInterface).setObjectType(newType);
					log.finer("Updating subobject type to " + newType.toString());
				}
			});

		}
		
		dynamicRowCount++;		
	}

	protected void setNumberOfEntries(EplIndex basenode) {
		EplSubindex newSubindex = (EplSubindex) basenode.getByIndex(0);
		if (newSubindex == null) {
			log.finer("adding NumberOfEntries");

			newSubindex = EplObjectFactory.createEplSubindex(
					basenode, "0", "NumberOfEntries");
			newSubindex.setAccessType(AccessType.CONST);
			newSubindex.setExportable(true);
			
			basenode.addChildObject(newSubindex);			
			fireAddSubIndex(newSubindex);
		}
		
		newSubindex.setActualValue(basenode.getChildObjects().size());
	}

	/**
	 * Creates new combo box and puts it to the panel.
	 */
	private void addPDOMappingTypeComboBox() {
		while (PDOMappingTypeComboBox.getActionListeners().length > 0) {
			PDOMappingTypeComboBox.removeActionListener(PDOMappingTypeComboBox.getActionListeners()[0]);
		}

		JLabel l = new JLabel();
		this.add(l);
		l.setText("PDO mapping type");
		this.add(PDOMappingTypeComboBox);
		
		if (baseNodeInterface.getPDO() != null) {
			PDOMappingTypeComboBox.setSelectedItem(baseNodeInterface.getPDO());
		}
		else {
			PDOMappingTypeComboBox.setSelectedIndex(0);
		}
		PDOMappingTypeComboBox.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				JComboBox cbox = (JComboBox) e.getSource();
				PDOMappingType newType = (PDOMappingType) cbox.getSelectedItem();
				baseNodeInterface.setPDO(newType);
				log.finer("Updating PDO Mapping type to " + newType.toString());
			}
		});
		dynamicRowCount++;		
	}
	
	/**
	 * Creates new checkbox and puts it to the panel.
	 */
	private void addFillTimestampButton() {
		fillProjectTimestampButton = new JButton("Push current time");
		this.add(new JPanel());
		this.add(fillProjectTimestampButton);
		fillProjectTimestampButton.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent arg0) {
				long diff = 
					new Date().getTime() - 
					new GregorianCalendar(1984, 0, 1).getTimeInMillis();
				long cdate = diff / 86400000;
				long ctime = diff % 86400000;
				log.fine("Setting current timestamp to project. ("+cdate+", "+ctime+")");
				getProject().setConfigurationDate(cdate);
				getProject().setConfigurationTime(ctime);
				removeAll();
				showData(project);
			}
		});
		dynamicRowCount++;
	}
	
	/** 
	 * Sort elements into the rows/cols. Similar to the pack() function.
	 * @param cols
	 * @param rows
	 */
	private void setTableDimension(int cols, int rows) {
		SpringUtilities.makeCompactGrid(this, rows, cols, 5, 5, 8, 5);
	}

	/**
	 * @return true if some property was changer
	 */
	public boolean wasChanged() {
		return changed;
	}
	
	/**
	 * Sets changed flag.
	 * @param changed
	 */
	public void setChanged(boolean changed) {
		this.changed = changed; 
	}

	/**
	 * 
	 * @param subindex
	 */
	protected void fireAddSubIndex(EplSubindex subIndex) {
		for (int i=0; i<2*getEventListenerList().getListenerCount(); i+=2) {
			if (getEventListenerList().getListenerList()[i]==TreePopupEventListener.class) {
				((TreePopupEventListener)getEventListenerList().getListenerList()[i+1])
					.addSubIndexToLastSelectedComponent(subIndex);
			}
		}				
	}
	
	/**
	 * 
	 */
	protected void fireRefreshTree() {
		for (int i=0; i<2*getEventListenerList().getListenerCount(); i+=2) {
			if (getEventListenerList().getListenerList()[i]==TreePopupEventListener.class) {
				((TreePopupEventListener)getEventListenerList().getListenerList()[i+1])
					.refreshTreeNode(new TreePopupEvent(this));
			}
		}		
	}
	
	private EventListenerList getEventListenerList() {
		return evlist;
	}

	/**
	 * Set single property
	 * @param key
	 * @param value
	 */
	public void setProperty(String key, String value) {
		log.finest("setting ( " + key + " => " + value + " )");
		props.setProperty(key, value);
	}

	/**
	 * Saves the properties to the source object.
	 */
	public void saveProperties() {
		switch (currentView) {
		case BASENODEINTERFACE:
			baseNodeInterface.setProperties(props);
			if (
					props.containsKey(EplPropertyType.INDEX.toString()) || 
					props.containsKey(EplPropertyType.NAME.toString())) 
			{
				fireUpdateBaseNode(currentTreeNode);
			}
			baseNodeInterface.getParentProfile().setModified(true);
			break;
		case EPL_PROJECT:
			project.setProperties(props);
			if (props.containsKey(EplPropertyType.PROJECT_NAME.toString())) {
				fireProjectNameUpdate(project.getProjectName());
			}
			project.setModified(true);
			break;
		case EPL_PROFILE:
			log.fine("Cannot save node properties!");
			break;
		case ROOTNODEINTERFACE:
			log.fine("Saving root node");
			rootNode.setProperties(props);
			break;
		}
		refreshView();
		setChanged(false);
	}
	
	private void fireProjectNameUpdate(String newProjectName) {
		for (int i=0; i<2*evlist.getListenerCount(); i+=2) {
			if (evlist.getListenerList()[i]==DetailPanelEventListener.class) {
				((DetailPanelEventListener)evlist.getListenerList()[i+1])
					.updateProjectName();
			}
		}
	}

	private void fireUpdateBaseNode(TreeNode currentTreeNode) {
		for (int i=0; i<2*evlist.getListenerCount(); i+=2) {
			if (evlist.getListenerList()[i]==DetailPanelEventListener.class) {
				((DetailPanelEventListener)evlist.getListenerList()[i+1])
					.updateBaseNodeLabel(currentTreeNode);
			}
		}		
	}

	/**
	 * 
	 * @return Size of displayed properties + dynamic row count 
	 */
	private int getNumberOfRows() {
		return props.size()+dynamicRowCount;
	}

	/**
	 * Refreshes panel according to which object it actually displays.
	 */
	public void refreshView() {
		switch (currentView) {
		case BASENODEINTERFACE:
			if (EplObject.class.isInstance(baseNodeInterface)) {
				showData((EplObject)baseNodeInterface);			
			} else	if (DomainNodeInterface.class.isInstance(baseNodeInterface)) {
				showData((DomainNodeInterface)baseNodeInterface);
			}
			break;
		case EPL_PROFILE:
			showData(profileNode);
			break;
		case EPL_PROJECT:
			showData(project);
			break;
		}
	}
	
	/**
	 * 
	 * @return {@link EplProject} handled by this panel.
	 */
	public EplProject getProject() {
		return this.project;
	}
	
}
