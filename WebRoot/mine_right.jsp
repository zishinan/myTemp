<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>�ҵ�����������</title>
<meta name="description" content="Place your description here">
<meta name="keywords" content="put, your, keyword, here">
<meta name="author" content="cssMoban.com - website templates provider">
<meta charset="gbk">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
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
.STYLE1 {font-family: Arial, Helvetica, sans-serif}
.STYLE4 {font-size: 14px}
-->
</style>
</head>
<body>
<div class="mineright_div">
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
							<TD align="center" class=sec2 onclick=secBoard(0)>���н���</TD>
							<TD align="center" class=sec1 onclick=secBoard(1)>������</TD>
							<TD align="center" class=sec1 onclick=secBoard(2)>�������</TD>
							<TD align="center" class=sec1 onclick=secBoard(3)>���׹ر�</TD>
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
                            <TD height="2" colspan="3"></TD>
                          </TR>
                          <TR>
                            <TD width="0%" bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD width="10%" height="25" bgcolor="#FAFBFC" class="f1">����ʱ��</TD>
                            <TD width="31%" height="25" bgcolor="#FAFBFC" class="f1">����|���׺�</TD>
							<td width="13%" height="25" bgcolor="#FAFBFC" class="f1">�ͽ�</td>
							<td width="14%" height="25" bgcolor="#FAFBFC" class="f1">������</td>
							<td width="24%" height="25" bgcolor="#FAFBFC" class="f1">״̬</td>
							<td width="8%" height="25" bgcolor="#FAFBFC" class="f1">����</td>
                          </TR>
						  <TR class="td-font">
                            <TD width="0%" bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD width="10%" height="25" bgcolor="#FAFBFC">2012-06-23</TD>
                            <TD width="31%" height="25" bgcolor="#FAFBFC">123</TD>
							<td width="13%" height="25" bgcolor="#FAFBFC" > �� 100 </td>
							<td width="14%" height="25" bgcolor="#FAFBFC" >��˽�</td>
							<td width="24%" height="25" bgcolor="#FAFBFC" >���׹ر�</td>
							<td width="8%" height="25" bgcolor="#FAFBFC">&nbsp;</td>
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
</div>
</body>
</html>