<%@ page language="java" import="java.util.*,db.*,bean.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">

<%
request.setCharacterEncoding("gbk");
User u=(User)session.getAttribute("user"); 
ControlCategory cc=new ControlCategory();
ControlSmallcategory cn=new ControlSmallcategory();
%>

<head>
<title>��ҳ</title>
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
	font-family: "����";
}
.STYLE2 {
	font-family: "������";
	font-size: x-large;
	color: #FF9933;
}
.STYLE6 {
	font-family: "����";
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
	    		    	<li><a href="logoutServlet">�л��ʺ�</a></li>
	    		    	
	    		
	    		
	    		<%}else{%>
	    		<li><a href="logon.jsp">���ע��</a></li>
	    		
				<li><a href="enter.jsp">��¼</a></li>
					
				<%} %>
					</ul>
					<ul>
						<li class="current"><a href="index.jsp">��ҳ</a></li>
						<li><a href="index.jsp?cat=1">Java</a></li>
						<li><a href="index.jsp?cat=2">C#</a></li>
						<li><a href="index.jsp?cat=3">C++</a></li>
						<li><a href="index.jsp?cat=4">C</a></li>
						<li><a href="index.jsp?cat=5">Python</a></li>
						<li><a href="index.jsp?cat=6">Android</a></li>
						<li><a href="index.jsp?cat=7">Lua</a></li>
						<li><a href="index.jsp?cat=8">VB</a></li>
					</ul>
				</nav>
			</div>
		</header>
</html>
