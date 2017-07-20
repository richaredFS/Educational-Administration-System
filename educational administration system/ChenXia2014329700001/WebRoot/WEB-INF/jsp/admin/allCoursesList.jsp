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
	body{background-color:#bfedd2;}
</style>
  </head>

  <body>
<h2>所有课程（2014329700001陈霞制作）</h2>
<form action="${pageContext.request.contextPath}/Teacher/chooseCourses.action">
  <table width="80%" border=1>
	  <tr>
	    <td>删除该课程</td>
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
	<input type="submit" value="提交"/>
</form>
  </body>
</html>
