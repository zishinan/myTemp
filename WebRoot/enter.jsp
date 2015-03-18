<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="head.jsp"></jsp:include>
<!DOCTYPE html>
<html lang="en">
<head>
<title>会员登录页面</title>
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
.STYLE2 {color: #000000}
.STYLE4 {font-size: x-small}

-->
</style>
</head>
<body id="page5">
<div id="main">
<!-- header -->
								<table width="99%">
									  <tr>
									  <td width="6%" height="178"></td>
									    <td width="52%"><img src="images/denglu.jpg"></td>
									    <td width="42%">
										<aside>
				<div class="inside">
					<ul>
							<h2>会员登录</h2>
							
											<form id="contacts-form" action="loginServlet" method="post">
												<fieldset>
												<div class="field">
													<label>帐 号:</label>
													<input name="username" type="text" id="username">
												</div>
												<div class="field">
													<label>密 码:</label>
													<input name="pwd" type="password" id="pwd">
												</div>
												<div class="wrapper">
													<input name="登录" type="submit" id="登录" value="登录" style="width:auto; background-color:#FF9900">
													<p><label><span class="STYLE4">忘记密码？立即注册</span></label></p>
												</div>
												</fieldset>
											</form>
					</ul>
					</div></aside>										</td>
									  </tr>
  </table>
	
</div>

</body>
<jsp:include page="foot.jsp"></jsp:include>
</html>