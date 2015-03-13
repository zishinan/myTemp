package servlet;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tools.VeDate;

import bean.Smallcategory;
import bean.Task;

import com.google.gson.Gson;

import db.*;

@WebServlet("/sortQueryServlet")
public class SortQueryServlet extends HttpServlet 
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException 
	{
		String method = req.getParameter("method");
		ControlCategory category = new ControlCategory();
		
		if("category".equals(method))
		{
			Collection coll = category.getAllCats();
			
			write2Jsp(resp, coll);
		}
		else if("smallcat".equals(method))
		{
			int catId = Integer.parseInt(req.getParameter("catId"));
			System.out.println("id"+catId);
			ControlSmallcategory smallcat = new ControlSmallcategory();
			Collection coll = smallcat.getSmallcategoryById(catId);
			write2Jsp(resp, coll);
		}
		
	}

	private void write2Jsp(HttpServletResponse resp, Collection coll)
			throws IOException {
		//处理缓存文件
		resp.setContentType("application/json; charset=utf-8");
		resp.setHeader("pragma", "no-cache");
		resp.setHeader("cache-control", "no-cache");
		
		Gson gson = new Gson();
		String result = gson.toJson(coll);
		
		PrintWriter out = resp.getWriter();
		out.print(result);
		out.flush();
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException 
	{
		this.doGet(req, resp);
		  
	}
}

