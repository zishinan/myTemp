<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<jsp:include page="head.jsp"></jsp:include>
<html lang="en">
<head>
<title>��Աע��ҳ��</title>
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
											<h2>����ע��</h2>
											<form name="form1" method="post" action="registServlet">
												<fieldset>
												<div class="field">
													<label>�û���:</label>
													<input name="username" type="text" id="username">
												</div>
												<div class="field">
													<label>��������:</label>
													<input name="pwd" type="password" id="pwd">
												</div>
												<div class="field">
													<label>ȷ������:</label>
													<input name="pwd2" type="password" id="pwd2">
												</div>
												<div class="field">
													<label>��ʵ����:</label>
													<input name="realname" type="text" id="realname">
												</div>
												<div class="field">
													<label>��ϵ�绰:</label>
													<input name="phonenumber" type="text" id="phonenumber">
												</div>
												<div class="field">
													<label>�����ַ:</label>
													<input name="email" type="text" id="email">
												</div>
												<div class="wrapper">
													<label>&nbsp;</label>
													<input name="ע��" type="submit" id="ע��" value="ע��" style="width:auto; background-color:#FF9900"></div>
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
						<li><strong>�����˺ţ�</strong></li>
						<li><strong><a href="enter.jsp">������½</a></strong>��������������ȫ�����ȵĴ��������ƽ̨</li>
						<li><strong>ƾ�Լ���һ��֮��׬ȡ��������</strong>��Ҫ׬Ǯ</li>
						<li><strong>�������󣬻�������������İ���</strong>������������</li>
					</ul>
					</div></aside>
										</td>
									  </tr>
									</table>
	
<jsp:include page="foot.jsp"></jsp:include>
</html>