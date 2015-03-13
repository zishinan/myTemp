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
    
    <title>添加类别</title>
</head>
<%
	ControlCategory cu=new ControlCategory();
 %>  
  <body>
  <form name="form1" method="post" action="newCategoryServlet">
    <table width="95%" border="0">
      <tr>
        <td width="20%"><div align="right">类别名称：</div></td>
        <td width="80%"><label>
          <input type="text" name="catName">
          <span class="STYLE1">*非空</span></label></td>
      </tr>
      <tr>
        <td><div align="right">备注：</div></td>
        <td><label>
          <textarea name="catNote" cols="70" rows="5"></textarea>
        </label></td>
      </tr>
      <tr>
        <td colspan="2"><label>
          <input type="submit" name="Submit" value="新建类别">
          <input type="reset" name="Submit2" value="重置">
        </label></td>
      </tr>
    </table>
  </form>
  </body>
</html>
