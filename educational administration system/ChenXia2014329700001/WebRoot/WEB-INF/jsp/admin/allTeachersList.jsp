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
<h2>所有老师信息（2014329700001陈霞制作）</h2>
  <table width="60%" border=1>
	  <tr>
		<td>教师编号</td>
		<td>姓名</td>
		<td>学院</td>
		<td>年龄</td>
	  </tr>
	  <c:forEach items="${teachers }" var="teacher">
	  <tr>	
		<td>${teacher.tno}</td>
		<td>${teacher.tname}</td>
		<td>${teacher.tdept}</td>
		<td>${teacher.tage}</td>
		
	  </tr>
	  </c:forEach>
	</table>
  </body>
</html>
