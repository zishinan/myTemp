<%@ page language="java" import="java.util.*,db.*,bean.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<LINK href="<%=basePath%>css/admin.css" type="text/css" rel="stylesheet">
<SCRIPT language=javascript>
	function expand(el)
	{
		childObj = document.getElementById("child" + el);

		if (childObj.style.display == 'none')
		{
			childObj.style.display = 'block';
		}
		else
		{
			childObj.style.display = 'none';
		}
		return;
	}
</SCRIPT>
</HEAD>
<BODY>
<TABLE height="100%" cellSpacing=0 cellPadding=0 width=170 
background=<%=basePath%>images/menu_bg.jpg border=0>
  <TR>
    <TD vAlign=top align=middle>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        
        <TR>
          <TD height=10></TD></TR></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=<%=basePath%>images/menu_bt.jpg><A 
            class=menuParent onclick=expand(1) 
            href="javascript:void(0);">��Ա����</A></TD>
        </TR>
        <TR height=4>
          <TD></TD></TR></TABLE>
      <TABLE id=child1 style="DISPLAY: none" cellSpacing=0 cellPadding=0 
      width=150 border=0>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath %>images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
           href="<%=basePath %>admin/showmembers1.jsp "
            target=main>�鿴��Ա</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath %>images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="<%=basePath %>admin/deletemembers1.jsp" 
            target=main>�����Ա</A></TD></TR>
        <TR height=20>
          
      <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=<%=basePath%>images/menu_bt.jpg><A 
            class=menuParent onclick=expand(2) 
            href="javascript:void(0);">������</A></TD></TR>
        <TR height=4>
          <TD></TD></TR></TABLE>
      <TABLE id=child2 style="DISPLAY: none" cellSpacing=0 cellPadding=0 
      width=150 border=0>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath %>images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="<%=basePath %>admin/newcategory.jsp" 
            target=main>������</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath %>images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="<%=basePath %>admin/categorys.jsp" 
            target=main>��ʾ���</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath %>images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="<%=basePath %>admin/newsmallcategory.jsp" 
            target=main>���С���</A></TD></TR>
        <TR height=4>
		 <TD align=middle width=30><IMG height=9 
            src="<%=basePath %>images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
           href="<%=basePath %>admin/smallcategory.jsp" 
            target=main>��ʾС���</A></TD></TR>
        <TR height=4>
          <TD colSpan=2></TD></TR></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=<%=basePath%>images/menu_bt.jpg><A 
            class=menuParent onclick=expand(3) 
            href="javascript:void(0);">����������</A></TD></TR>
        <TR height=4>
          <TD></TD></TR></TABLE>
      <TABLE id=child3 style="DISPLAY: none" cellSpacing=0 cellPadding=0 
      width=150 border=0>
       <%
          ControlCategory cc=new ControlCategory();
          Collection c=cc.getAllCats();
          Iterator it=c.iterator();
          while(it.hasNext()){
          		Category cat=(Category)it.next();
           %>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath %>images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="<%=basePath%>admin/allsmallcategory.jsp?id=<%=cat.getCatId() %>" target=main><%=cat.getCatName() %> 
           </A></TD></TR>
    <%} %>
        
        
        <TR height=4>
          <TD colSpan=2></TD></TR></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=<%=basePath%>images/menu_bt.jpg><A 
            class=menuParent onclick=expand(4) 
            href="javascript:void(0);">�������</A></TD></TR>
        <TR height=4>
          <TD></TD></TR></TABLE>
      <TABLE id=child4 style="DISPLAY: none" cellSpacing=0 cellPadding=0 
      width=150 border=0>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath %>images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="<%=basePath%>#" 
            target=main>��ͨ������</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath %>images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="<%=basePath%>#" 
            target=main>���ܾ�����</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath %>images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="<%=basePath%>#" 
            target=main>��ɾ������</A></TD></TR>
        <TR height=4>
		<TD align=middle width=30><IMG height=9 
            src="<%=basePath %>images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="<%=basePath%>#" 
            target=main>�ѽ�������</A></TD></TR>
        <TR height=4>
          <TD colSpan=2></TD></TR></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=<%=basePath%>images/menu_bt.jpg><A 
            class=menuParent onclick=expand(5) 
            href="javascript:void(0);">���۹���</A></TD></TR>
        <TR height=4>
          <TD></TD></TR></TABLE>
      <TABLE id=child5 style="DISPLAY: none" cellSpacing=0 cellPadding=0 
      width=150 border=0>
        
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath %>images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="<%=basePath%>#" 
            target=main>���������</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath %>images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            href="<%=basePath%>#" 
            target=main>�ѷ�������</A></TD></TR>
        <TR height=4>
          <TD colSpan=2></TD></TR></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        
       
      <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=<%=basePath%>images/menu_bt.jpg><A 
            class=menuParent onclick=expand(0) 
            href="javascript:void(0);">������Ϣ����</A></TD></TR>
        <TR height=4>
          <TD></TD></TR></TABLE>
      <TABLE id=child0 style="DISPLAY: none" cellSpacing=0 cellPadding=0 
      width=150 border=0>
        
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath %>images/menu_icon.gif" width=9></TD>
            <TD><A
           class=menuChild  href="#" target=main>�޸�����</></TD>
            </TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="<%=basePath %>images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild 
            onclick="if (confirm('ȷ��Ҫ�˳���')) return true; else return false;" 
            href="#" 
            target=_top>�������</A></TD></TR></TABLE>
    <TD width=1 bgColor=#d1e6f7>A</TD></TR></TABLE></BODY></HTML>
