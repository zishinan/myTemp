<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page  import="bean.*,db.*,tools.*"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    <base href="<%=basePath%>">
    
    <title>显示小类别</title>
    
    <%
    	String sid=request.getParameter("id");
    	int id=Integer.parseInt(sid);
    	ControlSmallcategory cn=new ControlSmallcategory();
    	Collection c=cn.getSmallCategoryBycatId(id);
    	Iterator it=c.iterator();
     %>
	
  </head>
  <body>
    <table width="100%" border="0" id="mytable">
     
     <%
      	int i=0;
   		while(it.hasNext()){
   			Smallcategory sc=(Smallcategory)it.next();
   			i++;
    %>
     <tr>
       <td><a href="<%=basePath %>admin/tasks.jsp?id=<%=sc.getSmallId() %>"><%=sc.getSmallName() %></a></td>
     </tr> 
     <%} %>
   </table>
   <p><br>
     
    </p>
    
  </body>
</html>
