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

import java.awt.Component;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.net.URL;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.swing.BorderFactory;
import javax.swing.BoxLayout;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;

import cz.rexcontrols.epl.editor.EplConfiguratorInfo;


/**
 * EplConfigurator Help dialog
 * 
 * @author honza801
 *
 */
public class EplHelpDialog extends JDialog {

	private static final long serialVersionUID = 1L;

	private Logger log;
	
	private static final String dialogLabel = "About...";
	
	/**
	 * Constructor
	 * @param parent
	 */
	public EplHelpDialog(JFrame parent) {
		super(parent, dialogLabel, true);

		log = Logger.getLogger(Logger.GLOBAL_LOGGER_NAME);
		log.setLevel(Level.ALL);
		log.addHandler(new EplLogHandler(this));

		init();
		
		this.pack();
		this.setLocationRelativeTo(parent);
		this.setVisible(true);
	}
	
	/**
	 * Initialize components
	 */
	private void init() {
		JPanel face = new JPanel();
		this.getContentPane().add(face);
		
		BoxLayout faceLayout = new BoxLayout(face, BoxLayout.Y_AXIS);
		face.setLayout(faceLayout);
		
		/*
		JLabel header = new JLabel("Help menu");
		face.add(header);
		header.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));
		header.setAlignmentX(Component.CENTER_ALIGNMENT);
		*/
		
		JLabel tf = new JLabel();
		face.add(tf);
		tf.setText("<html>" +
				"Roman Pišl, 2010<br>" +
				"Jan Krčmář, 2011<br><br>" +
				"Rex version: " + EplConfiguratorInfo.RexVersion + "<br>" +
				"Revision: " + EplConfiguratorInfo.SvnRevision + 
				"<br><br></html>");
		tf.setBorder(BorderFactory.createCompoundBorder(
				BorderFactory.createEmptyBorder(10, 10, 10, 10), 
				BorderFactory.createCompoundBorder(
						BorderFactory.createTitledBorder("Credits"), 
						BorderFactory.createEmptyBorder(10, 10, 10, 10))));
		tf.setAlignmentX(Component.CENTER_ALIGNMENT);

		JLabel imageLabel = new JLabel(
				"EplConfigurator", 
				createImageIcon("../icons/application24.png"), 
				JLabel.CENTER);
		face.add(imageLabel);
		imageLabel.setBorder(BorderFactory.createEmptyBorder(10,10,10,10));
		imageLabel.setAlignmentX(Component.CENTER_ALIGNMENT);
		
		JButton closeButton = new JButton("Close");
		closeButton.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				closeHelpDialog();
			}
		});
		JPanel bottom = new JPanel();
		face.add(bottom);
		bottom.add(closeButton);
		bottom.setBorder(BorderFactory.createEmptyBorder(0,10,20,10));
		closeButton.setAlignmentX(Component.CENTER_ALIGNMENT);
	}
	
	/**
	 * Creates {@link ImageIcon} from file.
	 * @param file path to the image
	 * @return new {@link ImageIcon} if file exists, null otherwise
	 */
	private ImageIcon createImageIcon(String file) {
		URL imgURL = EplHelpDialog.class.getResource(file);
		if (imgURL != null) {
			return new ImageIcon(imgURL);
		} else {
			log.warning("File " + file + " not found!");
			return null;
		}
	}
	
	/**
	 * Close {@link EplHelpDialog}
	 */
	private void closeHelpDialog() {
		this.dispose();
	}
	
}
