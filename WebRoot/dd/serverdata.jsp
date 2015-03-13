<%@ page language="java" import="java.util.*,bean.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

User u=(User)session.getAttribute("user"); 
System.out.print("ss"+u.getUserName());

//System.out.print("获得名字"+request.getParameter("userName"));
%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>我的软件服务外包</title>
<meta name="description" content="Place your description here">
<meta name="keywords" content="put, your, keyword, here">
<meta name="author" content="cssMoban.com - website templates provider">
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
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
.STYLE1 {font-family: Arial, Helvetica, sans-serif}
.STYLE4 {font-size: 14px}
-->
</style>

<script src="jquery-1.4.2.1.min.js" type="text/javascript"></script>
<script type="text/javascript">
	$(function(){
			$(':text').focus(function(){
					this.myValue = $(this).val();
					$(this).val('');
				}).blur(function(){
						if($(this).val() == null || $(this).val() == ''){
							$(this).val(this.myValue);
						}
					});
		});
</script>

</head>
<body>
<div class="mineright_div">
<form name="form1" method="post" action="<%=basePath  %>servlet/RegisterServerdataServlet?userName=<%=u.getUserName() %>">
    <table width="100%" border="1">
      <tr>
        <td colspan="2">.基础信息</td>
      </tr>
      <tr>
        <td width="2%">&nbsp;</td>
        <td width="98%">您的身份：</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>
          <input type="radio" name="serverState" value="0">
          个人
		 &nbsp;
		  <input type="radio" name="serverState" value="1">
		  个体经营
		 &nbsp;
		 <input type="radio" name="serverState" value="2">
		 企业		</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>真实姓名：</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>
		<input name="realName" type="text" id="realName" value="请输入真实姓名。">
		&nbsp;
		<select name="sex">
		  <option value="1">先生</option>
		  <option value="2">女士</option>
		</select>		</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>品牌名称：</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><input name="serverName" type="text" value="给你的店铺取一个简单，响亮的名字。" size="50"></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>店铺介绍：</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><textarea name="serverNote" cols="100" rows="5"></textarea></td>
      </tr>
      <tr>
        <td colspan="2">.联系方式</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>您的位置:</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><input name="userAddress" type="text" value="您的详细地址" size="50"></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>电子邮箱：</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><input name="email" type="text" size="30"></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>联系电话：</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><input name="phoneNumber" type="text" size="30"></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><input name="提交" type="submit" value="提交"></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td></td>
      </tr>
    </table>
  </form>
</div>
</body>
</html>