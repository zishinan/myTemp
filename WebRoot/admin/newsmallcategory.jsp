<%@ page language="java" import="java.util.*,db.*,bean.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>�½�С���</title> 
  </head>
<%
    ControlCategory ct=new ControlCategory();
    Collection c=ct.getAllCats();
    Iterator it=c.iterator();
	
 %>  
  <body>
  <form name="form1" method="post" action="newSmallCategoryServlet">
    <p><span class="STYLE1">С������ƣ�</span>    
    <input name="smallName" type="text" id="tytle" size="50">
   </p>
    <p><span class="STYLE1">�������</span>
    <select name="catId" id="cid">
    <%
    	while(it.hasNext()){
    		Category cat=(Category)it.next();
     %>
      <option value="<%=cat.getCatId() %>"><%=cat.getCatName() %></option>
      <%} %>
    </select>
   </p>
    <p class="STYLE1">С���ע��</p>
    <p>
      <label>
      <textarea name="smallNote" cols="80" rows="30" id="content" class="ckeditor"></textarea>
      </label>
    </p>
    <p>
   <label>
   <input name="Submit" type="submit" value="�½�С���">
   </label>
   <label>
   <input type="submit" name="Submit2" value="����">
   </label>
 </p>
  </form>
  </body>
</html>
