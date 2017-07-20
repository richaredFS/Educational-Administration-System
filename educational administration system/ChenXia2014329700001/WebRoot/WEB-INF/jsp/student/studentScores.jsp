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
	      a:hover{ text-decoration:underline;color:#D3D3D3;}
	      body{background-color:#bfedd2;}
	  </style>
</head>

  <body> 
  <h2>（2014329700001陈霞制作）</h2> 
  <form name="itemsForm" action="${pageContext.request.contextPath}/Student/updateCourseInfo.action" method="post">
                学生编号：${stu.sno}<br/>
	  学生姓名：${stu.sname}<br/>
	  学生所属学院：${stu.sdept}<br/>
	  学生所属班级：${stu.sclass}<br/>
	  学生性别：
	  <c:if test="${stu.ssex==0}"> 男</c:if>
	  <c:if test="${stu.ssex==1}"> 女</c:if>
	  <br/><br/>
	  <table width="50%" border=1>
	  <tr>
		<td>课程编号</td>
		<td>课程</td>
		<td>课程学分</td>
		<td>课程学时</td>
		<td>课程分数</td>
		<td>老师姓名</td>
	  </tr>
	  <c:forEach items="${student.courseCustoms}" var="item">
	  <tr>	
		<td>${item.cno}</td>
		<td>${item.cname}</td>
		<td>${item.cgrade}</td>
		<td>${item.chour}</td>
		<td>${item.score}</td>
		<td>${item.teacher.tname}</td>
	  </tr>
	</c:forEach>
	</table>
  </form>
 </body>
</html>
