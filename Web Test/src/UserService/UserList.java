package UserService;

import java.util.ArrayList;

import userjdbc.MYSQL;
import JavaBean.User;

public class UserList {
    public static ArrayList<User> getUserList(){
    	String sql="select * from chat_user;";
		return MYSQL.getArrayList(User.class,sql);
    }

    
}
