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
  <h2>课程信息(2014329700001陈霞制作)</h2>
               老师编号：${teacher.tno}<br/>
	 老师姓名：${teacher.tname}<br/>
	  老师所属学院：${teacher.tdept}<br/>
	  老师年龄：${teacher.tage}<br/>
  <table border="1" width="50%">
     <tr>
		<td>课程编号</td>
		<td>课程</td>
		<td>课程学分</td>
		<td>课程学时</td>
		<td>课程时间</td>
		<td>学生情况</td>
	  </tr>
	  <c:forEach items="${teacher.courseCustoms}" var="item">
	  <tr>	
		<td>${item.cno}</td>
		<td>${item.cname}</td>
		<td>${item.cgrade}</td>
		<td>${item.chour}</td>
		<td>${item.ctime}</td>
		<td><a href="${pageContext.request.contextPath}/Teacher/queryStudentInfo.action?cno=${item.cno}">点击查看</a></td>
	  </tr>
	</c:forEach>
  </table>
  </body>
</html>
