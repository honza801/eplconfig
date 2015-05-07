package cz.rexcontrols.epl.editor.pdo;

import java.util.logging.Level;
import java.util.logging.Logger;

import cz.rexcontrols.epl.editor.*;

public class MappingGenerator {
	EplProject project;
	private Logger log;
	private NodeChannelManager channelManagers[] = new NodeChannelManager[256];
	
	public MappingGenerator(EplProject project) {
		this.project = project;
		log = Logger.getLogger(this.getClass().getCanonicalName());
		log.setParent(Logger.getLogger(Logger.GLOBAL_LOGGER_NAME));
		log.setLevel(Level.FINEST);
		
		for (int i = 1; i < 256; i ++) {
			EplNode node = (EplNode) project.getProfile(i);
			if (node != null) {
				channelManagers[i] = new NodeChannelManager(node);			
			}
		}
	}
	
	protected String miToString(MappingInterface mi) {
		return "Connection \"" + mi.getMappingName() + "\": ";
	}

	protected String mateToString(BaseNodeInterface bi) {
		return bi.toFullString();
	}
	
	protected boolean generatePdo() {
		for (MappingInterface mi: project.getMappingManager().getMappingList())
		{
			BaseNodeInterface srci = mi.getFirstSource();
			if ((srci == null) || (srci.getParentProfile() == null)) {
				log.warning(miToString(mi) + "source not specified!");
				continue;
			}
			int txNodeId = srci.getParentProfile().getProfileId();
			NodeChannelManager txManager = channelManagers[txNodeId];
			
			if (txManager != null) {
				for (BaseNodeInterface dsti : mi.getDestination()) {
					int rxNodeId = dsti.getParentProfile().getProfileId();
					NodeChannelManager rxManager = channelManagers[rxNodeId];
					if (rxManager != null) {
						boolean txFirst = !EplDomain.class.isInstance(dsti);
						NodeChannelManager manager1, manager2;
						BaseNodeInterface mate1, mate2;
					
						if (txFirst) {
							manager1 = txManager;
							manager2 = rxManager;
							mate1 = srci;
							mate2 = dsti;
						} else {
							manager1 = rxManager;
							manager2 = txManager;
							mate1 = dsti;
							mate2 = srci;
						}
					
						ChannelEntry entry1 = manager1.mapObjectPdo(mate1, mate2.getParentProfile().getProfileId(), -1, -1, txFirst);
						int matelength;
						
						if (EplDomain.class.isInstance(mate1)) {
							matelength = ((EplDomain)mate1).getActualSizeInBits();
						} else {
							matelength = entry1.length;
						}
							
		
						if (entry1 != null) {
							int mateoffset = entry1.offset;
							
							if (EplDomain.class.isInstance(mate1)) {
								mateoffset += ((EplDomain)mate1).getOffset();
							}
						
							ChannelEntry entry2 = manager2.mapObjectPdo(mate2, mate1.getParentProfile().getProfileId(),
								mateoffset, matelength, !txFirst);
							if (entry2 == null) {
								log.warning(miToString(mi) + "second pass failed for " + mateToString(mate2));
							}
						} else {
							log.warning(miToString(mi) + "first pass failed for " + mateToString(mate1));
						}
					} else {
						log.warning(miToString(mi) + "not RX PDO manager for node " + Integer.toString(txNodeId)); 
					}
				}
			} else {
				log.warning(miToString(mi) + "not TX PDO manager for node " + Integer.toString(txNodeId));
			}
		}
		return true;
	}
	
	protected void setPayloads() {
		int size;
		
		for (int i = 1; i < 240; i ++) {
			NodeChannelManager manager = channelManagers[i];
			
			if (manager == null)
				continue;

			/* set PResSize */
			PdoChannel channel = manager.getChannel(true, 0);
			if (channel == null)
				size = 0;
			else
				size = (channel.getSize() + 7) / 8;
			manager.getNode().setObjectValue(0x1F98, 5, size, true, true);

			/* set PReqSize */
			channel = manager.getChannel(false, 0);
			if (channel == null)
				size = 0;
			else
				size = (channel.getSize() + 7) / 8;
			manager.getNode().setObjectValue(0x1F98, 4, size, true, true);
		}
	}
	
	public void generateMapParams() {
		generatePdo();
		setPayloads();
	}
	
	public void writeToOd() {
		for (int i = 1; i < 256; i ++) {
			NodeChannelManager manager = channelManagers[i];
			if (manager != null) {
				manager.writeToOd();
			}
		}
	}
}
