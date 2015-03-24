package servlet.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tools.ServletUtil;
import bean.*;
import db.*;

@WebServlet("/alterCategoryServlet")
public class AlterCategoryServlet extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("gbk");
		response.setCharacterEncoding("gbk");
		String catName=request.getParameter("catName");
		String catNote=request.getParameter("catNote");
		Category cat=new Category();
		cat.setCatName(catName);
		cat.setCatNote(catNote);
		ControlCategory ccat=new ControlCategory();
		String fk="��Ŀ:["+catName+"]";
		int i=ccat.insertCategory(cat);//������Ŀ
		
		if(i==-1){
			fk += "�Ѿ����ڣ�����޸�ʧ��";
			ServletUtil.alert(response, fk, "/admin/index.jsp");
			return;
		}
		else if(i==0){
			fk += "�޸�ʧ��";
			ServletUtil.alert(response, fk, "/admin/index.jsp");
			return;
		}
		else{
			fk += "�޸ĳɹ�";
			ServletUtil.alert(response, fk, "/admin/index.jsp");
			return;
		}
	}

}
