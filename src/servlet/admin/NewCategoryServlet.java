package servlet.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import bean.*;
import db.*;

public class NewCategoryServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("gbk");
		String catName=request.getParameter("catName");
		String catNote=request.getParameter("catNote");
		Category cat=new Category();
		cat.setCatName(catName);
		cat.setCatNote(catNote);
		ControlCategory ccat=new ControlCategory();
		String fk="��Ŀ:["+catName+"]";
		int i=ccat.insertCategory(cat);//������Ŀ
		if(i==-1){
			fk += "�Ѿ����ڣ���˲���ʧ��";
			
		}
		else if(i==0){
			fk += "����ʧ��";
		}
		else{
			fk += "����ɹ�";
		}
		String url="../fk.jsp";
		request.setAttribute("fk", fk);
		request.getRequestDispatcher(url).forward(request, response);
		
	}

}
