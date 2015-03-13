package servlet.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import tools.VeDate;
import bean.Smallcategory;
import bean.User;
import db.*;

public class NewSmallCategoryServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("gbk");
		Smallcategory sc=new Smallcategory();
		sc.setCatId(Integer.parseInt(request.getParameter("catId")));
		sc.setSmallName(request.getParameter("smallName"));
		sc.setSmallNote(request.getParameter("smallNote"));
		ControlSmallcategory cs=new ControlSmallcategory();
		Connection conn=cs.getConn();
		int i=cs.insertSmallcategory(sc, conn);
		cs.closeConn(conn);
		String url="";
		if(i>0){
			url="../fk.jsp";
			request.setAttribute("fk", "小类别插入成功");
		}else{
			url="../fk.jsp";
			request.setAttribute("fk", "小类别插入失败，请检查服务器设置！");
		}
		
		
			
		
		
		request.getRequestDispatcher(url).forward(request, response);
	}

}
