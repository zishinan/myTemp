<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<script src="js1/jquery.js" type="text/javascript"></script>
		<script src="js1/PopupDiv_v1.0.js" type="text/javascript"></script>
		<script src="js1/demo.js" type="text/javascript"></script>
		<script src="js1/checkpwd.js" type="text/javascript"></script>
		<script src="js1/jquery.validate.js" type="text/javascript"></script>
		<script src="js1/index.js" type="text/javascript"></script>
		<link href="<%=basePath%>Witkey/css1/style_pass.css" rel="stylesheet"
			type="text/css" />
		<script src="js1/cmxforms.js" type="text/javascript"></script>
		<link rel="stylesheet" href="<%=basePath%>Witkey/css1/demo.css"
			type="text/css">
		<link rel="stylesheet" href="<%=basePath%>Witkey/css1/PopupDiv.css"
			type="text/css">
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>Witkey/css1/milk.css" />
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>Witkey/css1/chili.css" />
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>Witkey/css1/screen.css" />
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>Witkey/css1/index.css">
		<title>��ʾ���������Ϣhref212</title>
		<meta name="description" content="Place your description here">
		<meta name="keywords" content="put, your, keyword, here">
		<meta name="author"
			content="cssMoban.com - website templates provider">
		<meta charset="gbk">
		<link rel="stylesheet" href="<%=basePath%>Witkey/css/reset.css"
			type="text/css" media="all">
		<link rel="stylesheet" href="<%=basePath%>Witkey/css/layout.css"
			type="text/css" media="all">
		<link rel="stylesheet" href="<%=basePath%>Witkey/css/style1.css"
			type="text/css" media="all">
		<style type="text/css">
.ul1 {
	background: #f3f3f3;
	border: 1px #d0d0d0 solid;
	height: 30px;
	width: 100%;
}

.ul2 {
	height: 60px;
	width: 100%;
	border: 1px #d0d0d0 solid;
	border-top: none
}

.ul1 li {
	display: block;
	float: left;
	text-align: center;
	width: 150px;
	line-height: 30px;
}

.ul2 li {
	display: block;
	float: left;
	text-align: center;
	width: 150px;
	line-height: 60px
}

aside {
	float: left;
	width: 261px
}

.aside_top {
	height: 60px;
	background: #f88b12
}

.aside_middle {
	background: #FFF
}

.span1 {
	float: left;
	margin: 15px 8px 5px;
	font-size: 13px;
}

.top_div {
	float: left;
	margin: 15px 5px;
	text-align: center;
	padding-right: 5px
}

.aside_middle {
	width: 261px;
	float: left;
}
</style>

		<script type="text/javascript" src="js1/script.js"></script>
		<!--[if lt IE 7]>
	<link rel="stylesheet" href="<%=basePath%>Witkey/css/ie6.css" type="text/css" media="screen">
	<script type="text/javascript" src="js/ie_png.js"></script>
	<script type="text/javascript">
		ie_png.fix('.png');
	</script>
<![endif]-->
		<!--[if lt IE 9]>
	<script type="text/javascript" src="js/html5.js"></script>
<![endif]-->
	</head>
	<body id="page4">
		<div class="tail-bottom">
			<div id="main">
				<!-- header -->
				<header>
				<div class="nav-box">
					<nav>
					<ul class="fright">
						<li>
							<a href="<%=basePath%>Witkey/index.jsp"><img
									src="images/pic-home-act.gif">
							</a>
						</li>
						<li>
							<a href="<%=basePath%>Witkey/logon.jsp">���ע��</a>
						</li>
						<li>
							<a href="<%=basePath%>Witkey/enter.jsp">��¼</a>
						</li>
					</ul>
					<ul>
						<li class="current">
							<a href="<%=basePath%>Witkey/index.jsp">��ҳ</a>
						</li>
						<li>
							<a href="<%=basePath%>Witkey/about-us.jsp">��������</a>
						</li>
						<li>
							<a href="<%=basePath%>Witkey/articles.jsp">���</a>
						</li>
						<li>
							<a href="<%=basePath%>Witkey/contact-us.jsp">�ƹ�</a>
						</li>
						<li>
							<a href="<%=basePath%>Witkey/sitemap.jsp">����</a>
						</li>
						<li>
							<a href="<%=basePath%>Witkey/sitemap.jsp">д��</a>
						</li>
						<li>
							<a href="<%=basePath%>Witkey/sitemap.jsp">װ��</a>
						</li>
						<li>
							<a href="<%=basePath%>Witkey/sitemap.jsp">����</a>
						</li>
						<li>
							<a href="<%=basePath%>Witkey/sitemap.jsp">����</a>
						</li>
					</ul>
					</nav>
				</div>
				<h1>
					<a href="<%=basePath%>Witkey/index.jsp">BizSolutions</a>
				</h1>
				<form action="" id="search-form">
					<fieldset>
						<input type="text">
						<a href="<%=basePath%>Witkey/#" onClick="document.getElementById('search-form').submit()"><img
								src="images/button-search.gif">
						</a>
					</fieldset>
				</form>
				</header>
				<div class="wrapper indent">
					<!-- content -->
					<div id="slogan">
						<img src="images/slogan.gif">
					</div>
					<section id="content">
					<div class="inside">
						<h2>
							<span>����</span> ����
						</h2>
						<div class="img-box">
							<p>
								<img src="images/3page-img1.jpg">
								<b>����Ҫ��</b> sit amet, consectetur adipisicing elit, sed do
								eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
								enim ad minim veniam, quis nostrud exercitation ullamco laboris
								nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
								in reprehenderit in voluptate velit esse cillum dolore eu fugiat
								pariatur xcepteur sint occaecat cupidatat non proident sunt
								inculp.
							</p>
							<p style="background: #f3f3f3; padding: 10px">
								1.��ʪë����ĥ�ŵ�Ь�Ӳ�λ�漸���ӣ�Ȼ�����ÿ�ɵ���ë���ס���ŵĵط����ô����ü��£���Ь��ĥ�ŵĵط��û�ƽ����Ь��Ƥ�ʱ����ƽ����Ͳ���ĥ���ˡ�
								<BR>
								<BR>
								2.���ű�ֽ�����һ
								�ţ�մ��ˮ����Ҫ̫ʪ����Ҫ���Ŷ�մ��ˮ��Ȼ�������Ÿɵı�ֽ��סʪ�ı�ֽ�����ڼ��ŵĲ�λ��Ȼ���Ь���ܷ���һ�����ϴ����ҹ���Ϳ����ˡ�
								<BR>
								<BR>
								3.�����Ь��̫С���нţ�������ʪë����ʪ������ЬШ�Ŵ󣬴�������˳���ˡ�
								<BR>
								<BR>
								4.Ь���ڴ���֮ǰ���� �ÿ�����ƽʱ�õ�����Ҳ���ԣ�����Ÿ��Ӵ����Ĳ���Ĩ��һ�㱡���ģ�Ь������˱�ù⻬������ĥ�š�
								��1��͵�4�㱾���Թ��ö���ˣ�����Ч����Ŷ��~��Ҳ������ԣ� �����ٸ��ܺõ�С����Ŷ
								<BR>
								<BR>
							</p>
						</div>
						<hr style="border: 1px #ccc dotted">


						<table width="95%" border="1" align="center">
							<tr>
								<td colspan="4">
									<form name="form1" method="post" action="">

									</form>
								</td>
							</tr>
							<tr>
								<td colspan="4">
									<p>
										&nbsp;
									</p>
									<p>
										��x�����
									</p>
								</td>
							</tr>
							<tr>
								<td width="13%" border:1px
									solid #ccc;   width:100px; text-align:center>
									���¸��
								</td>
								<td width="13%" border:1px
									solid #ccc;   width:100px; text-align:center>
									���ȸ��
								</td>
								<td width="16%" border:1px
									solid #ccc;   width:100px; text-align:center>
									���и��
								</td>
								<td width="58%" border:1px
									solid #ccc;   width:100px; text-align:center>
									<label>
										<form action="servlet/SelectNewsServlet" method="post"
											name="form2">

											<p>
												<label></label>
												<label>
													<input name="keyword" type="text" id="keyword">
												</label>

												<label>
													<input type="submit" name="Submit3" value="����">
												</label>
											</p>


										</form>
									</label>
								</td>
							</tr>


							<tr>
								<td border:1px solid #ccc;   width:100px; text-align:center></td>
							</tr>
						</table>

						<div class="list">
							<ul class="ul1">
								<li>
									������
								</li>
								<li>
									��Ʒ
								</li>
								<li>
									����
								</li>
								<li>
									Ͷ��ʱ��
								</li>
							</ul>
							<ul class="ul2">
								<li>
									<img style="margin: 5px" src="images/fuwushang.gif">
									<a href="sitemap.jsp">�����Ӿ����</a>
								</li>
								<li>
									&nbsp;
								</li>
								<li>
									���� ����
								</li>
								<li>
									2012-06-22
								</li>
							</ul>
						</div>

					</div>
					</section>
					<!-- aside -->
					<aside>
					<div class="aside_top">
						<div class="top_div" style="border-right: 1px #FFF solid">
							<span>Ͷ������</span>
							<br />
							<span style="font-size: 16px; font-weight: bold">103</span>
						</div>
						<div class="top_div" style="border-right: 1px #FFF solid">
							<span>����˴�</span>
							<br />
							<span style="font-size: 16px; font-weight: bold">4791</span>
						</div>
						<div style="float: left; margin: 15px 5px;">
							<span>״̬</span>
							<br />
							<span style="font-size: 13px; color: #0F0;">������Ͷ��</span>
						</div>
					</div>
					<div class="aside_middle">
						<div
							style="height: 35px; text-align: center; line-height: 35px; font-size: 14px">
							Ͷ��ʣ��ʱ��:2��12Сʱ33��33��
							<hr style="border: 1px #CCC dotted; margin-top: 0" />
						</div>
						<div style="margin: 20px 30px">
							<p>
								�����Խ��������?
							</p>
							<p style="text-align: center">
								<input id="PopupDivBtn_35" type="button" value="�ύ���"
									style="width: 145px; height: 45px; font-size: 20px;" />
							</p>
							<div id="PopupDiv_35" style="display: none">
								<br />

								<form action="" method="get">
									<p>
										&nbsp;��ҪͶ��
									</p>

									<p>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���ͼƬ˵�������룩
									</p>
									<p>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<input type="file" />
										&nbsp;&nbsp;&nbsp;ÿ����С������10MB&nbsp;&nbsp;&nbsp;
										<a href="<%=basePath%>Witkey/" target="_blank">�޷������ϴ���</a>
									</p>
									<p>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����ʲôҪ�������
									</p>
									<p>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<form>
										<textarea name="" cols="50" rows="5" value="����˵����"></textarea>
										<br>


										<p>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<input id="tijiao" type="submit" value="�ύ" />
										</p>
									</form>

									<lable>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="checkbox" />
									�����Ķ���ͬ�⡰������������Ͷ��Э�顱
									</lable>
								</form>
							</div>
							<p>
								����������?
							</p>
						</div>
						<div>
							<p style="text-align: center">
								<input type="button" value="������������"
									style="width: 145px; height: 25px;" />
							</p>
						</div>
						<div style="height: 18px; background: #f88b12"></div>
					</div>

					<h2>
						<span>�ʺ���������</span>
					</h2>
					<ul class="services">
						<li>
							<a href="#">������</a>
						</li>
						<li>
							<a href="#">Ӱ�����</a>
						</li>
						<li>
							<a href="#">Natus errorsit voluptatem</a>
						</li>
						<li>
							<a href="#">Accusantium</a>
						</li>
						<li>
							<a href="#">Doloremque laudtium</a>
						</li>
						<li>
							<a href="#">Totamrem aperiam</a>
						</li>
						<li>
							<a href="#">Eaque ipsaquae</a>
						</li>
						<li>
							<a href="#">Lnventore veritatis</a>
						</li>
						<li>
							<a href="#">Quasi architecto betae</a>
						</li>
						<li>
							<a href="#">Vitaedicta sunt</a>
						</li>
					</ul>
					<div class="wrapper">
						<a href="#" class="link1"><span><span>��������</span>
						</span>
						</a>
					</div>
					</aside>
				</div>
				<!-- footer -->
				<footer>
				<div class="inside">
					<a href="http://www.templatemonster.com" class="new_window">��վģ��</a>
					from cssMoban.com
					<br />
					<a href="http://www.cssmoban.com/" class="new_window">cssMoban.com</a>
					provided by cssMoban.com
				</div>
				</footer>
			</div>
		</div>
	</body>
</html>