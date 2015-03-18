<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>会员注册页面</title>
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

-->
</style>
</head>
<body id="page5">
<div id="main">
    <table width="100%">
      <tr>
        <td width="34%" height="94"><img src="images/logo.gif"></td>
        <td width="13%"></td>
        <td width="53%"><div align="right">
		<a href="logon.jsp" class="STYLE2">免费注册</a>
		 <a class="STYLE2" href="enter.jsp">登录</a>
		 <a href="home page.jsp" class="STYLE2">首页</a>
	    帮助</div></td>
      </tr>
      <tr>
        <td height="39" bordercolor="#000000"><span class="STYLE2">您的位置：</span><a href="index.html"><span class="STYLE1">首页</span></a><a href="logon.jsp"><span class="STYLE1">注册会员</span></a> </td>
        <td bordercolor="#000000">&nbsp;</td>
        <td bordercolor="#000000"><div align="right"><img src="images/zhu.jpg"></div></td>
      </tr>
  </table>
  </div>
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
											<h2>登陆帐号</h2>
											<form name="form1" method="post" action="LoginServlet">
												<fieldset>
												<div class="field">
													<label>用户名:</label>
													<input name="username" type="text" id="username">
												</div>
												<div class="field">
													<label>密码:</label>
													<input name="pwd" type="password" id="pwd">
												</div>
												<div class="wrapper">
													<label>&nbsp;</label>
													<input name="login" type="submit" id="login" value="登陆" style="width:auto; background-color:#FF9900"></div>
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
						<li><strong><input name="提交" type="submit" value="立即登录"></strong>软件服务外包网是全球领先的创意服务交易平台</li>
						<li><strong>凭自己的一技之长赚取，真金白银</strong>我要赚钱</li>
						<li><strong>发布需求，获得软件服务外包的帮助</strong>立即发布需求</li>
					</ul>
					</div></aside>
										</td>
									  </tr>
									</table>
	
<!-- footer -->
		<footer>
			<div class="inside">
				<a href="http://www.templatemonster.com" class="new_window">软件服务外包首页</a> from cssMoban.com<br/><a href="http://www.cssmoban.com/" class="new_window">cssMoban.com</a> provided by cssMoban.com
			</div>
		</footer>
	</div>

</body>
</html>