package servlet.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.User;
import db.ControlUser;

public class LogonServlet extends HttpServlet
{


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{

		request.setCharacterEncoding("UTF-8");
		String userName = request.getParameter("userName");
		String userPwd = request.getParameter("userPwd");
		System.out.println(userName);
		System.out.println(userPwd);
		ControlUser cu = new ControlUser();
		//int i = cu.isUser(userName, pwd);
		//User u = (User) cu.getUserNameAndGetPwd(userName, pwd);
		User u=cu.getUserNameAndGetPwd(userName, userPwd);

		//String fk = "";
		String url = "../";
		if (u != null)
		{
			//fk += "µÇÂ½³É¹¦"
			HttpSession session = request.getSession();
			session.setAttribute("user", u);
			System.out.print("jjj"+u.getRealName());
			//request.getSession(true).setAttribute("user", u);
		
			if ( u.getUserState() == 0)
			{
				url += "admin/index.jsp";
			} else if (u.getUserState() == 1)
			{
				url += "Witkey/home page.jsp";
			} 
		} else
		{
			
			 response.sendRedirect("../Witkey/home page.jsp");
		}
		//String url = "../fk.jsp";
		//request.setAttribute("fk", fk);
		request.getRequestDispatcher(url).forward(request, response);	
	}
}


