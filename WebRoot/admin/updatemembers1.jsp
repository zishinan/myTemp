<%@ page language="java" import="java.util.*,db.*,bean.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>�޸Ļ�Ա��Ϣ</title>
    

  </head>
   <%
	int userid=Integer.parseInt(request.getParameter("userid"));
  ControlUser cu=new ControlUser();
  User u=cu.getAllUserById(userid);
 // System.out.print("nn"+c);
 // Iterator it=c.iterator();
   %>
  
  <body>
  <form name="form1" method="post" action="<%=basePath %>servlet/UpDateUserServlet?userid=<%=u.getUserId() %>">
    <table width="95%" border="1" align="right">
      <tr>
        <td>�û���</td>
        <td><label>
          <input type="text" name="userName" value="<%=u.getUserName() %>">
        </label></td>
      </tr>
      <tr>
        <td>��ʵ����</td>
        <td><label>
          <input type="text" name="realName" value="<%=u.getRealName() %>">
        </label></td>
      </tr>
      <tr>
        <td>��ϵ�绰</td>
        <td><label>
          <input type="text" name="phoneNumber" value="<%=u.getPhoneNumber() %>">
        </label></td>
      </tr>
      <tr>
        <td>֧�����˻�</td>
        <td><label>
          <input type="text" name="count" value="<%=u.getCount() %>">
        </label></td>
      </tr>
      <tr>
        <td>email</td>
        <td><label>
          <input type="text" name="email" value=""<%=u.getEmail() %>>
        </label></td>
      </tr>
      <tr>
        <td>��ϸ��ַ</td>
        <td><label>
          <input type="text" name="userAddress" value="<%=u.getUserAddress() %>">
        </label></td>
      </tr>
      <tr>
        <td>Ʒ����</td>
        <td><label>
          <input type="text" name="serverName" value="<%=u.getServerName() %>">
        </label></td>
      </tr>
      <tr>
        <td>���̽���</td>
        <td><label>
          <textarea name="serverNote"><%=u.getServerNote() %></textarea>
        </label></td>
      </tr>
      <tr>
        <td>С�������</td>
        <td><label>
          <input type="text" name="smallName" value="<%=u.getSmallName() %>">
        </label></td>
      </tr>
      <tr>
        <td>���</td>
        <td><label>
          <input type="text" name="userState" value=""<%=u.getUserState() %>>
        </label></td>
      </tr>
      <tr>
        <td>�Ա�</td>
        <td><label>
          <input type="radio" name="sex" value="<%=u.getSex() %>">
        �� 
        <input type="radio" name="sex" value="<%=u.getSex() %>">
        Ů</label></td>
      </tr>
      <tr>
        <td>������������</td>
        <td><label>
          <input type="text" name="taskCount" value="<%=u.getTaskCount() %>">
        </label></td>
      </tr>
      <tr>
        <td>Ͷ����������</td>
        <td><label>
          <input type="text" name="bidCount" value="<%=u.getBidCount() %>">
        </label></td>
      </tr>
      <tr>
        <td>�б���������</td>
        <td><label>
          <input type="text" name="resultCount" value="<%=u.getResultCount() %>">
        </label></td>
      </tr>
      <tr>
        <td colspan="2"><label>
          <input type="submit" name="Submit" value="�ύ">
        </label></td>
      </tr>
    </table>
    <p>&nbsp;</p>
  </form>
    
  </body>
</html>
