package servlet.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.ControlCategory;
import db.ControlUser;

@WebServlet("/deleteCategory")
public class DeleteCategory extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		String fk="";
		ControlCategory ccat=new ControlCategory();
		int i=ccat.deleteCatById(id);
		if(i>0){
			fk+="ɾ���ɹ���";
		}else{
			fk+="ɾ��ʧ�ܣ�";
		}
		String url="../fk.jsp";
		request.setAttribute("fk",fk );
		request.getRequestDispatcher(url).forward(request, response);
		
		
   
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
	}

}
