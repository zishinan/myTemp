package servlet.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.*;
import db.*;

public class UpDateUserServlet extends HttpServlet
{

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{

		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		request.setCharacterEncoding("gbk");
		//User u=(User)request.getSession(true).getAttribute("user");
		
		
		int userid=Integer.parseInt(request.getParameter("userid"));
		System.out.print("oo"+userid);
		String userName=request.getParameter("userName");
		String realName=request.getParameter("realName");
		String phoneNumber=request.getParameter("phoneNumber");
		//String count=request.getParameter("count");
		//String email=request.getParameter("email");
		//String userAddress=request.getParameter("userAddress");
		//String serverName=request.getParameter("serverName");
		//String serverNote=request.getParameter("serverNote");
		//String smallName=request.getParameter("smallName");
		//int userState=Integer.parseInt(request.getParameter("userState"));
		//int sex=Integer.parseInt(request.getParameter("sex"));
		//int taskCount=Integer.parseInt(request.getParameter("taskCount"));
		//int bidCount=Integer.parseInt(request.getParameter("bidCount"));
		//int resultCount=Integer.parseInt(request.getParameter("resultCount"));
		
		
		
		
		
		String fk="";
		
		
		
		ControlUser cu=new ControlUser();
		
		int i=cu.updateUsers(userid, realName, phoneNumber);
		if(i>0){
			fk+="修改成功！";
		}else{
			fk+="修改失败！";
		}
		String url="../fk.jsp";
		request.setAttribute("fk", fk);
		request.getRequestDispatcher(url).forward(request, response);
		
		
	
	}

}
