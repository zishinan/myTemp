<%@ page language="java" import="java.util.*,db.*,bean.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>新建小类别</title> 
  </head>
<%
    ControlCategory ct=new ControlCategory();
    Collection c=ct.getAllCats();
    Iterator it=c.iterator();
	
 %>  
  <body>
  <form name="form1" method="post" action="newSmallCategoryServlet">
    <p><span class="STYLE1">小类别名称：</span>    
    <input name="smallName" type="text" id="tytle" size="50">
   </p>
    <p><span class="STYLE1">所属类别：</span>
    <select name="catId" id="cid">
    <%
    	while(it.hasNext()){
    		Category cat=(Category)it.next();
     %>
      <option value="<%=cat.getCatId() %>"><%=cat.getCatName() %></option>
      <%} %>
    </select>
   </p>
    <p class="STYLE1">小类别备注：</p>
    <p>
      <label>
      <textarea name="smallNote" cols="80" rows="30" id="content" class="ckeditor"></textarea>
      </label>
    </p>
    <p>
   <label>
   <input name="Submit" type="submit" value="新建小类别">
   </label>
   <label>
   <input type="submit" name="Submit2" value="重置">
   </label>
 </p>
  </form>
  </body>
</html>
