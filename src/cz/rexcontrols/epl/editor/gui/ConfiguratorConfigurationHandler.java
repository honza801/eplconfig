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
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;

import cz.rexcontrols.epl.editor.cconfigurator.CConfiguration;

/**
 * 
 * @author honza801
 *
 */
public class ConfiguratorConfigurationHandler {

	private final static String pkgname = "cz.rexcontrols.epl.editor.cconfigurator";
	private final static String filename = ".eplconfigurator.xml";
	private static final File configurationFile = 
		new File(System.getProperty("user.home") + File.separator + filename);
	private final static int maxFiles = 5;
	
	private CConfiguration configuration;

	/**
	 * Constructor is private, createConfigurationHandler should be used to gain this handler 
	 * @param configuration
	 */
	private ConfiguratorConfigurationHandler(CConfiguration configuration) {
		this.configuration = configuration; 
	}

	/**
	 * Generate new {@link ConfiguratorConfigurationHandler}
	 * @param file
	 * @return new {@link ConfiguratorConfigurationHandler}
	 */
	public static ConfiguratorConfigurationHandler createConfigurationHandler() {
		
		Logger log = Logger.getLogger(ConfiguratorConfigurationHandler.class.getCanonicalName());
		log.setParent(Logger.getLogger(Logger.GLOBAL_LOGGER_NAME));
		log.setLevel(Level.FINE);

		try {
			if (!configurationFile.isFile()) {
				log.fine("Configuration file does not exist, creating ne one.");
				return createNewConfiguration();
			} else {
				JAXBContext jc = JAXBContext.newInstance(pkgname);
				Unmarshaller u = jc.createUnmarshaller();
				CConfiguration configuration = (CConfiguration) u.unmarshal(configurationFile);
				log.finest("Configuration sucessfully unmarshalled");
				return new ConfiguratorConfigurationHandler(configuration);
			}
		} catch (JAXBException e) {
			log.warning("Invalid file format, replacing with new content.");
			configurationFile.delete();
			return createNewConfiguration();
		}

	}
	
	/**
	 * 
	 * @return {@link CConfiguration} handled by this handler
	 */
	public CConfiguration getConfiguration() {
		return configuration;
	}
	
	/**
	 * Save the configuration back to file
	 */
	public void saveConfiguration() {
			try {
				JAXBContext jc = JAXBContext.newInstance(pkgname);
				Marshaller m = jc.createMarshaller();
				m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
				m.marshal(getConfiguration(), configurationFile);
			} catch (JAXBException e) {
				e.printStackTrace();
			}
	}
	
	/**
	 * Add new file to list and check its maximum size
	 * @param file
	 */
	public void addRecentFile(File file) {
		List<String> recentlist = this.getConfiguration().getRecentFiles();
		if (!recentlist.contains(file.getAbsolutePath())) {
			recentlist.add(file.getAbsolutePath());
			if (recentlist.size() > maxFiles) {
				recentlist.remove(0);
			}
		}
	}
	
	private static ConfiguratorConfigurationHandler createNewConfiguration() {
		try {
			configurationFile.createNewFile();
			return new ConfiguratorConfigurationHandler(new CConfiguration());
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	
}
