package servlet.admin;

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

@WebServlet("/admin/adminLoginServlet")
public class AdminLoginServlet extends HttpServlet
{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		response.setCharacterEncoding("gbk");
		request.setCharacterEncoding("gbk");
		String userName = request.getParameter("userName");
		String userPwd = request.getParameter("userPwd");
		System.out.println(userName);
		System.out.println(userPwd);
		ControlUser cu = new ControlUser();
		User u=cu.getUserNameAndGetPwd(userName, userPwd);
		if(u == null){
			ServletUtil.alert(response, "输入的用户名或密码不正确","/admin/login.jsp");
			return;
		}
		if(u.getUserState() != 0){
			ServletUtil.alert(response, "对不起，您不是管理员","/admin/login.jsp");
			return;
		}

		HttpSession session = request.getSession();
		session.setAttribute("user", u);
		response.sendRedirect("/admin/index.jsp");
		
	}

}


