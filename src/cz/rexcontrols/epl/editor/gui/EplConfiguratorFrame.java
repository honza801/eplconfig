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

import java.awt.Desktop;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.swing.AbstractButton;
import javax.swing.BoxLayout;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JSplitPane;
import javax.swing.ProgressMonitor;
import javax.swing.event.EventListenerList;

import cz.rexcontrols.epl.editor.EplProject;
import cz.rexcontrols.epl.editor.EplProjectHandler;
import cz.rexcontrols.epl.editor.MappingInterface;
import cz.rexcontrols.epl.editor.cdc.CdcGenerator;
import cz.rexcontrols.epl.editor.gui.tree.EplTreeBottomPanel;
import cz.rexcontrols.epl.editor.gui.tree.EplTreeInterface;
import cz.rexcontrols.epl.editor.gui.tree.MyTree;
import cz.rexcontrols.epl.editor.mdl.MdlGenerator;
import cz.rexcontrols.epl.editor.pdo.MappingGenerator;

/**
 * Main frame for the application.
 * Also handles some events generated from GUI.
 * 
 * @author honza801
 *
 */
public class EplConfiguratorFrame extends JFrame {

	private static final long serialVersionUID = 1L;
	
	/**
	 * Global EventListenerList
	 */
	private EventListenerList evlist;
	
	/**
	 * Visual elements
	 */
	private EplTreeInterface tree;
	private EplTreeBottomPanel eplTreeBottomPanel;
	private EPLCViewPanel viewPanel;
	private EplConsole console;
	private EplMenuBar menuBar;
	
	/**
	 * Data Objects
	 */
	private EplProject project;
	
	private ConfiguratorConfigurationHandler chandler;
	
	/**
	 * Global logger.
	 */
	private Logger log;
	
	/**
	 * Default constructor 
	 */
	public EplConfiguratorFrame() {
		super();
		setMainTitle();

		log = Logger.getLogger(Logger.GLOBAL_LOGGER_NAME);
		log.setLevel(Level.ALL);
		log.addHandler(new EplLogHandler(this));

		setupEventListener();
		setupFrame();
	}
	
	/**
	 * Set the frame parameters
	 */
	public void setupFrame() {
		chandler = ConfiguratorConfigurationHandler.createConfigurationHandler();

		// set the close operation
		this.setDefaultCloseOperation(JFrame.DO_NOTHING_ON_CLOSE);
		this.addWindowListener(new WindowAdapter() {
			public void windowClosing(WindowEvent e) {
				closeConfiguratorFrame();
			}
		});
			
		// set size
		this.setSize(1000, 500);

		// put a menu bar to this frame
		menuBar = new EplMenuBar(this, chandler);
		
		// initialize console
		console = new EplConsole();
		log.addHandler(new EplConsoleHandler(console));

	}
	
	/**
	 * initializes event listener and defines actions
	 */
	private void setupEventListener() {
		// create new event listener
		evlist = new EventListenerList();
		
		// define actions
		evlist.add(CMEventListener.class, new CMEventListener() {
			@Override
			public void addProfileEvent(CMEvent e) {
				tree.addProjectProfile();					
			}
			@Override
			public void addConnectionMappingEvent(CMEvent e) {
				getEplProject().addNewMapping();
				viewPanel.switchToConnectionManager();
			}
			@Override
			public void emptyProject(CMEvent e) {
				initEmptyProject();
			}
			@Override
			public void openProject(CMEvent e) {
				initProject(e.getFile());
			}
			@Override
			public void saveProject(CMEvent e) {
				saveProjectWithCheck();
			}
			@Override
			public void saveProjectAs(CMEvent e) {
				saveProjectWithDialog();
			}
			@Override
			public void generateOutputs(CMEvent e) {
				if (!testSavedAndNotify()) {
					return;
				}
				getEplProject().getAliasManager().syncAliasesToObjects();
				MdlGenerator mdg = new MdlGenerator(getEplProject());
				CdcGenerator cg = new CdcGenerator(getEplProject());
				try {
					log.fine("Generating project outputs");
					cg.GenerateCdc();
					mdg.GenerateMdl();
					log.fine("Project outputs successfuly generated");
				} catch (IOException e1) {
					e1.printStackTrace();
				}
			}
			@Override
			public void generatePDO(CMEvent e) {
				MappingGenerator mg = new MappingGenerator(getEplProject());
				log.fine("Generating PDO");
				mg.generateMapParams();
				mg.writeToOd();
				log.fine("PDO generated");
			}
			@Override
			public void advancedView(AbstractButton button) {
				getEplProject().setAdvancedView(button.isSelected());
				tree.refreshTree();
			}
			@Override
			public void reload(CMEvent e) {
				EplProjectHandler phandler = new EplProjectHandler(getEplProject());
				//unneeded
				//phandler.saveProject();
				initProject(phandler.getProject().getProjectFile());
			}
			@Override
			public void loadDefProject(CMEvent e) {
				initProject(new File("test/project.ecp"));
			}
			@Override
			public void closeConfigurator(CMEvent e) {
				closeConfiguratorFrame();
			}
			@Override
			public void openFolder(CMEvent e) {
				openFolderAction();
			}
			@Override
			public void showHelpDialog(CMEvent e) {
				showHelpDialogAction();
			}
			@Override
			public void showProjectProperties(CMEvent e) {
				tree.setSelectionRow(0);
				tree.showNode();
				viewPanel.setSelectedIndex(0);
			}
		});
		
		evlist.add(EplFrameEventListener.class, new EplFrameEventListener() {

			@Override
			public void projectChangedEvent(boolean changed) {
				projectChanged(changed);
			}
		});
	}
	
	/**
	 * 
	 * @return Project handled by this configurator
	 */
	public EplProject getEplProject() {
		return project;
	}
	
	/**
	 * @return EventListenerList that should be global for the whole GUI
	 */
	public EventListenerList getEventListenerList() {
		return evlist;
	}
	
	/**
	 * Initializes empty project
	 */
	private void initEmptyProject() {
		this.setVisible(false);
		this.getContentPane().removeAll();
		
		// init objects
		this.project = new EplProject("New_Project");
		
		//this.tree = new EplTree(this);
		this.tree = new MyTree(this);
		
		// prepare the split pane
		JSplitPane jp = new JSplitPane(JSplitPane.HORIZONTAL_SPLIT);
		jp.setDividerLocation(300);
		this.getContentPane().add(jp);
		
		// initialize tree panel
		JPanel treePanel = new JPanel();
		treePanel.setLayout(new BoxLayout(treePanel, BoxLayout.PAGE_AXIS));
		treePanel.add(new JScrollPane(tree));
		eplTreeBottomPanel = new EplTreeBottomPanel(this);
		treePanel.add(eplTreeBottomPanel);
		jp.add(treePanel);
		
		JSplitPane split = new JSplitPane(JSplitPane.VERTICAL_SPLIT);
		split.setDividerLocation(300);
		
		// initialize view panel
		this.viewPanel = new EPLCViewPanel(this);
		split.add(viewPanel);
		split.add(new JScrollPane(console));
		viewPanel.initPanels(project.getMappingManager(), project.getAliasManager());

		jp.add(split);
		this.setVisible(true);
	}
	
	/**
	 * Creates project from file, displays progress bar.
	 * @param projectFile
	 * @throws FileNotFoundException
	 */
	private void initProject(File projectFile) {
		ProgressMonitor pm = new ProgressMonitor(
				this, 
				"Please wait while loading project.", 
				"Initialize project", 0, 10);
		pm.setMillisToDecideToPopup(1);
		pm.setMillisToPopup(1);
		
		try {
			log.fine("initProject( \""+projectFile.getAbsolutePath()+"\" )");
			pm.setNote("Reading project");
			pm.setProgress(2);
			EplProject newproject = EplProjectHandler.openProject(projectFile);
			
			pm.setNote("Initializing tree");
			pm.setProgress(4);
			project = newproject;
			tree.initProject(project);
			
			pm.setNote("Initializing panels");
			pm.setProgress(6);
			viewPanel.initPanels(project.getMappingManager(), project.getAliasManager());
			eplTreeBottomPanel.setAdvancedView(project.isAdvancedView());
		
			updateRecentFilesMenu();
			setMainTitle();
		} catch (FileNotFoundException e) {
			String message = "File '"+projectFile.getAbsolutePath()+"' was not found!";
			log.warning(message);
			JOptionPane.showMessageDialog(
					this, message);
		}
		
		pm.setProgress(10);
	}
	
	private void updateRecentFilesMenu() {
		chandler.addRecentFile(project.getProjectFile());
		menuBar.regenerateRecentFileMenu();		
	}
	
	/**
	 * Close this configurator
	 */
	protected void closeConfiguratorFrame() {
		log.fine("closing frame");
		
		if (project.isModified()) {
			int answer = JOptionPane.showConfirmDialog(this, 
					"Project was modified. Save project before closing?",
					"Closing configurator",
					JOptionPane.YES_NO_OPTION);
			// check the answer
			if (answer == JOptionPane.YES_OPTION) {
				saveProjectWithCheck();
			}
		}
		
		// save configurator configuration
		chandler.saveConfiguration();
		
		// dispose this window
		this.dispose();
	}
	
	/**
	 * Asks for project file, then saves the project
	 */
	private void saveProjectWithDialog() {
		if (!checkInvalidConnections()) {
			return;
		}
		try {
			JFileChooser fc = new JFileChooser();
			if (fc.showSaveDialog(this) == JFileChooser.APPROVE_OPTION) {
				EplProjectHandler phandler = new EplProjectHandler(getEplProject());
				phandler.saveProjectAs(fc.getSelectedFile());
				log.fine("Project saved sucessfully.");
				
				// update recent file menu
				updateRecentFilesMenu();
			}
		} catch (IOException e1) {
			e1.printStackTrace();
		}
	}

	/**
	 * Saves project in file specified in project.
	 * If the file is not specified, asks for file by dialog.
	 */
	private void saveProjectWithCheck() {
		if (!checkInvalidConnections()) {
			return;
		}
		try {
			if (getEplProject().getProjectFile() == null) {
				saveProjectWithDialog();
			}
			else {
				EplProjectHandler phandler = new EplProjectHandler(getEplProject());
				phandler.saveProject();
				log.fine("Project saved sucessfully.");
			}
		} catch (IOException e1) {
			e1.printStackTrace();
		}
	}

	/**
	 * 
	 * @return <code>true</code> if project has all connections valid or user does not want to repair it. 
	 */
	private boolean checkInvalidConnections() {
		ArrayList<MappingInterface> invalidConnections =
			getEplProject().getInvalidConnectionMappings(); 
		if (!invalidConnections.isEmpty()) {
			String title = "Project has invalid connections";
			String message = "Following connections are invalid:\n";
			for (MappingInterface mi : invalidConnections) {
				message = message.concat(
						(mi.getMappingName().isEmpty() ? 
								"<noname>" : mi.getMappingName())
						+ "\n");
			}
			message = message.concat("\nSave project anyway?");
			String[] options = {
				"Delete",
				"Save anyway",
				"Cancel"
			};
			
			int answer = JOptionPane.showOptionDialog(
					this, message, title, 
					JOptionPane.YES_NO_CANCEL_OPTION, 
					JOptionPane.WARNING_MESSAGE, null, options, options[2]);
			switch (answer) {
			case JOptionPane.CANCEL_OPTION:
				JOptionPane.showMessageDialog(
						this, 
						"You should fix the connections manually before saving.");
				return false;
			case JOptionPane.YES_OPTION:
				getEplProject().getMappingManager().removeMappings(invalidConnections);
				break;
			case JOptionPane.NO_OPTION:
				break;
			}
		}
		return true;
	}
	
	/**
	 * Open project folder in system file manager
	 */
	private void openFolderAction() {
		if (!testSavedAndNotify())
			return;
		
		if (Desktop.isDesktopSupported() && (Desktop.getDesktop() == null)) {
			try {
				Desktop.getDesktop().open(new File(project.getProjectDir()));
				return;
			} catch (IOException e1) {}
		}
		
		if (System.getProperty("os.name").indexOf("Windows") != -1) {
	    	try {
		    	 Runtime.getRuntime().exec("explorer.exe " + project.getProjectDir());
		    	 return;
	    	} catch (IOException e1) {}
	    } else if (System.getProperty("os.name").indexOf("Linux") != -1) {
	    	try {
	    		Runtime.getRuntime().exec("dolphin " + project.getProjectDir());
			    return;
			} catch (IOException e1) {}
			    
			try {
			   	 Runtime.getRuntime().exec("nautilus " + project.getProjectDir());
			   	 return;
			} catch (IOException e1) {}
	    } 

		String message = "Desktop API not supported and don't know how to open folder";
		JOptionPane.showMessageDialog(this, message);
		log.fine(message);				
	}
	
	/**
	 * Displays help for the configurator
	 */
	private void showHelpDialogAction() {
		new EplHelpDialog(this);
	}
	
	public boolean testSavedAndNotify() {
		if ((project == null) || (!project.isSaved())) {
			String message = "No project or project not saved";
			JOptionPane.showMessageDialog(this, message);
			return false;
		}
		
		return true;
	}
	
	
	private void setMainTitle() {
		String title = "EplConfig - Rex Configuration Editor for Ethernet Powerlink";
		if (project != null) {
			title = title.concat(" [" + project.getProjectFile().getAbsolutePath() + "]");
		}
		this.setTitle(title);
	}
	
	/**
	 * Set the modified property of the project to changed value.
	 * @param changed
	 */
	private void projectChanged(boolean changed) {
		this.getEplProject().setModified(changed);
	}

	public void refreshViewPanel() {
		viewPanel.refreshView();
	}
	
	/**
	 * Main method.
	 * @param argh
	 */
	public static void main(String[] args) {
		
		// init main window
		EplConfiguratorFrame frame = new EplConfiguratorFrame();
		
		// configure necessary stuff
		frame.initEmptyProject();
		
		// open project from argument
		if (args.length > 0) {
			frame.initProject(new File(args[0]));
		}
	}

}
