package servlet.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.*;

public class DeleteMembersServlet extends HttpServlet
{

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		int id=Integer.parseInt(request.getParameter("id"));
		String fk="";
		/*int state=Integer.parseInt(request.getParameter("state"));
		
		if(state==1){
			fk+="��Ŀ����Ա";
		}else if(state==2){
			fk+="����";
		}*/
		ControlUser cn=new ControlUser();
		int i=cn.delecteUserById(id);
		if(i>0){
			fk+="ɾ���ɹ�";
		}else{
			fk+="ɾ��ʧ��";
		}
		String url="../fk.jsp";
		request.setAttribute("fk", fk);
		request.getRequestDispatcher(url).forward(request, response);
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{

	}

}
