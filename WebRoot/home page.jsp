<%@ page language="java" import="java.util.*,db.*,bean.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
User u=(User)session.getAttribute("user"); 
request.setCharacterEncoding("gbk");
ControlCategory cc=new ControlCategory();
ControlSmallcategory cn=new ControlSmallcategory();
%>
<jsp:include page="head.jsp"></jsp:include>
<!DOCTYPE html>
<html lang="en">
<head>
<title>��ҳ</title>
<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style2.css" type="text/css" media="all">
<link rel="stylesheet" href="css/font.css" type="text/css" media="all">
<script type="text/javascript" src="js/maxheight.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js" ></script>
<script type="text/javascript" src="js/script.js"></script>
<!--[if lt IE 7]>
	<link rel="stylesheet" href="css/ie6.css" type="text/css" media="screen">
	<script type="text/javascript" src="js/ie_png.js"></script>
	<script type="text/javascript">
		ie_png.fix('.png');
	</script>
<![endif]-->
<!--[if lt IE 9]>
	<script type="text/javascript" src="js/html5.js"></script>
<![endif]-->
<style type="text/css">
<!--
.STYLE1 {
	font-size: large;
	font-family: "����";
}
.STYLE2 {
	font-family: "������";
	font-size: x-large;
	color: #FF9933;
}
.STYLE6 {
	font-family: "����";
	font-size: x-large;
	color: #0000FF;
}
-->
</style>
</head>


		
<!-- content -->
		  <table width="100%" border="1">
		  <tr>
		  	<td width="70%" colspan="2">
		  	<div class="inner_copy">More <a href="http://www.cssmoban.com/">Website Templates</a> at TemplateMonster.com!</div>
			<div id="slogan"><img src="images/slogan.gif"></div>
			</td>
			<td width="30%">
			<table width="100%" height="115" border="1">
			  <tr>
				<td height="29"><div align="center" class="STYLE1">�������Ա�</div></td>
			  </tr>
			  <tr>
				<td height="29"><div align="center" class="STYLE2">�������������������</div></td>
			  </tr>
			  <tr>
				<td><div align="center"><a href="publishneeds.jsp"><img src="images/shouye.jpg"></a></div></td>
			  </tr>
			</table>
			</td>
		  </tr>
              <tr>
                <td width="70%" height="220" background="">
				  <table width="100%" border="1">
				  <tr>
				  
           
<div class="category">
<div class="list1">

<div class="list1_cate"><span><a href="#">��ƿ���</a></span></div>


<div class="list1_left">
<ul>
<li>
<%
  
   Category ccc=cc.getCategory1(1) ;
 %>
<div><a href="task.jsp?id=<%=ccc.getCatId() %>" target="main" style="font-size:16px; font-weight:bold; color:#1577DC"><%=ccc.getCatName() %></a></div>
<% 
        
    	Collection c=cn.getSmallCategoryBycatId(1);
    	Iterator it=c.iterator();
        while(it.hasNext()){
          		Smallcategory sc=(Smallcategory)it.next();
           %>
            
<a href="article.jsp?id=<%=sc.getSmallId() %>"><%=sc.getSmallName() %></a>

<%} %>
</li>
</ul>
</div>

<div class="list1_right">
<ul>
<li>
<%
  
   Category cccc=cc.getCategory1(2);
 %>
<div><a href="task.jsp?id=<%=cccc.getCatId() %>" style="font-size:16px; font-weight:bold; color:#1577DC"><%=cccc.getCatName() %></a></div>
<% 
       
    	Collection c1=cn.getSmallCategoryBycatId(2);
    	Iterator it1=c1.iterator();
        while(it1.hasNext()){
          		Smallcategory sc1=(Smallcategory)it1.next();
           %>
<a href="article.jsp?id=<%=sc1.getSmallId() %>"><%=sc1.getSmallName() %></a>
<%} %>
</li>
</ul>
</div>



</div>

<div class="list2" style="border-bottom:none; border-top:none">
<div class="list2_cate"><span><a href="#">�ƹ�����</a></span></div>
<div class="list1_left">
<ul>
<li>
<%
  
   Category ccccc=cc.getCategory1(3) ;
 %>
<div><a href="task.jsp?id=<%=ccccc.getCatId() %>" style="font-size:16px; font-weight:bold; color:#1577DC"><%=ccccc.getCatName() %></a></div>
<% 
       
    	Collection c2=cn.getSmallCategoryBycatId(3);
    	Iterator it2=c2.iterator();
        while(it2.hasNext()){
          		Smallcategory sc2=(Smallcategory)it2.next();
           %>
<a href="article.jsp?id=<%=sc2.getSmallId() %>"><%=sc2.getSmallName() %></a>
<%} %>

<%
  
   Category cccccc=cc.getCategory1(8) ;
 %>
<div><a href="task.jsp?id=<%=cccccc.getCatId() %>" style="font-size:16px; font-weight:bold; color:#1577DC"><%=cccccc.getCatName() %></a></div>
<% 
       
    	Collection c3=cn.getSmallCategoryBycatId(8);
    	Iterator it3=c3.iterator();
        while(it3.hasNext()){
          		Smallcategory sc3=(Smallcategory)it3.next();
           %>
<a href="article.jsp?id=<%=sc3.getSmallId() %>"><%=sc3.getSmallName() %></a>
<%} %>
</li>
</ul>
</div>
<div class="list1_right">
<ul>
<li>
<%
  
   Category ccccccc=cc.getCategory1(4) ;
 %>
<div><a href="task.jsp?id=<%=ccccccc.getCatId() %>" style="font-size:16px; font-weight:bold; color:#1577DC"><%=ccccccc.getCatName() %></a></div>
<% 
       
    	Collection c4=cn.getSmallCategoryBycatId(4);
    	Iterator it4=c4.iterator();
        while(it4.hasNext()){
          		Smallcategory sc4=(Smallcategory)it4.next();
           %>
<a href="article.jsp?id=<%=sc4.getSmallId() %>"><%=sc4.getSmallName() %></a>
<%} %>

</li>
</ul>
</div>
</div>
<div class="list3" style="border-bottom:1px #dbdbdb solid">
<div class="list3_cate"><span><a href="#">װ������</a></span></div>
<div class="list1_left">
<ul>
<li>
<%
  
   Category cccccccc=cc.getCategory1(7) ;
 %>
<div><a href="task.jsp?id=<%=cccccccc.getCatId() %>" style="font-size:16px; font-weight:bold; color:#1577DC"><%=cccccccc.getCatName() %></a></div>
<% 
       
    	Collection c5=cn.getSmallCategoryBycatId(7);
    	Iterator it5=c5.iterator();
        while(it5.hasNext()){
          		Smallcategory sc5=(Smallcategory)it5.next();
           %>
<a href="article.jsp?id=<%=sc5.getSmallId() %>"><%=sc5.getSmallName() %></a>
<%} %>
<%
  
   Category cccccccccc=cc.getCategory1(6) ;
 %>
<div><a href="task.jsp?id=<%=cccccccccc.getCatId() %>" style="font-size:16px; font-weight:bold; color:#1577DC"><%=cccccccccc.getCatName() %></a></div>
<% 
       
    	Collection c7=cn.getSmallCategoryBycatId(6);
    	Iterator it7=c7.iterator();
        while(it7.hasNext()){
          		Smallcategory sc7=(Smallcategory)it7.next();
           %>
<a href="article.jsp?id=<%=sc7.getSmallId() %>"><%=sc7.getSmallName() %></a>
<%} %>



</li>
</ul>
</div>
<div class="list1_right">
<ul>
<li>
<%
  
   Category ccccccccc=cc.getCategory1(5) ;
 %>
<div><a href="task.jsp?id=<%=ccccccccc.getCatId() %>" style="font-size:16px; font-weight:bold; color:#1577DC"><%=ccccccccc.getCatName() %></a></div>
<% 
       
    	Collection c6=cn.getSmallCategoryBycatId(5);
    	Iterator it6=c6.iterator();
        while(it6.hasNext()){
          		Smallcategory sc6=(Smallcategory)it6.next();
           %>
<a href="article.jsp?id=<%=sc6.getSmallId() %>"><%=sc6.getSmallName() %></a>
<%} %>


</li>
</ul>
</div>
</div>

</div>
</tr>
		   <tr>
					<td height="30" colspan="2"><p>1000���������ڽ���</p>
					<!--JavaScript����-->
              <SCRIPT language=javascript>
function secBoard(n)
{
for(i=0;i<secTable.cells.length;i++)
secTable.cells[i].className="sec1";
secTable.cells[n].className="sec2";
for(i=0;i<mainTable.tBodies.length;i++)
mainTable.tBodies[i].style.display="none";
mainTable.tBodies[n].style.display="block";
}
          </SCRIPT>
              <!--HTML����-->
				    <TABLE width=100% border=0 cellPadding=0 cellSpacing=0 id=secTable>
						<TBODY>
						  <TR align=middle height=20>
							<TD align="center" class=sec2 onclick=secBoard(0)>�����Ƽ�</TD>
							<TD align="center" class=sec1 onclick=secBoard(1)>24Сʱ����</TD>
							<TD align="center" class=sec1 onclick=secBoard(2)>��Ԫ����</TD>
							<TD align="center" class=sec1 onclick=secBoard(3)>�߽������</TD>
						  </TR>
						</TBODY>
				   </TABLE>
				   <TABLE class=main_tab id=mainTable cellSpacing=0 cellPadding=0 width=100% border=0>
				   <!--����TBODY���-->
                <TBODY style="DISPLAY: block">
                  <TR>
                    <TD vAlign=top align=middle><TABLE width=98% height="35" border=0 align="center" cellPadding=0 cellSpacing=0>
                        <TBODY>
                          <TR>
                            <TD height="1" colspan="3"></TD>
                          </TR>
                          <TR>
                            <TD width="0%" bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD width="11%" height="25" bgcolor="#FAFBFC">����δ��֤�̼�չ</TD>
                            <TD width="71%" height="25" bgcolor="#FAFBFC">����δ��֤�����̳�</TD>
							<td width="18%" height="25" bgcolor="#FAFBFC"><div align="center"><img src="images/shouye5.jpg"></div></td>
                          </TR>
                          <TR>
                            <TD height="3" colspan="3"></TD>
                          </TR>
                        </TBODY>
                    </TABLE></TD>
                  </TR>
                </TBODY>
				<!--����cells����-->
                <TBODY style="DISPLAY: none">
                  <TR>
                    <TD vAlign=top align=middle><TABLE width=98% height="4" border=0 align="center" cellPadding=0 cellSpacing=0>
                         <TBODY>
                          <TR>
                            <TD height="1" colspan="3"></TD>
                          </TR>
                          <TR>
                            <TD width="2%" bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD width="44%" height="25" bgcolor="#FAFBFC">����δ��֤�̼�չ</TD>
                            <TD width="54%" height="25" bgcolor="#FAFBFC">����δ��֤�����̳�</TD>
                          </TR>
                          <TR>
                            <TD height="3" colspan="3"></TD>
                          </TR>
                        </TBODY>
                    </TABLE></TD>
                  </TR>
                </TBODY>
				<!--����tBodies����-->
                <TBODY style="DISPLAY: none">
                  <TR>
                    <TD vAlign=top align=middle><TABLE width=98% border=0 align="center" cellPadding=0 cellSpacing=0>
                        <TBODY>
                          <TR>
                            <TD colspan="3"></TD>
                          </TR>
                          <TR>
                            <TD height="1" colspan="3"></TD>
                          </TR>
                          <TR>
                            <TD width="2%" bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD width="44%" height="25" bgcolor="#FAFBFC">����δ��֤�̼�չ</TD>
                            <TD width="54%" height="25" bgcolor="#FAFBFC">����δ��֤�����̳�</TD>
                          </TR>
                          <TR>
                            <TD height="3" colspan="3"></TD>
                          </TR>
                        </TBODY>
                    </TABLE></TD>
                  </TR>
                </TBODY>
				<!--����display����-->
                <TBODY style="DISPLAY: none">
                  <TR>
                    <TD vAlign=top align=middle><TABLE width=98% border=0 align="center" cellPadding=0 cellSpacing=0>
                        <TBODY>
                          <TR>
                            <TD colspan="3"></TD>
                          </TR>
                          <TR>
                            <TD height="1" colspan="3"></TD>
                          </TR>
                          <TR>
                            <TD width="2%" bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD width="44%" height="25" bgcolor="#FAFBFC">����δ��֤�̼�չ</TD>
                            <TD width="54%" height="25" bgcolor="#FAFBFC">����δ��֤�����̳�</TD>
                          </TR>
                          <TR>
                            <TD height="3" colspan="3"></TD>
                          </TR>
                        </TBODY>
                    </TABLE></TD>
                  </TR>
                </TBODY>
				   </TABLE>
					</td>
					</tr>
				</table>				
				</td>
			  	<td width="2%"></td>
                <td width="28%">
					<!--JavaScript����-->
                        <SCRIPT language=javascript>
function secBoard1(n)
{
for(i=0;i<secTable1.cells.length;i++)
secTable1.cells[i].className="sec1";
secTable1.cells[n].className="sec2";
for(i=0;i<mainTable1.tBodies.length;i++)
mainTable1.tBodies[i].style.display="none";
mainTable1.tBodies[n].style.display="block";
}
          </SCRIPT>
              <!--HTML����-->
				    <TABLE width=100% border=0 cellPadding=0 cellSpacing=0 id=secTable1>
						<TBODY>
						  <TR align=middle height=20>
							<TD align="center" class=sec2 onclick=secBoard(0)>����</TD>
							<TD align="center" class=sec1 onclick=secBoard(1)>����</TD>
							<TD align="center" class=sec1 onclick=secBoard(2)>����</TD>
							<TD align="center" class=sec1 onclick=secBoard(3)>���װ�ȫ</TD>
						  </TR>
						</TBODY>
				   </TABLE>
				   <TABLE class=main_tab id=mainTable1 cellSpacing=0 cellPadding=0 width=100% border=0>
				   <!--����TBODY���-->
                <TBODY style="DISPLAY: block">
                  <TR>
                    <TD vAlign=top align=middle><TABLE width=98% height="35" border=0 align="center" cellPadding=0 cellSpacing=0>
                        <TBODY>
                          <TR>
                            <TD height="1"></TD>
                          </TR>
                          <TR>
                            <TD height="200" bgcolor="#FAFBFC">����δ��֤�̼�չ����δ��֤�����̳�</TD>
                          </TR>
                          <TR>
                            <TD height="3"></TD>
                          </TR>
                        </TBODY>
                    </TABLE></TD>
                  </TR>
                </TBODY>
				<!--����cells����-->
                <TBODY style="DISPLAY: none">
                  <TR>
                    <TD vAlign=top align=middle><TABLE width=98% height="4" border=0 align="center" cellPadding=0 cellSpacing=0>
                         <TBODY>
                          <TR>
                            <TD height="1"></TD>
                          </TR>
                          <TR>
                            <TD height="25" bgcolor="#FAFBFC">����δ��֤�̼�չ����δ��֤�����̳�</TD>
                           </TR>
                          <TR>
                            <TD height="3"></TD>
                          </TR>
                        </TBODY>
                    </TABLE></TD>
                  </TR>
                </TBODY>
				<!--����tBodies����-->
                <TBODY style="DISPLAY: none">
                  <TR>
                    <TD vAlign=top align=middle><TABLE width=98% border=0 align="center" cellPadding=0 cellSpacing=0>
                        <TBODY>
                          <TR>
                            <TD></TD>
                          </TR>
                          <TR>
                            <TD height="1"></TD>
                          </TR>
                          <TR>
                            <TD height="25" bgcolor="#FAFBFC">����δ��֤�̼�չ����δ��֤�����̳�</TD>
                          </TR>
                          <TR>
                            <TD height="3"></TD>
                          </TR>
                        </TBODY>
                    </TABLE></TD>
                  </TR>
                </TBODY>
				<!--����display����-->
                <TBODY style="DISPLAY: none">
                  <TR>
                    <TD vAlign=top align=middle><TABLE width=98% border=0 align="center" cellPadding=0 cellSpacing=0>
                        <TBODY>
                          <TR>
                            <TD></TD>
                          </TR>
                          <TR>
                            <TD height="1"></TD>
                          </TR>
                          <TR>
                            <TD height="25" bgcolor="#FAFBFC">����δ��֤�̼�չ����δ��֤�����̳�</TD>
                          </TR>
                          <TR>
                            <TD height="3"></TD>
                          </TR>
                        </TBODY>
                    </TABLE></TD>
                  </TR>
                </TBODY>
				   </TABLE>
                   <div style="background:#f0f0f0; border:1px #CCC solid; margin-top:15px">
                   <div><span style="color:#000; font-size:14px; font-weight:bold; line-height:40px; margin-left:15px">���Ż</span><span style="font-size:12px; float:right; line-height:40px; margin-right:15px"><a href="#" style="color:#999">����>></a></span></div>
                   <div style=" margin:0 15px"><img src="images/delu.jpg" width="230px"></div>
                   <div style="margin:10px 15px"><a href="#"><p style="margin-bottom:0">���ֻ��ͻ��˷�����,������������!<span style="color:#999">2012/04/07</span></p></a>
                   <a href="#"><p style="margin-bottom:0; color:#000">���ĵ�����վȫ�񻥶�Ӫ������<span style="color:#999">2012/04/06</span></p></a>
                   <a href="#"><p style="margin-bottom:0; color:#000">ȫ�򹫲�һ���������ⱨ��ͨ����ͨ<span style="color:#999">2012/03/13</span></p></a>
                   </div>
                   </div>
                   <div style="background:#f0f0f0; border:1px #CCC solid; margin-top:15px">
                   <div><span style="color:#000; font-size:14px; font-weight:bold; line-height:40px; margin-left:15px">Ʒ�ƽ���</span><span style=" float:right; margin-top:12px; margin-right:15px;"><a href="#"><img src="images/xia.gif" style="margin-right:2px"></a><a href="#"><img src="images/shang.gif"></a></span></div>
                   <div>
                   <style type="text/css">
				   .scroll li{border-top:1px #ccc solid; background:#fff; line-height:51px}
				   .scroll span{color:#F30}
				   .scroll a{color:#000}
				   </style>
                   <ul class="scroll">
                   <li><a href="#"><img src="images/pp1.gif"><span>��3000</span>����Һ����</a></li>
                   <li><a href="#"><img src="images/pp2.gif"><span>��3000</span>��������������</a></li>
                   <li><a href="#"><img src="images/pp3.gif"><span>��12500</span>����������ػ</a></li>
                   </ul>
                   </div>
                   </div>
                   
				</td>
			</tr>
	  </table>				
		
        
      <jsp:include page="foot.jsp"></jsp:include>



</html>