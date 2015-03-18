package servlet.witkey;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.ControlUser;

import bean.User;

public class RegisterServerdataServlet extends HttpServlet
{

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		request.setCharacterEncoding("gbk");
		
		User u=(User)request.getAttribute("user"); 
		//String userName=u.getUserName();
		//int id=Integer.parseInt(request.getParameter("id"));
		//System.out.print("hh"+id);
		//从serverdata.jsp页面忽的用户输入信息
		String userName=request.getParameter("userName");
		System.out.print("从serverdata的页面获得名字"+userName);
		
		int serverState=Integer.parseInt(request.getParameter("serverState"));
		String realName=request.getParameter("realName");
		System.out.print("realName"+realName);
		int sex= Integer.parseInt(request.getParameter("sex"));
		String serverName=request.getParameter("serverName");
		String serverNote=request.getParameter("serverNote");
		String userAddress=request.getParameter("userAddress");
		String email=request.getParameter("email");
		String phoneNumber=request.getParameter("phoneNumber");
		
		
		//封装在下面
		User u1=new User();
		u1.setUserName(userName);
		u1.setServerState(serverState);
		u1.setRealName(realName);
		u1.setSex(sex);
		u1.setServerName(serverName);
		u1.setServerNote(serverNote);
		u1.setUserAddress(userAddress);
		u1.setEmail(email);
		u1.setPhoneNumber(phoneNumber);
		
		
		String url = "　";
		//String fk="";
		ControlUser cu=new ControlUser();
		//int i=cu.insertUser(u1);
		int i=cu.updateUsers(serverState, userName, sex, phoneNumber, serverName, serverNote, userAddress, email, realName);
		if(i>0){
			url += "../Witkey/task.jsp";
		}else{
			url += "../Witkey/logon.jsp";
		}
		
	}
}
