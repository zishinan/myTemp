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
<title>Ͷ��������ʾhref172</title>
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
	int bidId = Integer.parseInt(request.getParameter("bidId"));
	int taskId = Integer.parseInt(request.getParameter("taskId"));
	ControlBid cb = new ControlBid();
	Bid b = cb.getBidByBidId(bidId);
	
	ControlTask ct = new ControlTask();
	Task t = ct.getTaskByTaskId(taskId);
 %>
<body id="page5">
<div class="tail-bottom">
	<div id="main">
<!-- header -->
		<jsp:include page="head.jsp"></jsp:include>
		<div class="wrapper indent">
          <!-- content -->
          <div id="slogan"><img src="images/slogan.gif"></div>
          <section id="content">
            <div class="inside">
              <h2><span><%=t.getMoney() %></span><%=t.getTitle() %></h2><span style="float:right">
                <input name="buttontop" type="button"  value="��һ��">
                48/50
                <input name="buttonbottom" type="button" value="��һ��">
              </span>
              <p style="font:15px ΢���ź�"><span>�����ڲ鿴<%=b.getBidId() %>�Ÿ��</span> </p>
              <p>
              <img name="picture" src="" ></p>
              <p>ϣ������ϲ��</p>
              <p class="p0"><%=b.getServerName() %> �ύ�� <%=b.getTime() %> ��ţ�<%=b.getBidId() %> 
              <%if(b.isChoose()==true){ %>
              �����ͨ��
              <%}else{ %>
              ����Ѿܾ�
              <%} %>
               �ٱ� | ����</p>
              <p></p>
              <p style="font:17px  ����; font-weight:bold">�������</p>
			<form action="<%=basePath %>/servlet/LeaveMassgeServlet" method="post">
				<textarea name="message" cols="50" rows="1" id="shuru" style="overflow:hidden">����˵����.</textarea>
				<input id="tijiao" type="submit" value="�ύ" style="display:none" />
			    <input name="bidId" type="hidden" id="bidId" value="<%=b.getBidId() %>">
			</form>
<script type="text/javascript">
shuru=document.getElementById('shuru')
tijiao=document.getElementById('tijiao')
document.getElementById('shuru').onfocus=shuru_focus
document.getElementById('shuru').onblur=shuru_blur
function shuru_focus(){
	if(shuru.value=='����˵����.'){shuru.value=''
	shuru.cols='50'
	shuru.rows='6'
	tijiao.style.display='block'}}
function shuru_blur(){
	if(shuru.value==''){shuru.value='����˵����.'
	shuru.cols='50'
	shuru.rows='1'
	tijiao.style.display='none'}}
</script>

            </div>
          </section>
          <!-- aside -->
<aside>
<div class="aside_top">
<div class="top_div" style="border-right:1px #FFF solid"><span>Ͷ������</span><br /><span style="font-size:16px; font-weight:bold">103</span></div>
<div class="top_div" style="border-right:1px #FFF solid"><span>����˴�</span><br /><span style="font-size:16px; font-weight:bold">4791</span></div>
<div style="float:left; margin:15px 5px;"><span>״̬</span><br /><span style="font-size:13px; color:#0F0;">������Ͷ��</span></div>
</div>
<div class="aside_middle">
<div style="height:35px; text-align:center; line-height:35px; font-size:14px">Ͷ��ʣ��ʱ��:2��12Сʱ33��33��
<hr style="border:1px #CCC dotted; margin-top:0" />
</div>
<div style="margin:20px 30px">
<p>�����Խ��������?</p>
<p style=" text-align:center"><input type="button" value="�ύ���" id="PopupDivBtn_35" style="width:145px; height:45px; font-size:20px;" /></p>
    	<div  id="PopupDiv_35" style="display:none" ><br/>
    	
			<form action="" method="get">
<p>&nbsp;��ҪͶ��</p>

  <p >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���ͼƬ˵�������룩</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="file"/>&nbsp;&nbsp;&nbsp;ÿ����С������10MB&nbsp;&nbsp;&nbsp;<a href="" target="_blank">�޷������ϴ���</a>
  </p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����ʲôҪ�������</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <form>
  <textarea name="" cols="50" rows="5" value="����˵����"></textarea><br>
			

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="tijiao" type="submit" value="�ύ" /></p>
</form>

  <lable>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  	<input type="checkbox" />�����Ķ���ͬ�⡰������������Ͷ��Э�顱
  </lable>
</form>
		</div>
<p>����������?</p>
</div>
<div>
<p style="text-align:center"><input type="button" value="������������" style="width:145px; height:25px;" />
</p>
</div>
<div style="height:18px; background:#f88b12"></div>
</div>

         <h2><span>�ʺ���������</span> </h2>
              <ul class="services">
                <li><a href="#">������</a></li>
                <li><a href="#">Ӱ�����</a></li>
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
              <div class="wrapper"><a href="#" class="link1"><span><span>��������</span></span></a></div>
          </aside>
        </div>
		<!-- footer -->
<jsp:include page="foot.jsp"></jsp:include>
	</div>
</div>
</body>
</html>