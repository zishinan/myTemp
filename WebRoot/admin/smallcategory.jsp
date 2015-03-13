<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page import="db.*,bean.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

  <head>
    <base href="<%=basePath%>">  
    
     
    <title>显示所有小类别</title>
  </head>
 <%
 	ControlSmallcategory csc=new ControlSmallcategory();
 	Collection c=csc.getAllCats();
 	Iterator it=c.iterator();
  %>
  <body>
  <table width="95%"  id="mytable" cellspacing="0">
    <tr>
      <th scope="col" class="nobg" width="8%">&nbsp;</th>
      <th scope="col" width="15%">小类别名称</th>
      <th scope="col" width="13%">所属类别</th>
      <th scope="col" width="13%">&nbsp;</th>
      <th scope="col" width="13%">&nbsp;</th>
    </tr>
    <%
    	int x=0;
    	ControlCategory cc=new ControlCategory();
    	while(it.hasNext()){
    		x++;
    		Smallcategory cat=(Smallcategory)it.next();
    		Collection c1=cc.getACats(cat.getCatId());
    		Iterator it1=c1.iterator();
    		
     %>
    <tr>
      <td><%=x %></td>
      <td><%=cat.getSmallName() %></td>
      <%
      while(it1.hasNext()){
      Category ca=(Category)it1.next();
      
       %>
      <td><%=ca.getCatName() %></td>
      <%} %>
       <td><a href="<%=basePath %>admin/altersmallcategory.jsp?id=<%=cat.getSmallId() %>">修改</a></td>
      <td><a href="<%=basePath %>servlet/DeletesmallcategoryServlet?id=<%=cat.getSmallId() %>">删除</a></td>
    </tr>
    <%} %>
  </table>
    
  </body>
</html>
