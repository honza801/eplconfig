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

import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.SpringLayout;

import cz.rexcontrols.epl.editor.gui.SpringUtilities;

/**
 * Add object/subobject dialog
 * 
 * @author honza801
 *
 */
public class AddObjectDialog extends JDialog {

	private static final long serialVersionUID = 1L;

	// main panel
	private JPanel frontFace;

	private JLabel nameLabel;
	private JTextField nameField;
	private JLabel indexLabel;
	private JTextField indexField;
	
	// buttons at the bottom of the dialog
	private JButton okButton;
	private JButton cancelButton;

	// gathered data
	private String name;
	private String index; 

	// this returns the dialog, true if everything went good
	private boolean answer;

	/**
	 * Default constructor
	 * @param parent
	 */
	public AddObjectDialog(JFrame parent, String message) {
		super(parent, message, true);
		frontFace = new JPanel();
		this.add(frontFace);
		
		this.answer = false;
		this.name = "";
		this.index = "";
		
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
			
			@Override
			public void actionPerformed(ActionEvent e) {
				dispose();
			}
		});

		face.setLayout(new BoxLayout(face, BoxLayout.PAGE_AXIS));
		
		nameLabel = new JLabel("Name");
		nameField = new JTextField(30);
		nameField.addKeyListener(new KeyListener() {
			
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
		indexLabel = new JLabel("Index");
		indexField = new JTextField(30);
		indexField.addKeyListener(new KeyListener() {
			
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
		
		JPanel line1 = new JPanel(new SpringLayout());
		line1.add(nameLabel);
		line1.add(nameField);
		line1.add(indexLabel);
		line1.add(indexField);
		SpringUtilities.makeCompactGrid(line1, 2, 2, 5, 5, 8, 5);
		
		// description and select field button
		JPanel bottom = new JPanel(new FlowLayout(FlowLayout.CENTER));
		bottom.add(okButton);
		bottom.add(cancelButton);
		
		face.add(line1);
		face.add(bottom);
	}
	
	/**
	 * 
	 * @return Value of the name field .
	 */
	public String getName() {
		return name;
	}
	
	/**
	 * 
	 * @return Value of the index field.
	 */
	public String getIndex() {
		return index;
	}
	
	/**
	 * 
	 * @return Return status of the dialog. <code>true</code> if confirmed.
	 */
	public boolean getAnswer() {
		return answer;
	}

	/**
	 * Confirm dialog clicking OK or Enter in the text fields.
	 */
	private void confirmDialog() {
		if (nameField.getText().compareTo("") == 0) {
			JOptionPane.showMessageDialog(AddObjectDialog.this, "Name cannot be empty.");
		}
		else if (indexField.getText().compareTo("") == 0) {
			JOptionPane.showMessageDialog(AddObjectDialog.this, "Index cannot be empty.");					
		}
		else {
			name = nameField.getText();
			index = indexField.getText().toLowerCase();
			answer = true;
			dispose();
		}
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
			dispose();
			break;
		}
	}
	
}
