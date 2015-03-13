package servlet.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Category;
import db.ControlCategory;

@WebServlet("/newCategoryServlet")
public class NewCategoryServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("gbk");
		request.setCharacterEncoding("gbk");
		String catName = request.getParameter("catName");
		String catNote = request.getParameter("catNote");
		Category cat = new Category();
		cat.setCatName(catName);
		cat.setCatNote(catNote);
		ControlCategory ccat = new ControlCategory();
		String fk = "��Ŀ:[" + catName + "]";
		int i = ccat.insertCategory(cat);// ������Ŀ
		if (i == -1) {
			fk += "�Ѿ����ڣ���˲���ʧ��";

		} else if (i == 0) {
			fk += "����ʧ��";
		} else {
			fk += "����ɹ�";
		}
		System.out.println(fk);
		try {
			PrintWriter out = response.getWriter();

			out.print("<script>alert('" + fk + "')</script>");
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
