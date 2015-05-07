package cz.rexcontrols.epl.editor.cdc;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.logging.Level;
import java.util.logging.Logger;

import cz.rexcontrols.epl.editor.*;
import cz.rexcontrols.epl.editor.cdc.CdcBinaryStream;
import cz.rexcontrols.epl.editor.cdc.CdcTextStream;

public class CdcGenerator {
	
	EplProject project;
	Logger log;
	
	public CdcGenerator(EplProject project)
	{
		this.project = project;
		log = Logger.getLogger(CdcGenerator.class.getCanonicalName());
		log.setParent(Logger.getLogger(Logger.GLOBAL_LOGGER_NAME));
		log.setLevel(Level.ALL);
	}
	
	
	/********************************************************************
	 * @throws IOException
	 */

	public void GenerateCdc() throws IOException {
		log.fine("Generating REX cdc file (mnobd.txt, mnobd.cdc) for: " + project.getProjectName());
		EplNode mn = (EplNode)project.getProfile(240);
		EplNode cn[] = new EplNode[240];
		
		FileOutputStream foutT = new FileOutputStream(project.getProjectDir().concat(File.separator).concat("mnobd.txt"));
		FileOutputStream foutB = new FileOutputStream(project.getProjectDir().concat(File.separator).concat("mnobd.cdc"));
		
		CdcTextStream mnStreamT = new CdcTextStream();
		CdcBinaryStream mnStreamB = new CdcBinaryStream();
		
		int cycleLen;
		Date epoch = new GregorianCalendar(1984, 1, 1, 0, 0).getTime();
		Date now = new Date();
		long diff = now.getTime() - epoch.getTime();
		
		
		long cfgDate = diff / (1000 * 60 * 60 * 24);
		long cfgTime = diff %  (1000 * 60 * 60 * 24);

		
		for (int i=1; i < 240; i++) {
			cn[i] = (EplNode) project.getProfile(i);
		}
		
		if (mn == null)
			return;
		
		/* TODO - text field for cycle length */
		cycleLen = mn.getObject(0x1006, 00).getValueAsInt();
		
		mn.setObjectValue(0x1006, 0, cycleLen, true, true);
		
		for (int i=1; i < 240; i++) {
			if (cn[i] != null) {
				/* 1F81 */
				mn.setObjectValue(0x1F81, i, 0x07, true, true);

				/* 1F26,7 */
				mn.setObjectValue(0x1F26, i, cfgDate, true, true);

				/* 1F26,7 */
				mn.setObjectValue(0x1F27, i, cfgTime, true, true);
				
				/* NMT_MNPReqPayloadLimitList_AU16 */
				mn.setObjectValue(0x1F8B, i, 0x5d2, true, true);

				/* NMT_PResPayloadLimitList_AU16 */
				mn.setObjectValue(0x1F8D, i, 0x5d2, true, true);
				
				cn[i].setObjectValue(0x1006, 0, cycleLen, true, true);
				cn[i].setObjectValue(0x1020, 1, cfgDate, true, true);
				cn[i].setObjectValue(0x1020, 2, cfgTime, true, true);

				cn[i].setObjectValue(0x1F98, 7, 0, true, true);
//				cn[i].setObjectValue(0x1F98, 8, 0x12C, true, true);
			} else {
				/* 1F81 */
				mn.setObjectExportable(0x1F81, i, false);

				/* 1F26,7 */
				mn.setObjectExportable(0x1F26, i, false);

				/* 1F26,7 */
				mn.setObjectExportable(0x1F27, i, false);
				
				/* NMT_MNPReqPayloadLimitList_AU16 */
				mn.setObjectExportable(0x1F8B, i, false);

				/* NMT_PResPayloadLimitList_AU16 */
				mn.setObjectExportable(0x1F8D, i, false);
			}
		}
		
		mnStreamT.writeNode(mn);
		mnStreamT.nextPass();
		mnStreamT.writeNode(mn);

		mnStreamB.writeNode(mn);
		mnStreamB.nextPass();
		mnStreamB.writeNode(mn);

		for (int i=1; i < 240; i++) {
			EplNode en = (EplNode) project.getProfile(i);
			
			if (en != null) {
				CdcTextStream tst = new CdcTextStream();
				tst.writeNode(en);
				tst.nextPass();
				tst.writeNode(en);
				mnStreamT.writeComment(String.format("Configuration for CN %d", i));
				mnStreamT.writeObject(0x1F22, i, tst);

				CdcBinaryStream bst = new CdcBinaryStream();
				bst.writeNode(en);
				bst.nextPass();
				bst.writeNode(en);
				mnStreamB.writeObject(0x1F22, i, bst);
			}
		}
		mnStreamT.writeComment("Node reassignment");
		mnStreamT.resetPass();
		mnStreamB.resetPass();
		for (int i=1; i < 240; i++) {
			if (cn[i] != null) {
				mn.setObjectValue(0x1F81, i, 0x80000007, true, true);
				mnStreamT.writeObject(mn.getSubindex(0x1F81, i));
				mnStreamB.writeObject(mn.getSubindex(0x1F81, i));
			}
		}	
		
		CdcTextStream finStreamT = new CdcTextStream();
		CdcBinaryStream finStreamB = new CdcBinaryStream();

		finStreamT.writeData(mnStreamT, false);
		finStreamB.writeData(mnStreamB, false);

		finStreamB.writeTo(foutB);
		finStreamT.writeTo(foutT);
		
		foutB.close();
		foutT.close();

		log.fine("Done");
	}
}
