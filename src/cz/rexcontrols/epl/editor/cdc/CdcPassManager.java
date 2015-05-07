package cz.rexcontrols.epl.editor.cdc;

public class CdcPassManager {
	public static String getObjectValueByPass(int index, int subindex, int pass, String val) {
		if  ( ((index >= 0x1600) && (index <= 0x16FF)) ||
			  ((index >= 0x1A00) && (index <= 0x1AFF)) ) {
			if (subindex == 0) {
				if (pass == 0) 
					return "0";
				if (pass == 1)
					return val;
				else
					return null;
			}
		}
		
		/* 1F98/5,7 - don't export if zero */
		/* causes troubles for BR */
		if (index == 0x1F98) {
			if ((subindex == 4) || (subindex == 5)) {
				if (Integer.decode(val) == 0)
					return null;
			}
		}

		if (pass == 0)
			return val;
		else
			return null;
	}
}
