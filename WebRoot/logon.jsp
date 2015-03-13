<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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

-->
</style>
</head>
<body id="page5">
<div id="main">
<!-- header -->
								<table width="100%">
									  <tr>
									   <td height="33" colspan="2">&nbsp;</td>
								      </tr>
									  <tr>
									  <td width="5%"></td>
									    <td width="54%">
									     <div class="box">
					<div class="border-right">
						<div class="border-bot">
							<div class="border-left">
								<div class="left-top-corner">
									<div class="right-top-corner">
										<div class="inner">
											<h2>快速注册</h2>
											<form name="form1" method="post" action="<%=basePath %>servlet/NewhuiyuanServlet">
												<fieldset>
												<div class="field">
													<label>用户名:</label>
													<input name="username" type="text" id="username">
												</div>
												<div class="field">
													<label>设置密码:</label>
													<input name="pwd" type="password" id="pwd">
												</div>
												<div class="field">
													<label>确认密码:</label>
													<input name="pwd2" type="password" id="pwd2">
												</div>
												<div class="field">
													<label>真实姓名:</label>
													<input name="realname" type="text" id="realname">
												</div>
												<div class="field">
													<label>联系电话:</label>
													<input name="phonenumber" type="text" id="phonenumber">
												</div>
												<div class="field">
													<label>邮箱地址:</label>
													<input name="email" type="text" id="email">
												</div>
												<div class="wrapper">
													<label>&nbsp;</label>
													<input name="注册" type="submit" id="注册" value="注册" style="width:auto; background-color:#FF9900"></div>
												</fieldset>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
						</div>
			</section>
			
								        </td>
									    <td width="39%">
										<aside>
				<div class="inside">
					<ul class="insurance">
						<li><strong>已有账号？</strong></li>
						<li><strong><a href="enter.jsp">立即登陆</a></strong>软件服务外包网是全球领先的创意服务交易平台</li>
						<li><strong>凭自己的一技之长赚取，真金白银</strong>我要赚钱</li>
						<li><strong>发布需求，获得软件服务外包的帮助</strong>立即发布需求</li>
					</ul>
					</div></aside>
										</td>
									  </tr>
									</table>
	
<jsp:include page="foot.jsp"></jsp:include>
</html>