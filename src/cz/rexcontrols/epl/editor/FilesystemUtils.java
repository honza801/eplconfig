package cz.rexcontrols.epl.editor;
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
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

/**
 * Handles several filesystem operations
 * 
 * @author honza801
 *
 */
public class FilesystemUtils {

	/**
	 * Create directory
	 * @param dirname directory name
	 * @return true - if operation was successfully completed
	 * @throws IOException 
	 */
	public static boolean createDirectory(String dirname) throws IOException {
		File f = new File(dirname);
		if (f.exists()) {
			throw new IOException("File exists: " + dirname);
		}
		return new File(dirname).mkdirs();
	}
	
	/**
	 * Copies one file to another
	 * @param source
	 * @param destination
	 * @throws IOException
	 */
	public static void copyFile(String source, String destination) throws IOException {
		copyFile(new File(source), new File(destination));
	}
	
	/**
	 * Copies one file to another
	 * @param source
	 * @param destination
	 * @throws IOException
	 */
	public static void copyFile(File source, File destination) throws IOException {
		// some tests at first
		if (!source.exists()) {
			throw new IOException("No such file: " + source.getAbsolutePath());
		}
		if (!source.isFile()) {
			throw new IOException(source.getAbsolutePath() + " is not a file.");
		}
		if (!source.canRead()) {
			throw new IOException("Cannot read file: " + source.getAbsolutePath());
		}
		if (destination.isDirectory()) {
			throw new IOException("Cannot write to directory: " + destination.getAbsolutePath());
		}
		if (destination.exists() && !destination.canWrite()) {
			throw new IOException("File is not writeble: " + destination.getAbsolutePath());
		}
		
		// now, we are ready to copy
		FileInputStream fis = null;
		FileOutputStream fos = null;
		try {
			fis = new FileInputStream(source);
			fos = new FileOutputStream(destination);
			
			byte[] buff = new byte[512];
			int bytesRead = 0;
			
			while ((bytesRead = fis.read(buff)) != -1) {
				fos.write(buff, 0, bytesRead);
			}
		}
		finally {
			if (fis != null) {
				fis.close();
			}
			if (fos != null) {
				fos.close();
			}
		}
	}	
	
}
