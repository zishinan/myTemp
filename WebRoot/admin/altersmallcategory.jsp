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
    <title>�޸�С���</title>
  </head>
 <% 
    String sid=request.getParameter("id");
    int id=Integer.parseInt(sid);
 	ControlSmallcategory csc=new ControlSmallcategory();
 	Smallcategory sc=csc.getCategorys(id);
 	ControlCategory ct=new ControlCategory();
 	Category sc1=ct.getCategorysbyid(id);
    Collection c=ct.getAllCats();
    Iterator it=c.iterator();
  %>
  <body>
  <form name="form1" method="post" action="<%=basePath %>servlet/NewSmallCategoryServlet">
    <p><span class="STYLE1">С������ƣ�</span>    
    <input name="smallName" type="text" id="tytle" size="50" value=<%=sc.getSmallName() %>>
   </p>
    <p><span class="STYLE1">�������:</span>
    <select name="catId" id="cid"  >
    <%
    	while(it.hasNext()){
    		Category cat=(Category)it.next();
     %>
      <option value="<%=cat.getCatId() %>" <%=cat.getCatId()==sc1.getCatId()?"selected":"" %>><%=cat.getCatName() %></option>
      <%} %>
    </select>
   </p>
    <p class="STYLE1">С���ע��</p>
    <td><label>
          <textarea name="catNote" cols="70" rows="5" ><%=sc.getSmallNote() %></textarea>
        </label></td>
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
