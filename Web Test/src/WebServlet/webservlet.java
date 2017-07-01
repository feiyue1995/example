package WebServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import JavaBean.User;
import UserService.ListMsg;
import UserService.UserList;
import UserService.userservice;

import com.alibaba.fastjson.JSON;

public class webservlet extends HttpServlet {

	static ArrayList<String> list =new ArrayList<String>();

	/**
	 * Constructor of the object.
	 */
	public webservlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the GET method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out=response.getWriter();
		
		String method=request.getParameter("method").trim();
		
		if(method.equals("userservice"))                      //��½
		{
		String na=request.getParameter("name").trim();
		String ag=request.getParameter("age").trim();
		if(na.equals("")||ag.equals("")||na.equals(null)||ag.equals(null))
		{
			out.print("�û������벻��Ϊ��");
		}
		else if(userservice.us(na,ag))
		{
			out.print("ok");
			request.getSession().setAttribute("user", na);
		}
		else
		{
			out.print("�û����������");
		}
		}
		
		if(method.equals("UserList"))              //�û��б�
		{
			ArrayList aa= UserList.getUserList();
			String res=JSON.toJSONString(aa);
			out.print(res);
		}
		
		if(method.equals("sender"))             //������͵����
		{
		String send=request.getParameter("word");
		list.add(send);
		}
		
		if(method.equals("geter"))            //��ʾ����ʾ��
		{
			System.out.println("������˧��");
		String str=JSON.toJSONString(list);
		out.print(str);
		}

		if(method.equals("getusername"))           //��ȡ����
		{
			String name=(String) request.getSession().getAttribute("user");
			User p=userservice.getUserByname(name);
			String us=JSON.toJSONString(p);
			out.print(us);
		}
		
		out.flush();
		out.close();
	}

	

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
