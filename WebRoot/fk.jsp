<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'fankui.jsp' starting page</title>
    
	

  </head>
  
  <body>
   <body>
    <%
   		
   		String fk=(String)request.getAttribute("fk");
   		String url=(String)request.getAttribute("url");
   		
     %>
    <h1> <%=fk %>
	<img src="<%=url %>">
  </body>
</html>
