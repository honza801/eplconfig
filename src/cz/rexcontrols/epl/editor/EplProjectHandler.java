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
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;

import cz.rexcontrols.epl.editor.project.CfgProject;

/**
 * Handles Save/Load projects.
 * 
 * File format: key=value
 * 
 * @author honza801
 *
 */
public class EplProjectHandler {

	/**
	 * project to handle
	 */
	private final static String pkgname = "cz.rexcontrols.epl.editor.project";
	private EplProject project;

	//private String FILE_COMMENT = "EPL Project configuration file.";
	private String projectFileName = "project.ecp";
	//public static File projectFileDir;
	
	private Logger log;
	
	/**
	 * @param project
	 */
	public EplProjectHandler(EplProject project) {
		this.project = project;
		log = Logger.getLogger(this.getClass().getCanonicalName());
		log.setParent(Logger.getLogger(Logger.GLOBAL_LOGGER_NAME));
		log.setLevel(Level.WARNING);
	}
	
	/**
	 * Exports file.
	 * @param filename filename to export
	 * @throws IOException on IO Error
	 */
	public void saveProject() throws IOException {
		saveProjectAs(new File(project.getProjectDir()));
	}

	/**
	 * Exports file.
	 * @param filename filename to export
	 * @throws IOException on IO Error
	 */
	public void saveProjectAs(File target) throws IOException {
		//target is a directory or file of out project 
		File projFile;
		log.fine("saving project...");
		if (!target.exists()) {
			target.mkdirs();
		}
		if (target.isDirectory()) {
			projFile = new File(
					target.getAbsolutePath().
					concat(File.separator).
					concat(projectFileName));
		}
		else {
			projFile = target;
		}
		// now, projFile is the exact project file 
		
		// save nodes
		for (ProfileInterface profile : project.getEplProfiles()) {
			log.fine("calling save document");
			profile.saveDocument(new File(projFile.getParent()));
		}

		// save project
		try {
			JAXBContext jc = JAXBContext.newInstance(pkgname);
			Marshaller m = jc.createMarshaller();
			m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
			m.marshal(project.accessCfgProject(), projFile);
			log.fine(projFile.getAbsolutePath() + " marshalled.");
		} catch (JAXBException e) {
			e.printStackTrace();
		}

		/*
		Properties props = project.getRecursiveProperties();
		props.store(new FileOutputStream(projFile), FILE_COMMENT);
		*/
		
		project.setModified(false);
		project.setProjectFile(projFile);
	}
	
	/**
	 * @return Project handled by this handler
	 */
	public EplProject getProject() {
		return project;
	}
	
	/**
	 * Creates Project Object from File
	 * @param file
	 * @return
	 * @throws FileNotFoundException
	 */
	public static EplProject openProject(File file) throws FileNotFoundException  {
		if (!file.canRead()) {
			throw new FileNotFoundException();
		}
		try {
			CfgProject cfgProject;
			
			JAXBContext jc = JAXBContext.newInstance(pkgname);
			Unmarshaller u = jc.createUnmarshaller();
			cfgProject = (CfgProject) u.unmarshal(file);
			
			ConnectionMappingManager manager = new ConnectionMappingManager(cfgProject);
			EplProject project = new EplProject(cfgProject, file);
			project.setMappingManager(manager);
			manager.pushMappingsToProject(project);
			project.getAliasManager().syncToProject(project);
			
			project.setProjectFile(file);
			return project; 
		} catch (JAXBException e) {
			e.printStackTrace();
		}
		return null;
	}
	
}
