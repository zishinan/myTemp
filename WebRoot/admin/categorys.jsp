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
    
     
    <title>显示所有类别</title>
  </head>
 <%
 	ControlCategory ccat=new ControlCategory();
 	Collection c=ccat.getAllCats();
 	Iterator it=c.iterator();
  %>
  <body>
  <table width="95%"  id="mytable" cellspacing="0">
    <tr>
      <th scope="col" class="nobg" width="8%">&nbsp;</th>
      <th scope="col" width="15%">类别名称</th>
      <th scope="col" width="13%">小类别数</th>
      <th scope="col" width="13%">&nbsp;</th>
      <th scope="col" width="13%">&nbsp;</th>
    </tr>
    <%
    	int x=0;
    	while(it.hasNext()){
    		x++;
    		Category cat=(Category)it.next();
     %>
    <tr>
      <td><%=x %></td>
      <td><%=cat.getCatName() %></td>
      
      <td>&nbsp;</td>
       <td><a href="<%=basePath %>admin/altercategory.jsp?id=<%=cat.getCatId() %>">修改</a></td>
      <td><a href="<%=basePath %>servlet/DeleteCategory?id=<%=cat.getCatId() %>">删除</a></td>
    </tr>
    <%} %>
  </table>
    
  </body>
</html>
