<%@page import="bean.Task"%>
<%@page import="db.ControlTask"%>
<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<!DOCTYPE html>
<html lang="en">
<body id="page3">
<div class="tail-bottom">
	<div id="main">
		<div class="wrapper indent">
<!-- content -->
			<section id="content">
  </div>
<h2><span>Task</span> name
				  </h2>
					<ul class="articles"><li><table width="99%" height="135" border="1" cellpadding="1" style="text-indent:35px">
					  <tr style="background:url(images/w.jpg); height:36px; line-height:36px">
    <td width="30%">标题</td>
    <td width="11%">金额</td>
    <td width="15%">投标</td>
    <td width="26%">状态</td>
					  </tr>
					  
<%
ControlTask controlTask = new ControlTask();
List<Task> tasks = controlTask.getNewTasks10();
for(Task task : tasks){
%>
  <tr style="height:58px;">
    <td>￥<%=task.getMoney() %></td>
    <td><a href="sitemap.jsp?taskId=<%=task.getTaskId()%>"><%=task.getTitle() %></a></td>
    <td><%=task.getNumber() %></td>
    <td><%=task.getTime() %>截止交稿</td>
  </tr>
<%
}
%>		  
</table>
				      <br>
					</li>
					</ul>
			  </div>
			</section>
		</div>
</div>
</body>
</html>