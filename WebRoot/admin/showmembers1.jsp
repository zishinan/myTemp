<%@ page language="java" import="java.util.*,db.*,bean.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>��ʾ���л�Ա1</title>
    
	

  </head>
  <%
  //int userId=1;
  ControlUser cu=new ControlUser();
  Collection c=cu.getAllUserByUserState();
  System.out.print("mm"+c);
  Iterator it=c.iterator();
   %>
  
  <body>
  <form name="form1" method="post" action="">
    <table width="95%" border="1" align="center">
      <tr>
        <td>�û���</td>
        <td>��ʵ����</td>
        <td>��ϵ�绰</td>
        <td>email</td>
       
      </tr>
      <%
      while(it.hasNext()){
      	User u=(User)it.next();
       %>
      <tr>
        <td><%=u.getUserName() %></td>
        <td><%=u.getRealName() %></td>
        <td><%=u.getPhoneNumber() %></td>
        <td><%=u.getEmail() %></td>
       
      </tr>
      <%} %>
    </table>
  </form>
    
  </body>
</html>
