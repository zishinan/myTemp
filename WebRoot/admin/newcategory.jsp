<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page import="db.*,bean.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 
    <base href="<%=basePath%>">
    
    <title>������</title>
</head>
<%
	ControlCategory cu=new ControlCategory();
 %>  
  <body>
  <form name="form1" method="post" action="newCategoryServlet">
    <table width="95%" border="0">
      <tr>
        <td width="20%"><div align="right">������ƣ�</div></td>
        <td width="80%"><label>
          <input type="text" name="catName">
          <span class="STYLE1">*�ǿ�</span></label></td>
      </tr>
      <tr>
        <td><div align="right">��ע��</div></td>
        <td><label>
          <textarea name="catNote" cols="70" rows="5"></textarea>
        </label></td>
      </tr>
      <tr>
        <td colspan="2"><label>
          <input type="submit" name="Submit" value="�½����">
          <input type="reset" name="Submit2" value="����">
        </label></td>
      </tr>
    </table>
  </form>
  </body>
</html>
