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
import java.awt.event.KeyEvent;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.logging.Logger;

import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JOptionPane;
import javax.swing.JSeparator;
import javax.swing.KeyStroke;
import javax.swing.event.EventListenerList;
import javax.swing.filechooser.FileFilter;

/**
 * This is the MenuBar of the configurator frame
 * 
 * @author honza801
 *
 */
public class EplMenuBar extends JMenuBar {
	
	private static final long serialVersionUID = 1L;
	private EventListenerList evlist;
	
	private JMenu projectMenu;
	private JMenuItem newFileMenuItem, openFileMenuItem, closeFileMenuItem;
	private JMenuItem saveFileMenuItem, saveAsFileMenuItem;
	private JMenuItem recentFileMenuiMenuItem, reloadFileMenuItem;
	private JMenuItem exitFileMenuItem;
	
	private JMenu networkMenu;
	private JMenuItem insertNodeProjectMenuItem, netPropsMenuItem; 

	private JMenu configMenu;
	private JMenuItem genPdoMenuItem, buildProjectMenuItem;
	private JMenuItem openDestinationProjectMenuItem;
	private JMenuItem loadDefProjectMenuItem;

	private JMenu helpMenu;
	private JMenuItem aboutMenuItem; 

	private JFrame parent;
	
	private ConfiguratorConfigurationHandler chandler;
	
	private Logger log;
	
	/**
	 * Constructor
	 * @param parent
	 * @param chandler 
	 */
	public EplMenuBar(EplConfiguratorFrame parent, ConfiguratorConfigurationHandler chandler) {
		this.log = Logger.getLogger(Logger.GLOBAL_LOGGER_NAME);
		this.chandler = chandler;
		
		setupMenuItems();
		
		this.parent = parent;
		parent.setJMenuBar(this);
		
		setListener(parent.getEventListenerList());
	}

	private void setupMenuItems() {
		// File menu
		projectMenu = new JMenu("Project");
		
		newFileMenuItem = new JMenuItem("New");
		newFileMenuItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_N,
		        ActionEvent.CTRL_MASK));
		newFileMenuItem.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				emptyProject();
			}
		});
		openFileMenuItem = new JMenuItem("Open");
		openFileMenuItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_O,
		        ActionEvent.CTRL_MASK));
		openFileMenuItem.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				openProject();
			}
		});
		closeFileMenuItem = new JMenuItem("Close");
		closeFileMenuItem.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				emptyProject();
			}
		});
		saveFileMenuItem = new JMenuItem("Save");
		saveFileMenuItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_S,
		        ActionEvent.CTRL_MASK));
		saveFileMenuItem.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				saveProject();
			}
		});
		saveAsFileMenuItem = new JMenuItem("Save as...");
		saveAsFileMenuItem.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				saveProjectAs();
			}
		});
		recentFileMenuiMenuItem = new JMenu("Recent projects");
		regenerateRecentFileMenu();
		reloadFileMenuItem = new JMenuItem("Reload");
		reloadFileMenuItem.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				reload();
			}
		});
		exitFileMenuItem = new JMenuItem("Exit");
		exitFileMenuItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_X,
		        ActionEvent.ALT_MASK));
		exitFileMenuItem.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				exitConfigurator();
			}
		});
		
		projectMenu.add(newFileMenuItem);
		projectMenu.add(openFileMenuItem);
		projectMenu.add(closeFileMenuItem);
		projectMenu.add(new JSeparator());
		projectMenu.add(saveFileMenuItem);
		projectMenu.add(saveAsFileMenuItem);
		projectMenu.add(new JSeparator());
		projectMenu.add(recentFileMenuiMenuItem);
		projectMenu.add(reloadFileMenuItem);
		projectMenu.add(new JSeparator());
		projectMenu.add(exitFileMenuItem);
		this.add(projectMenu);
		
		// Project menu
		networkMenu = new JMenu("Network");
		
		insertNodeProjectMenuItem = new JMenuItem("Add node");
		insertNodeProjectMenuItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_A,
		        ActionEvent.ALT_MASK));
		insertNodeProjectMenuItem.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				addProfile();
			}
		});
		
		netPropsMenuItem = new JMenuItem("Network properties");
		netPropsMenuItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_P,
		        ActionEvent.ALT_MASK));
		netPropsMenuItem.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				networkPropertiesEvent();
			}
		});

		networkMenu.add(insertNodeProjectMenuItem);
		networkMenu.add(netPropsMenuItem);
		this.add(networkMenu);
		
		// Config menu
		configMenu = new JMenu("Configuration");

		genPdoMenuItem = new JMenuItem("Generate PDO");
		genPdoMenuItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_P,
		        ActionEvent.CTRL_MASK));
		genPdoMenuItem.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				generatePDO();
			}
		});

		buildProjectMenuItem = new JMenuItem("Generate outputs for REX");
		buildProjectMenuItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_B,
		        ActionEvent.CTRL_MASK));
		buildProjectMenuItem.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				generateOutputs();
			}
		});
		
		openDestinationProjectMenuItem = new JMenuItem("Open folder");
		openDestinationProjectMenuItem.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent arg0) {
				openFolder();
			}
		});

		loadDefProjectMenuItem = new JMenuItem("Load pre-defined (testing)");
		loadDefProjectMenuItem.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent arg0) {
				loadDefProject();
			}
		});
		
		configMenu.add(genPdoMenuItem);
		configMenu.add(buildProjectMenuItem);
		configMenu.add(openDestinationProjectMenuItem);
//		configMenu.add(new JSeparator());
//		configMenu.add(loadDefProjectMenuItem);
		this.add(configMenu);
		
		helpMenu = new JMenu("Help");
		aboutMenuItem = new JMenuItem("About EplConfig");
		aboutMenuItem.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				fireShowHelpDialogEvent();
			}
		});
		helpMenu.add(aboutMenuItem);
		this.add(helpMenu);
	}
	
	private void networkPropertiesEvent() {
		for (int i=0; i<2*evlist.getListenerCount(); i+=2) {
			if (evlist.getListenerList()[i]==CMEventListener.class) {
				((CMEventListener)evlist.getListenerList()[i+1])
				.showProjectProperties(new CMEvent(this));
			}
		}
	}

	public void regenerateRecentFileMenu() {
		recentFileMenuiMenuItem.removeAll();
		ArrayList<String> recentFiles = new ArrayList<String>(chandler.getConfiguration().getRecentFiles());
		Collections.reverse(recentFiles);
		for (final String file : recentFiles) {
			JMenuItem i = new JMenuItem(file);
			i.addActionListener(new ActionListener() {
				
				@Override
				public void actionPerformed(ActionEvent e) {
					openProject(new File(file));
				}
			});
			recentFileMenuiMenuItem.add(i);
		}
	}

	/**
	 * Fires showHelpDialogEvent
	 */
	private void fireShowHelpDialogEvent() {
		log.finest("show help dialog");	
		for (int i=0; i<2*evlist.getListenerCount(); i+=2) {
			if (evlist.getListenerList()[i]==CMEventListener.class) {
				((CMEventListener)evlist.getListenerList()[i+1])
				.showHelpDialog(new CMEvent(EplMenuBar.this));
			}
		}
	}

	/**
	 * Fires addProfileEvent
	 */
	private void addProfile() {
		log.finest("add profile event fired");	
		for (int i=0; i<2*evlist.getListenerCount(); i+=2) {
			if (evlist.getListenerList()[i]==CMEventListener.class) {
				((CMEventListener)evlist.getListenerList()[i+1])
				.addProfileEvent(new CMEvent(this));
			}
		}
	}
	
	/**
	 * Fires empty project event
	 */
	private void emptyProject() {
		log.finest("empty project");
		int answer = JOptionPane.showConfirmDialog(parent, 
				"Really clean Project?", 
				"Clean project dialog",
				JOptionPane.YES_NO_OPTION);
		if (answer == JOptionPane.YES_OPTION) {
			for (int i=0; i<2*evlist.getListenerCount(); i+=2) {
				if (evlist.getListenerList()[i]==CMEventListener.class) {
					((CMEventListener)evlist.getListenerList()[i+1])
						.emptyProject(new CMEvent(EplMenuBar.this));
				}
			}		
		}
	}
	
	/**
	 * Show open file dialog and open project
	 */
	private void openProject() {
		JFileChooser fc = new JFileChooser();
		fc.setAcceptAllFileFilterUsed(false);
		EPLConfiguratorFileFilter eplfilter = new EPLConfiguratorFileFilter();
		fc.addChoosableFileFilter(eplfilter);
		fc.addChoosableFileFilter(new FileFilter() {
			
			@Override
			public String getDescription() {
				return "All files";
			}
			
			@Override
			public boolean accept(File f) {
				return true;
			}
		});
		fc.setFileFilter(eplfilter);
		
		if (fc.showOpenDialog(this) == JFileChooser.APPROVE_OPTION) {
			openProject(fc.getSelectedFile());
		} else {
			log.finest("open project discarded");
		}
	}
	
	/**
	 * Fires open project event
	 * @param file
	 */
	private void openProject(File file) {
		log.finest("open project: " + file.getAbsolutePath());
		for (int i=0; i<2*evlist.getListenerCount(); i+=2) {
			if (evlist.getListenerList()[i]==CMEventListener.class) {
				((CMEventListener)evlist.getListenerList()[i+1])
					.openProject(new CMEvent(EplMenuBar.this, file));
			}
		}		
	}
	
	/**
	 * Fires save project
	 */
	private void saveProject() {
		log.finest("save project event fired");	
		for (int i=0; i<2*evlist.getListenerCount(); i+=2) {
			if (evlist.getListenerList()[i]==CMEventListener.class) {
				((CMEventListener)evlist.getListenerList()[i+1])
				.saveProject(new CMEvent(EplMenuBar.this));
			}
		}
	}
	
	/**
	 * Fires save project as
	 */
	private void saveProjectAs() {
		log.finest("save project as fired");
		for (int i=0; i<2*evlist.getListenerCount(); i+=2) {
			if (evlist.getListenerList()[i]==CMEventListener.class) {
				((CMEventListener)evlist.getListenerList()[i+1])
				.saveProjectAs(new CMEvent(EplMenuBar.this));
			}
		}
	}

	/**
	 * Fires generate PDO event
	 */
	private void generatePDO() {
		log.finest("generate config event fired");
		for (int i=0; i<2*evlist.getListenerCount(); i+=2) {
			if (evlist.getListenerList()[i]==CMEventListener.class) {
				((CMEventListener)evlist.getListenerList()[i+1])
					.generatePDO(new CMEvent(EplMenuBar.this));
			}
		}
	}

	/**
	 * Fires generate outputs event
	 */
	private void generateOutputs() {
		log.finest("generate config event fired");
		for (int i=0; i<2*evlist.getListenerCount(); i+=2) {
			if (evlist.getListenerList()[i]==CMEventListener.class) {
				((CMEventListener)evlist.getListenerList()[i+1])
					.generateOutputs(new CMEvent(EplMenuBar.this));
			}
		}
	}
	private void setListener(EventListenerList evlist) {
		this.evlist = evlist;
	}
	
	private void reload() {
		log.finest("reload event fired");	
		for (int i=0; i<2*evlist.getListenerCount(); i+=2) {
			if (evlist.getListenerList()[i]==CMEventListener.class) {
				((CMEventListener)evlist.getListenerList()[i+1])
					.reload(new CMEvent(EplMenuBar.this));
			}
		}		
	}
	
	private void loadDefProject() {
		for (int i=0; i<2*evlist.getListenerCount(); i+=2) {
			if (evlist.getListenerList()[i]==CMEventListener.class) {
				((CMEventListener)evlist.getListenerList()[i+1])
					.loadDefProject(new CMEvent(EplMenuBar.this));
			}
		}		
	
	}
	
	/**
	 * Fire close configurator event
	 */
	private void exitConfigurator() {
		log.finest("close configurator event fired");		
		for (int i=0; i<2*evlist.getListenerCount(); i+=2) {
			if (evlist.getListenerList()[i]==CMEventListener.class) {
				((CMEventListener)evlist.getListenerList()[i+1])
					.closeConfigurator(new CMEvent(EplMenuBar.this));
			}
		}		
	}

	/**
	 * Fire open folder event
	 */
	private void openFolder() {
		log.finest("open folder event fired");		
		for (int i=0; i<2*evlist.getListenerCount(); i+=2) {
			if (evlist.getListenerList()[i]==CMEventListener.class) {
				((CMEventListener)evlist.getListenerList()[i+1])
					.openFolder(new CMEvent(EplMenuBar.this));
			}
		}		
	}
	
	/**
	 * 
	 * @author honza801
	 *
	 */
	private class EPLConfiguratorFileFilter extends FileFilter {
		@Override
		public String getDescription() {
			return "EPL Configurator project file";
		}
		
		@Override
		public boolean accept(File f) {
			if (f.isDirectory()) {
				return true;
			}
			else {
				String filename = f.getName();
				int idx = filename.lastIndexOf('.');
				if (idx > 0) {
					String ext = filename.substring(idx).toLowerCase();
					if (ext.compareTo(".ecp") == 0) {
						return true;
					}						
				}
			}
			return false;
		}		
	}
	
}
