<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<jsp:include page="head.jsp"></jsp:include>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>我的软件服务外包</title>
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
</head>
<SCRIPT language=javascript>
window.onload = function(){ document.body.scrollTo(0,document.body.scrollHeight); }

 </SCRIPT>
<frameset rows="176,*,80" cols="*" framespacing="8" frameborder="no" border="0">
  
  <frameset cols="175,170,*,175" frameborder="no" border="0" framespacing="10">
  		<frame src="kong.jsp" name="kongFrame" scrolling="no" id="kongFrame" title="mianFrame" target="main" />
  		<frame src="mine_left.jsp" name="leftFrame" id="leftFrame" title="leftFrame" scrolling="no" target="main" />
  		<frame src="mine_right.jsp" name="main" id="rightFrame" title="rightFrame" scrolling="yes" target="_self" />
  		<frame src="kong.jsp" name="kongFrame" scrolling="no" id="kongFrame" title="mianFrame" target="main" />
  </frameset>

</frameset>
<noframes>
<body scrool="no">
overflow-x:hidden
overflow-y:auto
</body>
</noframes>
 <jsp:include page="foot.jsp"></jsp:include>
</html>
