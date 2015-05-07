package cz.rexcontrols.epl.editor.mdl;

import java.io.File;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

import cz.rexcontrols.epl.editor.*;
import cz.rexcontrols.epl.editor.project.CfgAlias;

public class MdlGenerator {
	
	EplProject project;
	Logger log;
	
	public MdlGenerator(EplProject project)
	{
		this.project = project;
		log = Logger.getLogger(MdlGenerator.class.getCanonicalName());
		log.setParent(Logger.getLogger(Logger.GLOBAL_LOGGER_NAME));
		log.setLevel(Level.ALL);
	}
	
	private void writeNodeParams(MdlFile mdl, ProfileInterface p) throws IOException
	{
		mdl.writeProperty("NodeID", p.getProfileId());
		mdl.writeProperty("CycleLength", p.getObject(0x1006, 0).getValueAsInt());
	}
	
	private void writeSubindexes(MdlFile mdl, EplIndex oi) throws IOException
	{
		for (EplSubindex si : oi.getChildSubObjects())
		{
			mdl.beginObject("EplSubindex");
			mdl.writeProperty("Name", si.getName());
			if (si.getAlias() != null) {
				mdl.writeProperty("Name", si.getAlias());
			}
			mdl.writeProperty("Subindex", "0x%02X", si.getIndex());
			mdl.writeProperty("DataType", DataType.getIndex(si.getDataType()));
			mdl.writeProperty("DataLength", si.getDataLength());
			mdl.writeProperty("Read", si.getIsRead() ? 1:0);
			mdl.writeProperty("Write", si.getIsWrite() ? 1:0);
			mdl.writeProperty("PDO", PDOMappingType.isPDOMapped(si.getPDO()) ? 1:0);
			mdl.endObject();
		}
	}

	private void writeIndexes(MdlFile mdl, ProfileInterface pi) throws IOException
	{
		for (EplIndex oi : pi.getObjects()) 
		{
			if (oi.getIndex() >= 0x2000)
			{
				mdl.beginObject("EplIndex");
				mdl.writeProperty("Name", oi.getName());
				if (oi.getAlias() != null) {
					mdl.writeProperty("Name", oi.getAlias());
				}
				mdl.writeProperty("Index", "0x%04X", oi.getIndex());
				writeSubindexes(mdl, oi); 
				mdl.endObject();
			}
		}
	}
	
	private void writeAliases(MdlFile mdl, ProfileInterface pi) throws IOException {
		if (project.accessCfgProject().getCfgAliases() == null) {
			return;
		}
		int count = project.getAliasManager().getAliasesCount();
		for (int aliasi = 0; aliasi < count; aliasi++) {
			CfgAlias alias = project.getAliasManager().getAliasAt(aliasi);
			BaseNodeInterface bni = project.getAliasManager().getAliasNodeAt(aliasi);
			
			mdl.beginObject("Alias");
			mdl.writeProperty("Label", alias.getLabel());
			Integer i = alias.getDestination().getNode();
			if (i != null) {
				mdl.writeProperty("NodeID", i);
			}
			i = alias.getDestination().getIndex();
			if (i != null) {
				mdl.writeProperty("Index", "0x%04X", i);
			}
			i = alias.getDestination().getSubindex();
			if (i != null) {
				mdl.writeProperty("Subindex", "0x%02X", i);
			}
			i = alias.getDestination().getDomainPart();
			if (i != null) {
				mdl.writeProperty("DomainPart", i);
			}
			
			if (bni != null) {
				if (EplObject.class.isInstance(bni)) {
					mdl.writeProperty("DataType", DataType.getIndex(((EplObject)bni).getDataType()));
				}
				mdl.writeProperty("DataLength", bni.getDataLength());
			}
			mdl.endObject();
		}
	}
	
	private void exportProfileMdl(ProfileInterface p)
	{
		String s = project.getProjectDir().concat(File.separator) + "node" + String.format("%02X", p.getProfileId()) + ".rio";
		log.fine("Creating " + s);
		try	{
			MdlFile mdl = new MdlFile(new File(s));
			mdl.beginObject("Powerlink");
			writeNodeParams(mdl, p);
			writeIndexes(mdl, p);
			writeAliases(mdl, p);
			mdl.endObject();
			mdl.close();
		} catch (IOException e) 
		{
			log.fine("Error " + e.getMessage());
		}
		
	}
	
	public void GenerateMdl()
	{
		log.fine("Generating REX mdl files for " + project.getProjectName());
		
		for (ProfileInterface p : project.getEplProfiles())
		{
			if (p.isRexNode())
				exportProfileMdl(p);
				
		}
		
		log.fine("Done");
	}
}
