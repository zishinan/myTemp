package servlet.witkey;


import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tools.VeDate;

import db.*;

import bean.*;


public class FinishLogonServlet extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		User u=(User)req.getSession(true).getAttribute("user");
        Task t =new Task();
        int catId = Integer.parseInt(req.getParameter("catId"));
        System.out.println("yyy"+catId);
        ControlSmallcategory smallcat = new ControlSmallcategory();
        Smallcategory c=smallcat.getSmallcategorysById(catId);
        int smallId=c.getSmallId();
        System.out.println("ddddd"+c.getSmallId());
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
        ControlTask at=new ControlTask();	
        String fk="";
			 int i=at.insertTasks(t);
			 String url="../";
			 if(i>0){
				req.setAttribute("Task", t);
				url+="Witkey/article.jsp";
			}else {
			
					req.setAttribute("Task", t);
				    url+="fk.jsp";
				    }
	   
			req.getRequestDispatcher(url).forward(req, resp);
		}
 		
 	}


