<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
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
    <table width="100%">
      <tr>
        <td width="34%" height="94"><img src="images/logo.gif"></td>
        <td width="13%"></td>
        <td width="53%"><div align="right">
		<a href="logon.jsp" class="STYLE2">���ע��</a>
		 <a class="STYLE2" href="enter.jsp">��¼</a>
		 <a href="home page.jsp" class="STYLE2">��ҳ</a>
	    ����</div></td>
      </tr>
      <tr>
        <td height="39" bordercolor="#000000"><span class="STYLE2">����λ�ã�</span><a href="index.html"><span class="STYLE1">��ҳ</span></a><a href="logon.jsp"><span class="STYLE1">ע���Ա</span></a> </td>
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
											<h2>��½�ʺ�</h2>
											<form name="form1" method="post" action="LoginServlet">
												<fieldset>
												<div class="field">
													<label>�û���:</label>
													<input name="username" type="text" id="username">
												</div>
												<div class="field">
													<label>����:</label>
													<input name="pwd" type="password" id="pwd">
												</div>
												<div class="wrapper">
													<label>&nbsp;</label>
													<input name="login" type="submit" id="login" value="��½" style="width:auto; background-color:#FF9900"></div>
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
						<li><strong><input name="�ύ" type="submit" value="������¼"></strong>��������������ȫ�����ȵĴ��������ƽ̨</li>
						<li><strong>ƾ�Լ���һ��֮��׬ȡ��������</strong>��Ҫ׬Ǯ</li>
						<li><strong>�������󣬻�������������İ���</strong>������������</li>
					</ul>
					</div></aside>
										</td>
									  </tr>
									</table>
	
<!-- footer -->
		<footer>
			<div class="inside">
				<a href="http://www.templatemonster.com" class="new_window">������������ҳ</a> from cssMoban.com<br/><a href="http://www.cssmoban.com/" class="new_window">cssMoban.com</a> provided by cssMoban.com
			</div>
		</footer>
	</div>

</body>
</html>