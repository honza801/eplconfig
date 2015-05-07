package cz.rexcontrols.epl.editor.mdl;
import java.io.*;

public class MdlFile {
	private FileOutputStream fis;
	private BufferedOutputStream bis;
	private DataOutputStream dis;
	
	int mdlLevel;
	
	private void indent() throws IOException
	{
		for (int i = 0; i < mdlLevel * 2; i++)
			dis.writeByte(' ');
	}
	
	public MdlFile(File file) throws IOException
	{
		fis = new FileOutputStream(file); 
		bis = new BufferedOutputStream(fis); 
		dis = new DataOutputStream(bis);
	}
	
	public void close() throws IOException
	{
		dis.close();
	}
	
	public void beginObject(String name) throws IOException
	{
		indent();
		dis.writeBytes(name+" {\n");
		dis.flush();
		
		mdlLevel ++;
	}
	
	public void endObject() throws IOException
	{
		mdlLevel --;
		indent();
		dis.writeBytes("}\n");
		dis.flush();
	}
	
	public void writeProperty(String name, String value) throws IOException
	{
		indent();
		dis.writeBytes(name + " \"" + value + "\"\n");
	}

	public void writeProperty(String name, int value) throws IOException
	{
		indent();
		dis.writeBytes(name + " \"" + String.valueOf(value) + "\"\n");
	}

	public void writeProperty(String name, double value) throws IOException
	{
		indent();
		dis.writeBytes(name + " \"" + String.valueOf(value) + "\"\n");
	}

	public void writeProperty(String name, String format, Object... args) throws IOException
	{
		indent();
		dis.writeBytes(name + " \"" + String.format(format, args) + "\"\n");
	}

}
