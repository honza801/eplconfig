package cz.rexcontrols.epl.editor.gui.tree;
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

import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.io.File;

import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JDialog;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.SpringLayout;

import cz.rexcontrols.epl.editor.EplNode;
import cz.rexcontrols.epl.editor.EplProject;
import cz.rexcontrols.epl.editor.ProfileInterface;
import cz.rexcontrols.epl.editor.gui.SpringUtilities;


/**
 * Dialog for inserting new profiles into the project
 * 
 * @author honza801
 *
 */
public class AddProfileDialog extends JDialog {

	private static final long serialVersionUID = 1L;

	// main panel
	private JPanel frontFace;

	private JLabel profileNameLabel;
	private JTextField profileNameField;
	private JButton selectFileButton;
	private JTextField selectFileField;
	private JLabel nodeIdLabel;
	private JTextField nodeIdField;
	private JCheckBox isRexCheckBox;
	
	// buttons at the bottom of the dialog
	private JButton okButton;
	private JButton cancelButton;

	// gathered data
	private String profileName;
	private File selectedFile;
	private int nodeId; 
	private boolean isRex;

	// this returns the dialog, true if everything went good
	private boolean answer;
	
	// true if asking for replace
	private boolean replace;
	
	
	/**
	 * Default constructor
	 * @param parent
	 */
	public AddProfileDialog(JFrame parent) {
		this(parent, null, "Insert new node into network");
	}
	
	/**
	 * Constructor.
	 * @param parent
	 * @param oldNode
	 */
	public AddProfileDialog(JFrame parent, ProfileInterface oldNode, String title) {
		super(parent, title, true);
		this.frontFace = new JPanel();
		this.add(frontFace);

		if (oldNode == null) {
			this.profileName = "";
			this.nodeId = -1;
			this.isRex = false;
			this.replace = false;
		}
		else {
			this.profileName = oldNode.getProfileName();
			this.nodeId = oldNode.getProfileId();
			this.isRex = oldNode.isRexNode();
			this.replace = true;
		}
		this.selectedFile = null;
		this.answer = false;
		
		init(frontFace);
		
		this.pack();
		this.setLocationRelativeTo(parent);
		this.setVisible(true);
	}

	/**
	 * Initializes front face of this dialog
	 * @param face
	 */
	private void init(JPanel face) {
		selectFileButton = new JButton("Select file");
		selectFileButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				JFileChooser fc = new JFileChooser();
				if (fc.showOpenDialog(AddProfileDialog.this) == JFileChooser.APPROVE_OPTION) {
					setFile(fc.getSelectedFile());
				}
			}
		});		

		// bottom buttons
		okButton = new JButton("OK");
		okButton.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent arg0) {
				confirmDialog();
			}
		});
		cancelButton = new JButton("Cancel");
		cancelButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				cancelDialog();
			}
		});

		face.setLayout(new BoxLayout(face, BoxLayout.PAGE_AXIS));
		
		// description and select field button
		profileNameLabel = new JLabel("Name");		
		profileNameField = new JTextField(30);
		selectFileField = new JTextField(30);
		selectFileField.setEditable(false);
		nodeIdLabel = new JLabel("Node ID");
		nodeIdField = new JTextField(10);
		isRexCheckBox = new JCheckBox("It's a REX Node");
		
		// make non-editable if replacing node
		if (this.replace) {
			profileNameField.setText(profileName);
			profileNameField.setEditable(false);
			nodeIdField.setText(String.valueOf(nodeId));
			nodeIdField.setEditable(false);
			isRexCheckBox.setSelected(isRex);
			isRexCheckBox.setEnabled(false);
		}

		// put it all on the panel
		JPanel line1 = new JPanel(new SpringLayout());
		line1.add(profileNameLabel);
		line1.add(profileNameField);
		line1.add(nodeIdLabel);
		line1.add(nodeIdField);
		line1.add(selectFileButton);
		line1.add(selectFileField);
		SpringUtilities.makeCompactGrid(line1, 3, 2, 5, 5, 8, 5);

		JPanel line2 = new JPanel(new FlowLayout(FlowLayout.TRAILING));
		line2.add(isRexCheckBox);
		
		JPanel bottom = new JPanel(new FlowLayout(FlowLayout.CENTER));
		bottom.add(okButton);
		bottom.add(cancelButton);
		
		face.add(line1);
		face.add(line2);
		face.add(bottom);
		
		profileNameField.addKeyListener(new KeyListener() {
			
			@Override
			public void keyTyped(KeyEvent e) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void keyReleased(KeyEvent e) {
				handleKeyEvent(e);
			}
			
			@Override
			public void keyPressed(KeyEvent e) {
				// TODO Auto-generated method stub
				
			}
		});
		
		nodeIdField.addKeyListener(new KeyListener() {
			
			@Override
			public void keyTyped(KeyEvent e) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void keyReleased(KeyEvent e) {
				handleKeyEvent(e);
			}
			
			@Override
			public void keyPressed(KeyEvent e) {
				// TODO Auto-generated method stub
				
			}
		});
	}
	
	/**
	 * Cancel button action
	 */
	protected void cancelDialog() {
		this.answer = false;
		dispose();
	}

	private int getInt(String s) {
		try {
			int i = Integer.parseInt(s);
			return i;
		}
		catch (NumberFormatException e) {
			return -1;
		}
	}
	
	/**
	 * Set file.
	 * @param file
	 */
	private void setFile(File file) {
		this.selectedFile = file;
		this.selectFileField.setText(file.getAbsolutePath());
	}
	
	/**
	 * 
	 * @return selected file for node.
	 */
	public File getFile() {
		return selectedFile;
	}
	
	/**
	 * 
	 * @return profile name
	 */
	public String getName() {
		return profileName;
	}
	
	/**
	 * 
	 * @return Node id.
	 */
	public int getNodeId() {
		return nodeId;
	}
	
	/**
	 * 
	 * @return <code>true</code> if node is rex
	 */
	public boolean getIsRex() {
		return isRex;
	}

	/**
	 * 
	 * @return <code>true</code> if dialog is confirmed.
	 */
	public boolean getAnswer() {
		return answer;
	}
	
	/**
	 * 
	 * @param parentProject
	 * @return {@link EplNode} constructed from this dialog.
	 */
	public EplNode createProfile(EplProject parentProject) {
		EplNode node = 
			new EplNode(getName(), getNodeId(), 
					getFile(), getIsRex(), parentProject);
		node.setModified(true);
		return node;
	}
	
	/**
	 * Handles keyevent depending on what was touched. 
	 * @param e
	 */
	private void handleKeyEvent(KeyEvent e) {
		switch (e.getKeyCode()) {
		case KeyEvent.VK_ENTER:
			confirmDialog();
			break;
		case KeyEvent.VK_ESCAPE:
			cancelDialog();
			break;
		}
	}

	/**
	 * Confirm dialog clicking OK or Enter in the panel.
	 */
	private void confirmDialog() {
		nodeId = getInt(nodeIdField.getText());
		if (profileNameField.getText().matches("")) {
			JOptionPane.showMessageDialog(AddProfileDialog.this, "Name cannot be empty.");				
		}
		else if (nodeId < 0) {
			JOptionPane.showMessageDialog(AddProfileDialog.this, "Bad node id.");				
		}
		else if (selectedFile == null) {
			JOptionPane.showMessageDialog(AddProfileDialog.this, "File was not selected.");
		}
		else {
			profileName = profileNameField.getText();
			isRex = isRexCheckBox.isSelected();
			answer = true;
			dispose();
		}
	}

}
