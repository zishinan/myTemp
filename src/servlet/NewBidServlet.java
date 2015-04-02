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
import bean.Bid;
import bean.Task;
import bean.User;
import db.ControlBid;
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
		String title = request.getParameter("title");
		String taskContent = request.getParameter("taskContent");
		ControlBid controlBid = new ControlBid();
		Bid b = new Bid();
		b.setMessage(title);
		b.setReply(taskContent);
		User user = (User)request.getSession().getAttribute("user");
		if(user!=null){
			b.setServerName(user.getUserName());
		}
		controlBid.insertBid(b);
		response.sendRedirect("newBId.jsp");
	}
}

