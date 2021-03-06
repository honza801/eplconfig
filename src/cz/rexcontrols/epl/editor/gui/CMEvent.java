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

import java.io.File;
import java.util.EventObject;

/**
 * Event produced by MenuBar
 * 
 * @author honza801
 *
 */
public class CMEvent extends EventObject{

	private static final long serialVersionUID = 1L;
	private File file;

	/**
	 * Constructor
	 * @param source
	 */
	public CMEvent(Object source) {
		super(source);
	}
	
	public CMEvent(Object source, String fileName) {
		this(source, new File(fileName));
	}

	public CMEvent(Object source, File file) {
		super(source);
		this.file = file;
	}
	
	public String getFileName() {
		return file.getAbsolutePath();
	}
	
	public File getFile() {
		return file;
	}
}
