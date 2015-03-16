<%@ page language="java" import="java.util.*,db.*,bean.*"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	User u = (User) session.getAttribute("user");
	request.setCharacterEncoding("UTF-8");
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
			<table width="100%" border="1">
				<tr>


					<div class="category">


<% Collection categories = cc.getAllCats(); 
Iterator iterator = categories.iterator();
	while (iterator.hasNext()) {
		Category category = (Category) iterator.next();
		String categoryName = category.getCatName();
%>		
		
		<div class="list1">

							<div class="list1_cate">
								<span><a href="#"><%=categoryName %></a></span>
							</div>


							<div class="list1_left">
								<ul>
									<li>
										<%
											Category ccc = cc.getCategory1(1);
										%>
										<div>
											<a href="task.jsp?id=<%=ccc.getCatId()%>" target="main"
												style="font-size: 16px; font-weight: bold; color: #1577DC"><%=ccc.getCatName()%></a>
										</div> <%
 	Collection c = cn.getSmallCategoryBycatId(1);
 	Iterator it = c.iterator();
 	while (it.hasNext()) {
 		Smallcategory sc = (Smallcategory) it.next();
 %> <a href="article.jsp?id=<%=sc.getSmallId()%>"><%=sc.getSmallName()%></a>

										<%
											}
										%>
									</li>
								</ul>
							</div>

							<div class="list1_right">
								<ul>
									<li>
										<%
											Category cccc = cc.getCategory1(2);
										%>
										<div>
											<a href="task.jsp?id=<%=cccc.getCatId()%>"
												style="font-size: 16px; font-weight: bold; color: #1577DC"><%=cccc.getCatName()%></a>
										</div> <%
 	Collection c1 = cn.getSmallCategoryBycatId(2);
 	Iterator it1 = c1.iterator();
 	while (it1.hasNext()) {
 		Smallcategory sc1 = (Smallcategory) it1.next();
 %> <a href="article.jsp?id=<%=sc1.getSmallId()%>"><%=sc1.getSmallName()%></a>
										<%
											}
										%>
									</li>
								</ul>
							</div>



						</div>
		
		
		
<% }%>	




						






					</div>
				</tr>
				<tr>
					<td height="30" colspan="2"><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;最新任务</p>
					</td>
				</tr>
			</table>
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
					<a href=""><p style="margin-bottom: 0">
							用手机客户端发任务,送您人物大礼包!<span style="color: #999">2012/04/07</span>
						</p></a> 
					<a href="#"><p style="margin-bottom: 0; color: #000">
							点心导航网站全民互动营销大赛<span style="color: #999">2012/04/06</span>
						</p></a> 
					<a href="#"><p style="margin-bottom: 0; color: #000">
							全球公测一服务商评测报名通道开通<span style="color: #999">2012/03/13</span>
						</p></a>
				</div>
			</div>

		</td>
	</tr>
</table>


<jsp:include page="foot.jsp"></jsp:include>



</html>