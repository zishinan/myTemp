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
		<title>显示任务具体信息href212</title>
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
							<a href="<%=basePath%>Witkey/logon.jsp">免费注册</a>
						</li>
						<li>
							<a href="<%=basePath%>Witkey/enter.jsp">登录</a>
						</li>
					</ul>
					<ul>
						<li class="current">
							<a href="<%=basePath%>Witkey/index.jsp">首页</a>
						</li>
						<li>
							<a href="<%=basePath%>Witkey/about-us.jsp">所有需求</a>
						</li>
						<li>
							<a href="<%=basePath%>Witkey/articles.jsp">设计</a>
						</li>
						<li>
							<a href="<%=basePath%>Witkey/contact-us.jsp">推广</a>
						</li>
						<li>
							<a href="<%=basePath%>Witkey/sitemap.jsp">开发</a>
						</li>
						<li>
							<a href="<%=basePath%>Witkey/sitemap.jsp">写作</a>
						</li>
						<li>
							<a href="<%=basePath%>Witkey/sitemap.jsp">装修</a>
						</li>
						<li>
							<a href="<%=basePath%>Witkey/sitemap.jsp">商务</a>
						</li>
						<li>
							<a href="<%=basePath%>Witkey/sitemap.jsp">生活</a>
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
							<span>需求</span> 详情
						</h2>
						<div class="img-box">
							<p>
								<img src="images/3page-img1.jpg">
								<b>具体要求</b> sit amet, consectetur adipisicing elit, sed do
								eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
								enim ad minim veniam, quis nostrud exercitation ullamco laboris
								nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
								in reprehenderit in voluptate velit esse cillum dolore eu fugiat
								pariatur xcepteur sint occaecat cupidatat non proident sunt
								inculp.
							</p>
							<p style="background: #f3f3f3; padding: 10px">
								1.用湿毛巾在磨脚的鞋子部位捂几分钟，然后再拿块干的软毛巾包住挤脚的地方，用锤子敲几下，把鞋子磨脚的地方敲击平整，鞋子皮质变软和平整后就不会磨脚了。
								<BR>
								<BR>
								2.拿张报纸，捏成一
								团，沾点水，不要太湿，但要整团都沾到水，然后再拿张干的报纸裹住湿的报纸，塞在挤脚的部位，然后把鞋子密封在一个塑料袋里，过夜，就可以了。
								<BR>
								<BR>
								3.如果新鞋因太小而夹脚，不妨用湿毛巾捂湿，再用鞋楔撑大，穿起来就顺脚了。
								<BR>
								<BR>
								4.鞋子在穿上之前，先 拿块香皂（平时用的蜡烛也可以）在与脚跟接触最多的部分抹上一层薄薄的，鞋跟会因此变得光滑而不再磨脚。
								第1点和第4点本人试过好多次了，很有效果的哦！~大家不妨试试！ 另外再附很好的小方法哦
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
										共x个稿件
									</p>
								</td>
							</tr>
							<tr>
								<td width="13%" border:1px
									solid #ccc;   width:100px; text-align:center>
									最新稿件
								</td>
								<td width="13%" border:1px
									solid #ccc;   width:100px; text-align:center>
									最先稿件
								</td>
								<td width="16%" border:1px
									solid #ccc;   width:100px; text-align:center>
									所有稿件
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
													<input type="submit" name="Submit3" value="搜索">
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
									服务商
								</li>
								<li>
									作品
								</li>
								<li>
									地区
								</li>
								<li>
									投稿时间
								</li>
							</ul>
							<ul class="ul2">
								<li>
									<img style="margin: 5px" src="images/fuwushang.gif">
									<a href="sitemap.jsp">睛灵视觉设计</a>
								</li>
								<li>
									&nbsp;
								</li>
								<li>
									辽宁 沈阳
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
							<span>投标数量</span>
							<br />
							<span style="font-size: 16px; font-weight: bold">103</span>
						</div>
						<div class="top_div" style="border-right: 1px #FFF solid">
							<span>浏览人次</span>
							<br />
							<span style="font-size: 16px; font-weight: bold">4791</span>
						</div>
						<div style="float: left; margin: 15px 5px;">
							<span>状态</span>
							<br />
							<span style="font-size: 13px; color: #0F0;">正接受投标</span>
						</div>
					</div>
					<div class="aside_middle">
						<div
							style="height: 35px; text-align: center; line-height: 35px; font-size: 14px">
							投标剩余时间:2天12小时33分33秒
							<hr style="border: 1px #CCC dotted; margin-top: 0" />
						</div>
						<div style="margin: 20px 30px">
							<p>
								您可以解决此需求?
							</p>
							<p style="text-align: center">
								<input id="PopupDivBtn_35" type="button" value="提交稿件"
									style="width: 145px; height: 45px; font-size: 20px;" />
							</p>
							<div id="PopupDiv_35" style="display: none">
								<br />

								<form action="" method="get">
									<p>
										&nbsp;我要投稿
									</p>

									<p>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;添加图片说明（必须）
									</p>
									<p>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<input type="file" />
										&nbsp;&nbsp;&nbsp;每个大小不超过10MB&nbsp;&nbsp;&nbsp;
										<a href="<%=basePath%>Witkey/" target="_blank">无法正常上传？</a>
									</p>
									<p>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;还有什么要告诉买家
									</p>
									<p>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<form>
										<textarea name="" cols="50" rows="5" value="我来说两句"></textarea>
										<br>


										<p>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<input id="tijiao" type="submit" value="提交" />
										</p>
									</form>

									<lable>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="checkbox" />
									我已阅读并同意“软件服务外包网投标协议”
									</lable>
								</form>
							</div>
							<p>
								有类似需求?
							</p>
						</div>
						<div>
							<p style="text-align: center">
								<input type="button" value="立即发布需求"
									style="width: 145px; height: 25px;" />
							</p>
						</div>
						<div style="height: 18px; background: #f88b12"></div>
					</div>

					<h2>
						<span>适合您的需求</span>
					</h2>
					<ul class="services">
						<li>
							<a href="#">软件设计</a>
						</li>
						<li>
							<a href="#">影视设计</a>
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
						<a href="#" class="link1"><span><span>更多需求</span>
						</span>
						</a>
					</div>
					</aside>
				</div>
				<!-- footer -->
				<footer>
				<div class="inside">
					<a href="http://www.templatemonster.com" class="new_window">网站模板</a>
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