package servlet.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.ControlCategory;
import db.ControlSmallcategory;
import db.ControlUser;

public class DeletesmallcategoryServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		String fk="";
		ControlSmallcategory ccat=new ControlSmallcategory();
		int i=ccat.deleteCatById(id);
		if(i>0){
			fk+="É¾³ý³É¹¦£¡";
		}else{
			fk+="É¾³ýÊ§°Ü£¡";
		}
		String url="../fk.jsp";
		request.setAttribute("fk",fk );
		request.getRequestDispatcher(url).forward(request, response);
		
		
   
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
	}

}
