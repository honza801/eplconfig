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
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;

import javax.swing.AbstractButton;
import javax.swing.JCheckBox;
import javax.swing.JPanel;
import javax.swing.event.EventListenerList;

import cz.rexcontrols.epl.editor.gui.CMEventListener;
import cz.rexcontrols.epl.editor.gui.EplConfiguratorFrame;

/**
 * 
 * 
 * @author honza801
 *
 */
public class EplTreeBottomPanel extends JPanel {

	private static final long serialVersionUID = 1L;
	
	private EventListenerList evlist;
	
	private JCheckBox advancedViewCheckBox;
	
	/**
	 * contstructor
	 * @param tree
	 */
	public EplTreeBottomPanel(EplConfiguratorFrame parent) {
		super(new FlowLayout(FlowLayout.LEADING));
		this.evlist = parent.getEventListenerList();
		initPanel();
		//this.setBorder(BorderFactory.createLineBorder(Color.RED));
	}

	private void initPanel() {
		advancedViewCheckBox = new JCheckBox("Advanced view");
		advancedViewCheckBox.addItemListener(new ItemListener() {
			
			@Override
			public void itemStateChanged(ItemEvent arg0) {
				fireAdvancedViewChanged((AbstractButton)arg0.getSource());
			}
		});
		
		this.add(advancedViewCheckBox);
	}

	private void fireAdvancedViewChanged(AbstractButton button) {
		for (int i=0; i<2*evlist.getListenerCount(); i+=2) {
			if (evlist.getListenerList()[i]==CMEventListener.class) {
				((CMEventListener)evlist.getListenerList()[i+1])
					.advancedView(button);
			}
		}		
	}

	public void setAdvancedView(boolean advancedView) {
		advancedViewCheckBox.setSelected(advancedView);
	}
	
}
