<%@ page language="java" import="java.util.*,bean.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

User u=(User)session.getAttribute("user"); 
System.out.print("ss"+u.getUserName());

//System.out.print("�������"+request.getParameter("userName"));
%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>�ҵ�����������</title>
<meta name="description" content="Place your description here">
<meta name="keywords" content="put, your, keyword, here">
<meta name="author" content="cssMoban.com - website templates provider">
<meta charset="gbk">
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
        <td colspan="2">.������Ϣ</td>
      </tr>
      <tr>
        <td width="2%">&nbsp;</td>
        <td width="98%">������ݣ�</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>
          <input type="radio" name="serverState" value="0">
          ����
		 &nbsp;
		  <input type="radio" name="serverState" value="1">
		  ���徭Ӫ
		 &nbsp;
		 <input type="radio" name="serverState" value="2">
		 ��ҵ		</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>��ʵ������</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>
		<input name="realName" type="text" id="realName" value="��������ʵ������">
		&nbsp;
		<select name="sex">
		  <option value="1">����</option>
		  <option value="2">Ůʿ</option>
		</select>		</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>Ʒ�����ƣ�</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><input name="serverName" type="text" value="����ĵ���ȡһ���򵥣����������֡�" size="50"></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>���̽��ܣ�</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><textarea name="serverNote" cols="100" rows="5"></textarea></td>
      </tr>
      <tr>
        <td colspan="2">.��ϵ��ʽ</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>����λ��:</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><input name="userAddress" type="text" value="������ϸ��ַ" size="50"></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>�������䣺</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><input name="email" type="text" size="30"></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>��ϵ�绰��</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><input name="phoneNumber" type="text" size="30"></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><input name="�ύ" type="submit" value="�ύ"></td>
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