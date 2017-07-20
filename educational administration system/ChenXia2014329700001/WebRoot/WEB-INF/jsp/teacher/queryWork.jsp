<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>2014329700001</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	  <style type="text/css">
	      a{ text-decoration:none; color:#000;}
	      a:hover{ text-decoration:none;color:#D3D3D3;}
	      body{background-color:#bfedd2;}
	  </style>
</head>

  <body> 
  <h2>您教学任务中的课程(2014329700001陈霞制作)</h2> 
  <form name="itemsForm" action="${pageContext.request.contextPath}/Teacher/updateCourseInfo.action" method="post">
                老师编号：${teacher.tno}<br/>
	 老师姓名：${teacher.tname}<br/>
	  老师所属学院：${teacher.tdept}<br/>
	  老师年龄：${teacher.tage}<br/>
	  <br/><br/>
	  <table width="50%" border=1>
	  <tr>
	    <td>是否取消该课程</td>
		<td>课程编号</td>
		<td>课程</td>
		<td>课程学分</td>
		<td>课程学时</td>
		<td>课程时间</td>
	  </tr>
	  <c:forEach items="${courses}" var="item">
	  <tr>	
	    <td><input type="checkbox" name="course_no" value="${item.cno}" /></td>
		<td>${item.cno}</td>
		<td>${item.cname}</td>
		<td>${item.cgrade}</td>
		<td>${item.chour}</td>
		<td>${item.ctime}</td>
	  </tr>
	</c:forEach>
	</table>
	<br/><br/>
	<input type="submit" value="提交" />
  </form>
 </body>
</html>
