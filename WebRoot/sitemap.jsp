<%@ page language="java" import="java.util.*,bean.*,db.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
	<link href="css1/style_pass.css" rel="stylesheet" type="text/css"/>
	<script src="js1/cmxforms.js" type="text/javascript"></script>
	<link rel="stylesheet" href="css1/demo.css" type="text/css" >
	<link rel="stylesheet" href="css1/PopupDiv.css" type="text/css" >
	<link rel="stylesheet" type="text/css" href="css1/milk.css" />
	<link rel="stylesheet" type="text/css" href="css1/chili.css" />
	<link rel="stylesheet" type="text/css" href="css1/screen.css" />
	<link rel="stylesheet" type="text/css" href="css1/index.css">
<title>投标内容显示href172</title>
<meta name="description" content="Place your description here">
<meta name="keywords" content="put, your, keyword, here">
<meta name="author" content="cssMoban.com - website templates provider">
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style1.css" type="text/css" media="all">
<style type="text/css">
aside{float:left; width:261px}
.aside_top{height:60px; background:#f88b12}
.aside_middle{background:#FFF}
.span1{ float:left; margin:15px 8px 5px; font-size:13px; }
.top_div{float:left; margin:15px 5px; text-align:center; padding-right:5px}
.aside_middle{width:261px; float:left;}
</style>

<script type="text/javascript" src="js1/script.js"></script>
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
</head>
<%
	int bidId = Integer.parseInt(request.getParameter("bidId"));
	ControlBid cb = new ControlBid();
	Bid b = cb.getBidByBidId(bidId);
	
	ControlTask ct = new ControlTask();
	Task t = ct.getTaskByBidId(bidId);
 %>
<body id="page5">
<div class="tail-bottom">
	<div id="main">
<!-- header -->
		<header>
			<div class="nav-box">
				<nav>
					<ul class="fright">
						<li><a href="index.jsp"><img src="images/pic-home-act.gif"></a></li>
						<li><a href="logon.jsp">免费注册</a></li>
						<li><a href="enter.jsp">登录</a></li>
					</ul>
					<ul>
						<li class="current"><a href="index.jsp">首页</a></li>
						<li><a href="about-us.jsp">所有需求</a></li>
						<li><a href="articles.jsp">设计</a></li>
						<li><a href="contact-us.jsp">推广</a></li>
						<li><a href="sitemap.jsp">开发</a></li>
						<li><a href="sitemap.jsp">写作</a></li>
						<li><a href="sitemap.jsp">装修</a></li>
						<li><a href="sitemap.jsp">商务</a></li>
						<li><a href="sitemap.jsp">生活</a></li>
					</ul>
				</nav>
			</div>
			<h1><a href="index.jsp">BizSolutions</a></h1>
			<form action="" id="search-form">
				<fieldset>
				<input type="text">
				<a href="#" onClick="document.getElementById('search-form').submit()"><img src="images/button-search.gif"></a>
				</fieldset>
			</form>
		</header>
		<div class="wrapper indent">
          <!-- content -->
          <div id="slogan"><img src="images/slogan.gif"></div>
          <section id="content">
            <div class="inside">
              <h2><span><%=t.getMoney() %></span><%=t.getTitle() %></h2><span style="float:right">
                <input name="buttontop" type="button"  value="上一个">
                48/50
                <input name="buttonbottom" type="button" value="下一个">
              </span>
              <p style="font:15px 微软雅黑"><span>您正在查看<%=b.getBidId() %>号稿件</span> </p>
              <p>
              <img name="picture" src="" ></p>
              <p>希望您能喜欢</p>
              <p class="p0"><%=b.getServerName() %> 提交于 <%=b.getTime() %> 编号：<%=b.getBidId() %> 
              <%if(b.isChoose()==true){ %>
              买家已通过
              <%}else{ %>
              买家已拒绝
              <%} %>
               举报 | 分享</p>
              <p></p>
              <p style="font:17px  宋体; font-weight:bold">稿件点评</p>
			<form action="<%=basePath %>/servlet/LeaveMassgeServlet" method="post">
				<textarea name="message" cols="50" rows="1" id="shuru" style="overflow:hidden">我来说两句.</textarea>
				<input id="tijiao" type="submit" value="提交" style="display:none" />
			    <input name="bidId" type="hidden" id="bidId" value="<%=b.getBidId() %>">
			</form>
<script type="text/javascript">
shuru=document.getElementById('shuru')
tijiao=document.getElementById('tijiao')
document.getElementById('shuru').onfocus=shuru_focus
document.getElementById('shuru').onblur=shuru_blur
function shuru_focus(){
	if(shuru.value=='我来说两句.'){shuru.value=''
	shuru.cols='50'
	shuru.rows='6'
	tijiao.style.display='block'}}
function shuru_blur(){
	if(shuru.value==''){shuru.value='我来说两句.'
	shuru.cols='50'
	shuru.rows='1'
	tijiao.style.display='none'}}
</script>

            </div>
          </section>
          <!-- aside -->
<aside>
<div class="aside_top">
<div class="top_div" style="border-right:1px #FFF solid"><span>投标数量</span><br /><span style="font-size:16px; font-weight:bold">103</span></div>
<div class="top_div" style="border-right:1px #FFF solid"><span>浏览人次</span><br /><span style="font-size:16px; font-weight:bold">4791</span></div>
<div style="float:left; margin:15px 5px;"><span>状态</span><br /><span style="font-size:13px; color:#0F0;">正接受投标</span></div>
</div>
<div class="aside_middle">
<div style="height:35px; text-align:center; line-height:35px; font-size:14px">投标剩余时间:2天12小时33分33秒
<hr style="border:1px #CCC dotted; margin-top:0" />
</div>
<div style="margin:20px 30px">
<p>您可以解决此需求?</p>
<p style=" text-align:center"><input type="button" value="提交稿件" id="PopupDivBtn_35" style="width:145px; height:45px; font-size:20px;" /></p>
    	<div  id="PopupDiv_35" style="display:none" ><br/>
    	
			<form action="" method="get">
<p>&nbsp;我要投稿</p>

  <p >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;添加图片说明（必须）</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="file"/>&nbsp;&nbsp;&nbsp;每个大小不超过10MB&nbsp;&nbsp;&nbsp;<a href="" target="_blank">无法正常上传？</a>
  </p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;还有什么要告诉买家</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <form>
  <textarea name="" cols="50" rows="5" value="我来说两句"></textarea><br>
			

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="tijiao" type="submit" value="提交" /></p>
</form>

  <lable>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  	<input type="checkbox" />我已阅读并同意“软件服务外包网投标协议”
  </lable>
</form>
		</div>
<p>有类似需求?</p>
</div>
<div>
<p style="text-align:center"><input type="button" value="立即发布需求" style="width:145px; height:25px;" />
</p>
</div>
<div style="height:18px; background:#f88b12"></div>
</div>

         <h2><span>适合您的需求</span> </h2>
              <ul class="services">
                <li><a href="#">软件设计</a></li>
                <li><a href="#">影视设计</a></li>
                <li><a href="#">Natus errorsit voluptatem</a></li>
                <li><a href="#">Accusantium</a></li>
                <li><a href="#">Doloremque laudtium</a></li>
                <li><a href="#">Totamrem aperiam</a></li>
                <li><a href="#">Eaque ipsaquae</a></li>
                <li><a href="#">Lnventore veritatis</a></li>
                <li><a href="#">Quasi architecto betae</a></li>
                <li><a href="#">Vitaedicta sunt</a></li>
                <li><a href="#">Nemoenim ipsam</a></li>
                <li><a href="#">Voluptatem quia</a></li>
                <li><a href="#">Dluptas sit aspernatur</a></li>
                <li><a href="#">Sedut perspiciatis</a></li>
                <li><a href="#">Unde omnisiste</a></li>
                <li><a href="#">Natus errorsit voluptatem</a></li>
                <li><a href="#">Accusantium</a></li>
                <li><a href="#">Doloremque laudtium</a></li>
                <li><a href="#">Totamrem aperiam</a></li>
                <li><a href="#">Eaque ipsaquae</a></li>
                <li><a href="#">Lnventore veritatis</a></li>
              </ul>
              <div class="wrapper"><a href="#" class="link1"><span><span>更多需求</span></span></a></div>
          </aside>
        </div>
		<!-- footer -->
<footer>
			<div class="inside">
				<a href="http://www.templatemonster.com" class="new_window">网站模板</a> from cssMoban.com<br/><a href="http://www.cssmoban.com/" class="new_window">cssMoban.com</a> provided by cssMoban.com
			</div>
	  </footer>
	</div>
</div>
</body>
</html>