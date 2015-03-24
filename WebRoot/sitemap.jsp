<%@ page language="java" import="java.util.*,bean.*,db.*" pageEncoding="gbk"%>
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
<meta charset="gbk">
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
	int taskId = Integer.parseInt(request.getParameter("taskId"));
	
	ControlTask ct = new ControlTask();
	Task t = ct.getTaskByTaskId(taskId);
 %>
<body id="page5">
<div class="tail-bottom">
	<div id="main">
<!-- header -->
		<jsp:include page="head.jsp"></jsp:include>
			标题：<%=t.getTitle() %><br/>
			内容：<%=t.getTaskContent() %>
			
		<jsp:include page="foot.jsp"></jsp:include>
	</div>
</div>
</body>
</html>