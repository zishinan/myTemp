<%@ page language="java" import="java.util.*,db.*,bean.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
User u=(User)session.getAttribute("user"); 
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<jsp:include page="head.jsp"></jsp:include>
<html lang="en">
<head>
<title>会员注册页面</title>
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
.STYLE2 {color: #000000}
.STYLE3 {
	font-family: "微软雅黑";
	color: #000000;
	font-size: 24px;
}

-->
</style>
</head>
<body id="page5">
<div id="main">
<!-- header -->
								<table width="100%">
									  <tr>
									   <td height="33" colspan="3">
									    <div align="center"><span class="STYLE3"><img src="images/p2.jpg" width="41" height="43">恭喜！注册成功</span>
								         </div>
									    <p align="center">
									   您在软件服务外包网的帐号为 <%=u.getUserId() %><%=u.getUserName() %>，请妥善保管好。您现在可以：
									   </p>
									    <div align="center"><img src="images/p5.jpg">
							             </div></td>
								      </tr>
									  <tr>
									  <td width="45%">
									  <div align="center">
									  <img src="images/p6.jpg">
   									  <a href="publishneeds.jsp"><img src="images/p3.jpg"></a>
									  </td>
									    <td width="10%">

										  <div align="center"><img src="images/p8.jpg">
	                                      </div>
									    </td>
									    <td width="45%">
											  <div align="center"><img src="images/p7.jpg">
										        <a href="mine.jsp?userName="<%=u.getUserName() %>""><img src="images/p4.jpg"></a>
										    
										        </div>							
									   </td>
									  </tr>
  								</table>
	
<jsp:include page="foot.jsp"></jsp:include>
</html>