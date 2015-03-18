<%@ page language="java" import="java.util.*,bean.*,db.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	User u = (User)session.getAttribute("user");
   
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<jsp:include page="head.jsp"></jsp:include>
<html>
	<head>
		<base href="<%=basePath %>">

		<title>My JSP 'javascripttest.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<link rel="stylesheet" href="css/reset.css"
			type="text/css" media="all">
		<link rel="stylesheet" href="css/layout.css"
			type="text/css" media="all">
		<link rel="stylesheet" href="css/style.css"
			type="text/css" media="all">
			<link rel="stylesheet" href="css/ie6.css" type="text/css" media="screen">
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
		<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
		<script type="text/javascript">
		$(function()
		{
			$.post("sortQueryServlet?method=category",function(returnedData, status)
			{
				for(var i = 0; i < returnedData.length; i++)
				{
					var category = returnedData[i];
					var categoryId = category.catId;
					var categoryName = category.catName;

					var $option = $("<option></option>");
					$option.attr("value", categoryId);
					$option.text(categoryName);
					$("#catId").append($option);
				}
			});
			$("#catId").change(function()
			{
				$("#smallId option[value !='']").remove();
				if($("#catId").val() != "")
				{
					$.post("sortQueryServlet?method=smallcat",{catId: $("#catId").val()},
					function(returnedData, status)
					{
						for(var i = 0; i < returnedData.length; i++)
						{
							var smallcat = returnedData[i];
							var smallcatId = smallcat.smallId;
							var smallcatName = smallcat.smallName;
							var $option = $("<option></option>");
							$option.attr("value", smallcatId);
							$option.text(smallcatName);
							$("#smallId").append($option);
						}
					});
				}
			});
		});
		</script>
	</head>


	<body id="page5">
			<div id="main">
				<!-- header -->
				<table width="100%">
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
											<h2>发布需求</h2>
											<form id="contacts-form" method="post"action="finishLogonServlet">
												<table width="100%" border="1">
												  <tr>
													<td>选择类目：
													<select name="catId" id="catId">
														<option value="">--请选择--</option>
													</select> 
													<select name="smallId " id="smallId">
														<option value="">--请选择--</option>
													</select>
													
													</td>
												  </tr>
												
												  <tr>
													<td>一句话描述您的需求:</td>
												  </tr>
												  
												  <tr>
													<td><input name="title" type="text" id="title"></td>
												  </tr>
											
												  <tr>
													<td>将需求说的详细点:</td>
												  </tr>
												  <tr>
													<td><textarea name="taskContent" cols="" rows="" id="taskContent"></textarea></td>
												  </tr>
												  <tr>
													<td><input type="file"/></td>
												  </tr>
												  <tr>
													<td>联系方式:</td>
												  </tr>
												  <tr>
													<td><input name="phoneNumber" type="text" id="phoneNumber" value="输入手机号"></td>
												  </tr>
												  <tr>
												  <td>赏金:</td>
												  </tr>
												  <tr>
												  <td><input name="money" type="text" id="money"></td>
												  </tr>
												  <tr>
												  	<td>截止时间：</td>
												  </tr>
												  <tr>
												  <td><input name="time" type="text" id="time"></td>
												  </tr>
												</table>
												<div style="padding:20px">
												<p>
												<input name="提交" type="submit" id="提交" value="提交" style="width:auto; background-color:#FF9900">
												</p></div>
												
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
									<img src="<%=basePath  %>images/pi.jpg">
								</ul>
							</div>
							</aside>
						</td>
					</tr>
				</table>

			</div>
		</center>
		<jsp:include page="foot.jsp"></jsp:include>
	</body>
</html>
