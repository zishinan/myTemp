package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.User;
import db.ControlUser;

@WebServlet("/registServlet")
public class RegistServlet extends HttpServlet
{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{

		request.setCharacterEncoding("UTF-8");
		String userName=request.getParameter("username");
		String pwd=request.getParameter("pwd");
		String pwd2=request.getParameter("pwd2");
		if(pwd == null || pwd2 == null){
			request.setAttribute("fk", "������Ϣ������");
			request.getRequestDispatcher("fk.jsp").forward(request, response);
			return;
		}
		if(!pwd.equals(pwd2)){
			request.setAttribute("fk", "���벻һ��");
			request.getRequestDispatcher("fk.jsp").forward(request, response);
			return;
		}
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
		System.out.println("���뷵��ֵ"+userId);
		int id=cu.getListInsertId(conn);
		u.setUserId(id);
		//u.setUserId(id);
		System.out.println("ddd"+id);
		cu.closeConn(conn);

		String url="";
		if(userId== -1){
			request.setAttribute("fk", "�û���"+u.getUserName()+"�Ѿ����ڣ�");
			url+="fk.jsp";
		}
		else if(userId>0){
			HttpSession session = request.getSession();
				session.setAttribute("user", u);
				url+="finishLogon.jsp";
		}
		
		request.getRequestDispatcher(url).forward(request, response);
	}
}

