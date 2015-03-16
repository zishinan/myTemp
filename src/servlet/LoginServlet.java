package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tools.ServletUtil;
import bean.User;
import db.ControlUser;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet
{

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		String userName = request.getParameter("username");
		System.out.println("login: "+userName);
		String userPwd = request.getParameter("pwd");
		ControlUser cu = new ControlUser();
		User u=cu.getUserNameAndGetPwd(userName, userPwd);
		if(u == null){
			ServletUtil.alert(response, "您输入的用户名或密码不正确！", "login.jsp");
			return;
		}
		HttpSession session = request.getSession();
		session.setAttribute("user", u);
		System.out.println(u.getUserState());
		response.sendRedirect("index.jsp");
		
	}
}

