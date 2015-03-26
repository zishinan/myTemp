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
import bean.Task;
import bean.User;
import db.ControlTask;
import db.ControlUser;

@WebServlet("/newBidServlet")
public class NewBidServlet extends HttpServlet
{

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		response.setCharacterEncoding("gbk");
		request.setCharacterEncoding("gbk");
		String taskId = request.getParameter("taskId");
		int id = 0;
		if(taskId != null && taskId.length() > 0){
			id = Integer.parseInt(taskId);
		}
		
		User user = (User) request.getSession().getAttribute("user");
		ControlTask ct = new ControlTask();
		Task task = ct.getTaskByTaskId(id);
		if(task.getUserId() == user.getUserId()){
			ServletUtil.alert(response, "不能投自己的需求.", "sitemap.jsp");
		}
		request.getSession().setAttribute("user", user);
		request.getSession().setAttribute("taskId", id);
		response.sendRedirect("newBId.jsp");
	}
}

