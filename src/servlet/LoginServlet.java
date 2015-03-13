package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.User;

import db.ControlUser;

public class LoginServlet extends HttpServlet
{

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{

		request.setCharacterEncoding("gbk");
		String userName = request.getParameter("userName");
		String userPwd = request.getParameter("userPwd");
		System.out.println(userName);
		System.out.println(userPwd);
		ControlUser cu = new ControlUser();
		//int i = cu.isUser(userName, pwd);
		//User u = (User) cu.getUserNameAndGetPwd(userName, pwd);
		User u=cu.getUserNameAndGetPwd(userName, userPwd);

		//String fk = "";
		if (u != null)
		{
			//fk += "µÇÂ½³É¹¦"
			HttpSession session = request.getSession();
			session.setAttribute("user", u);
			//request.getSession(true).setAttribute("user", u);
			String url = "../";
			if (((bean.User) u).getUserState() == 0)
			{
				url += "admin";
			} else if (((bean.User) u).getUserState() == 1)
			{
				url += "manager";
			} 

			url += "/index.jsp";

			response.sendRedirect(url);
		} else
		{
			
			 response.sendRedirect("../login.jsp");
		}
		//String url = "../fk.jsp";
		//request.setAttribute("fk", fk);
		//request.getRequestDispatcher(url).forward(request, response);	}
	}
}

