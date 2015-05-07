package cz.rexcontrols.epl.editor.mdl;
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

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Properties;

/**
 * 
 * 
 * @author honza801
 *
 */
public class MdlElement extends Properties {

	private static final long serialVersionUID = 1L;
	private List<MdlElement> children;
	
	/**
	 * Default Constructor
	 * @param props
	 */
	public MdlElement(Properties props) {
		this.putAll(props);
		children = new ArrayList<MdlElement>();
	}
	
	/**
	 * adds child element
	 * @param child
	 */
	public void addChild(MdlElement child) {
		children.add(child);
	}
	
	/**
	 * @return children of this element
	 */
	public List<MdlElement> getChildren() {
		return children;
	}
	
	/**
	 * @return true - children is not null and is not empty
	 */
	public boolean hasChildren() {
		return (children != null && !children.isEmpty());
	}
	
	/**
	 * writes to OutputStream with comment
	 * @param os
	 * @param comment
	 */
	public void storeToMdl(OutputStream os, String comment) {
		try {
			os.write(new String("# ").getBytes());
			os.write(new Date().toString().concat("\n").getBytes());
			os.write(new String("# ").getBytes());
			os.write(comment.concat("\n").getBytes());
			storeToMdl(os);
			os.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * internal method for recursive storing this object 
	 * @param os
	 * @throws IOException
	 */
	private void storeToMdl(OutputStream os) throws IOException {
		os.write(new String("{\n").getBytes());
		for (String key : this.stringPropertyNames()) {
			os.write(key.getBytes());
			os.write(new String(" ").getBytes());
			os.write(this.getProperty(key).getBytes());
			os.write(new String("\n").getBytes());
			for (MdlElement mdl : getChildren()) {
				mdl.storeToMdl(os);
			}
		}
		os.write(new String("}\n").getBytes());
		os.flush();
	}
	
}
