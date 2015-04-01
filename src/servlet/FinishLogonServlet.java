package servlet;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tools.ServletUtil;
import tools.VeDate;
import db.*;
import bean.*;

@WebServlet("/finishLogonServlet")
public class FinishLogonServlet extends HttpServlet {
	private static final long serialVersionUID = -8924282724385257730L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("gbk");
		resp.setCharacterEncoding("gbk");
		User u = (User) req.getSession(true).getAttribute("user");
		Task t = new Task();
		int catId = Integer.parseInt(req.getParameter("catId"));
		String smallIdString = req.getParameter("smallId");
		System.out.println("smallId is :"+smallIdString);
		int smallId = Integer.parseInt(smallIdString);
		t.setCatId(catId);
		t.setTitle(req.getParameter("title"));
		t.setTaskContent(req.getParameter("taskContent"));
		t.setTime(req.getParameter("time"));
		t.setMoney(req.getParameter("money"));
		t.setBonusState(0);
		t.setWay(0);
		t.setNumber(0);
		t.setTaskState(false);
		t.setStartTime(VeDate.getStringDate());
		t.setUpload("");
		t.setUserId(0);
		t.setSmallId(smallId);
		t.setUId(u.getUserId());
		ControlTask at = new ControlTask();
		int i = at.insertTasks(t);
		if (i <= 0) {
			ServletUtil.alert(resp, "²åÈëÊý¾ÝÊ§°Ü", "index.jsp");
			return;
		}
		
		req.setAttribute("Task", t);
		String url = "mine.jsp";
		System.out.println(url);
		req.getRequestDispatcher(url).forward(req, resp);
	}

}
