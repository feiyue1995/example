package UserService;

import java.util.ArrayList;
import java.util.Iterator;

public class ListMsg {
	static ArrayList<String> bb=new ArrayList();
	public static void setMsg(String s)
	{
		bb.add(s);
	}
	public static ArrayList<String> getMsg()
	{
		return bb;
	}

}
