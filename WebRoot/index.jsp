<%@ page language="java" import="java.util.*,db.*,bean.*"
	pageEncoding="gbk"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	User u = (User) session.getAttribute("user");
	request.setCharacterEncoding("gbk");
	ControlCategory cc = new ControlCategory();
	ControlSmallcategory cn = new ControlSmallcategory();
%>
<jsp:include page="head.jsp"></jsp:include>
<!DOCTYPE html>
<html lang="en">
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
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
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



<!-- content -->
<table width="100%" border="1">
	<tr>
		<td width="70%" colspan="2">
			<div class="inner_copy">
				More <a href="http://www.cssmoban.com/">Website Templates</a> at
				TemplateMonster.com!
			</div>
			<div id="slogan">
				<img src="images/slogan.gif">
			</div>
		</td>
		<td width="30%">
			<table width="100%" height="115" border="1">
				<tr>
					<td><div align="center">
							<a href="publishneeds.jsp"><img src="images/shouye.jpg"></a>
						</div></td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td width="70%" height="220" background="">
			<jsp:include page="tasks.jsp"></jsp:include>
		</td>
		<td width="2%"></td>
		<td width="28%">
			<div
				style="background: #f0f0f0; border: 1px #CCC solid; margin-top: 15px">
				<div>
					<span
						style="color: #000; font-size: 14px; font-weight: bold; line-height: 40px; margin-left: 15px">推荐任务</span><span
						style="font-size: 12px; float: right; line-height: 40px; margin-right: 15px"><a
						href="newTasks.jsp" style="color: #999">更多>></a></span>
				</div>
				<div style="margin: 0 15px">
					<img src="images/delu.jpg" width="230px">
				</div>
				<div style="margin: 10px 15px">
				
				<%
				String catId=request.getParameter("cat");
				
			    int id=0;
			    if(catId != null && catId.length() > 0){
			    	id = Integer.parseInt(catId);
			    }
					ControlTask controlTask = new ControlTask();
					List<Task> newTasks = controlTask.getNewTasks();
					if(id > 0){
						newTasks = controlTask.getNewTasksByCatId(id);
					}
					for (Task task : newTasks) {
				%>
					<a href=""><p style="margin-bottom: 0">
							<%=task.getTitle() %><span style="color: #999"><%=task.getStartTime() %></span>
						</p></a> 
				
				<%
					}
				%>
				</div>
			</div>

		</td>
	</tr>
</table>


<jsp:include page="foot.jsp"></jsp:include>



</html>