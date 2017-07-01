package UserService;

import userjdbc.MYSQL;
import JavaBean.User;

public class userservice {

	public static boolean us(String name,String pwd){
		String sql="select * from chat_user where name='"+name+"' and pwd='"+pwd+"';";
		return MYSQL.exist(sql);
	}
	public static  User getUserByname(String name){
		String sql="select * from chat_user where name='"+name+"'";
		return MYSQL.getArrayList(User.class,sql).get(0);
	}

}
