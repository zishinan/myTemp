<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>我的软件服务外包</title>
<meta name="description" content="Place your description here">
<meta name="keywords" content="put, your, keyword, here">
<meta name="author" content="cssMoban.com - website templates provider">
<meta charset="utf-8">
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
<!--JavaScript部分-->
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
              <!--HTML部分-->
				    <TABLE width=100% border=0 cellPadding=0 cellSpacing=0 id=secTable>
						<TBODY>
						  <TR align=middle height=20>
							<TD align="center" class=sec2 onclick=secBoard(0)>所有交易</TD>
							<TD align="center" class=sec1 onclick=secBoard(1)>交易中</TD>
							<TD align="center" class=sec1 onclick=secBoard(2)>交易完成</TD>
							<TD align="center" class=sec1 onclick=secBoard(3)>交易关闭</TD>
						  </TR>
						</TBODY>
				   </TABLE>
				   <TABLE class=main_tab id=mainTable cellSpacing=0 cellPadding=0 width=100% border=0>
				   <!--关于TBODY标记-->
                <TBODY style="DISPLAY: block">
                  <TR>
                    <TD vAlign=top align=middle><TABLE width=98% height="35" border=0 align="center" cellPadding=0 cellSpacing=0>
                        <TBODY>
                          <TR>
                            <TD height="2" colspan="3"></TD>
                          </TR>
                          <TR>
                            <TD width="0%" bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD width="10%" height="25" bgcolor="#FAFBFC" class="f1">交易时间</TD>
                            <TD width="31%" height="25" bgcolor="#FAFBFC" class="f1">名称|交易号</TD>
							<td width="13%" height="25" bgcolor="#FAFBFC" class="f1">赏金</td>
							<td width="14%" height="25" bgcolor="#FAFBFC" class="f1">服务商</td>
							<td width="24%" height="25" bgcolor="#FAFBFC" class="f1">状态</td>
							<td width="8%" height="25" bgcolor="#FAFBFC" class="f1">操作</td>
                          </TR>
						  <TR class="td-font">
                            <TD width="0%" bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD width="10%" height="25" bgcolor="#FAFBFC">2012-06-23</TD>
                            <TD width="31%" height="25" bgcolor="#FAFBFC">123</TD>
							<td width="13%" height="25" bgcolor="#FAFBFC" > ￥ 100 </td>
							<td width="14%" height="25" bgcolor="#FAFBFC" >猪八戒</td>
							<td width="24%" height="25" bgcolor="#FAFBFC" >交易关闭</td>
							<td width="8%" height="25" bgcolor="#FAFBFC">&nbsp;</td>
                          </TR>
                          <TR>
                            <TD height="3" colspan="3"></TD>
                          </TR>
                        </TBODY>
                    </TABLE></TD>
                  </TR>
                </TBODY>
				<!--关于cells集合-->
                <TBODY style="DISPLAY: none">
                  <TR>
                    <TD vAlign=top align=middle><TABLE width=98% height="4" border=0 align="center" cellPadding=0 cellSpacing=0>
                         <TBODY>
                          <TR>
                            <TD height="1" colspan="3"></TD>
                          </TR>
                          <TR>
                            <TD width="2%" bgcolor="#FAFBFC">&nbsp;</TD>
                            <TD width="44%" height="25" bgcolor="#FAFBFC">您有未验证商家展</TD>
                            <TD width="54%" height="25" bgcolor="#FAFBFC">您有未验证网上商城</TD>
                          </TR>
                          <TR>
                            <TD height="3" colspan="3"></TD>
                          </TR>
                        </TBODY>
                    </TABLE></TD>
                  </TR>
                </TBODY>
				<!--关于tBodies集合-->
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
                            <TD width="44%" height="25" bgcolor="#FAFBFC">您有未验证商家展</TD>
                            <TD width="54%" height="25" bgcolor="#FAFBFC">您有未验证网上商城</TD>
                          </TR>
                          <TR>
                            <TD height="3" colspan="3"></TD>
                          </TR>
                        </TBODY>
                    </TABLE></TD>
                  </TR>
                </TBODY>
				<!--关于display属性-->
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
                            <TD width="44%" height="25" bgcolor="#FAFBFC">您有未验证商家展</TD>
                            <TD width="54%" height="25" bgcolor="#FAFBFC">您有未验证网上商城</TD>
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