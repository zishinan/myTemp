package servlet.witkey;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.*;
import java.sql.*;

import db.*;
import bean.*;

public class NewhuiyuanServlet extends HttpServlet {

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		String userName=request.getParameter("username");
		String pwd=request.getParameter("pwd");
		String realName=request.getParameter("realname");
		String email=request.getParameter("email");
		String phonenumber=request.getParameter("phonenumber");
		User u=new User();
		u.setUserName(userName);
		u.setUserPwd(pwd);
		u.setRealName(realName);
		u.setEmail(email);
		u.setPhoneNumber(phonenumber);
		ControlUser cu=new ControlUser();
		Connection conn=cu.getConn();
		
		int userId=cu.insertUsers(u);
		u.setUserId(userId);
		System.out.println("插入返回值"+userId);
		int id=cu.getListInsertId(conn);
		u.setUserId(id);
		//u.setUserId(id);
		System.out.println("ddd"+id);
		cu.closeConn(conn);

		String url="../";
		if(userId== -1){
			request.setAttribute("fk", "用户："+u.getUserName()+"已经存在！");
			url+="fk.jsp";
		}
		else if(userId>0){
			HttpSession session = request.getSession();
				session.setAttribute("user", u);
				url+="Witkey/finishLogon.jsp";
		}
		else {}
		
		request.getRequestDispatcher(url).forward(request, response);
	}
}


