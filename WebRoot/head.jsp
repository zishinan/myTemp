<%@ page language="java" import="java.util.*,db.*,bean.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">

<%
request.setCharacterEncoding("UTF-8");
User u=(User)session.getAttribute("user"); 
ControlCategory cc=new ControlCategory();
ControlSmallcategory cn=new ControlSmallcategory();
%>

<head>
<title>首页</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style2.css" type="text/css" media="all">
<script type="text/javascript" src="js/maxheight.js"></script>
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
.STYLE1 {
	font-size: large;
	font-family: "楷体";
}
.STYLE2 {
	font-family: "新宋体";
	font-size: x-large;
	color: #FF9933;
}
.STYLE6 {
	font-family: "宋体";
	font-size: x-large;
	color: #0000FF;
}
-->
</style>
</head>
<body id="page1" onLoad="new ElementMaxHeight();">
<div class="tail-bottom">
	<div id="main">
<!-- header -->
		<header>
			<div class="nav-box">
				<nav>
					<ul class="fright">
						<li><a href="index.jsp"><img src="images/pic-home-act.gif"></a></li>
						
						
						<%
	    		    		if (u != null)
	    		    		{
	    		    	%>
	    		    	<li><a href="userDetailServlet"><%=u.getUserName() %></a></li>
	    		    	<li><a href="logoutServlet">切换帐号</a></li>
	    		    	
	    		
	    		
	    		<%}else{%>
	    		<li><a href="logon.jsp">免费注册</a></li>
	    		
				<li><a href="enter.jsp">登录</a></li>
					
				<%} %>
					</ul>
					<ul>
						<li class="current"><a href="index.jsp">首页</a></li>
						<li><a href="article.html">Java</a></li>
						<li><a href="contact-us.html">C#</a></li>
						<li><a href="task.jsp">C++</a></li>
						<li><a href="sitemap.jsp">C</a></li>
						<li><a href="sitemap.jsp">Python</a></li>
						<li><a href="sitemap.jsp">Android</a></li>
						<li><a href="sitemap.jsp">Lua</a></li>
						<li><a href="sitemap.jsp">VB</a></li>
					</ul>
				</nav>
			</div>
		</header>
</html>
