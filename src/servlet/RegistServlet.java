package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tools.ServletUtil;

import com.mysql.jdbc.StringUtils;

import bean.User;
import db.ControlUser;

@WebServlet("/registServlet")
public class RegistServlet extends HttpServlet
{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		response.setCharacterEncoding("gbk");
		request.setCharacterEncoding("gbk");
		String userName=request.getParameter("username");
		String pwd=request.getParameter("pwd");
		String pwd2=request.getParameter("pwd2");
		String fk = "";
		if(StringUtils.isNullOrEmpty(pwd) || StringUtils.isNullOrEmpty(pwd2)||StringUtils.isNullOrEmpty(userName)){
			ServletUtil.alert(response, "输入信息不完整","logon.jsp");
			return;
		}
		if(!pwd.equals(pwd2)){
			ServletUtil.alert(response, "密码不一致","logon.jsp");
			return;
		}
		String realName=request.getParameter("realname");
		String email=request.getParameter("email");
		String phonenumber=request.getParameter("phonenumber");
		User u=new User();
		u.setUserName(userName);
		u.setUserPwd(pwd);
		u.setRealName(realName);
		u.setEmail(email);
		u.setPhoneNumber(phonenumber);
		ControlUser cu=new ControlUser();
		Connection conn=cu.getConn();
		
		int userId=cu.insertUsers(u);
		u.setUserId(userId);
		System.out.println("插入返回值"+userId);
		int id=cu.getListInsertId(conn);
		u.setUserId(id);
		//u.setUserId(id);
		System.out.println("ddd"+id);
		cu.closeConn(conn);

		String url="";
		if(userId== -1){
			ServletUtil.alert(response, "用户："+u.getUserName()+"已经存在！","logon.jsp");
			return;
		}
		else if(userId>0){
			HttpSession session = request.getSession();
				session.setAttribute("user", u);
				url+="finishLogon.jsp";
		}
		
		request.getRequestDispatcher(url).forward(request, response);
	}

}

