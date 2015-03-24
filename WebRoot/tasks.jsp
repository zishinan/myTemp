<%@page import="bean.Task"%>
<%@page import="db.ControlTask"%>
<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<table>
						<tr
							style="background: url(images/w.jpg); height: 36px; line-height: 36px">
							<td width="30%">标题</td>
							<td width="11%">金额</td>
							<td width="15%">投标</td>
							<td width="26%">状态</td>
						</tr>

						<%
							ControlTask controlTask = new ControlTask();
							List<Task> tasks = controlTask.getNewTasks10();
							for (Task task : tasks)
							{
						%>
						<tr style="height: 58px;">
							<td><a href="sitemap.jsp?taskId=<%=task.getTaskId()%>"><%=task.getTitle()%></a></td>
							<td>￥<%=task.getMoney()%></td>
							<td><%=task.getNumber()%></td>
							<td><%=task.getTime()%>截止交稿</td>
							<%System.out.println("time=" + task.getTime()); %>
						</tr>
						<%
							}
						%>
					</table>