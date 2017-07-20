<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2014329700001陈霞的教务管理系统</title>
</head>
<body> 
当前用户：${id },
<c:if test="$id!=null">
<a href="${pageContext.request.contextPath }/logout.action">退出</a>
</c:if>
<form action="${pageContext.request.contextPath }/student/coursegrade.action" method="post">
<h1>学生成绩：</h1>
<table width="30%" border=1 align="center">
<tr>
	<td>学号</td>
	<td>课程号</td>
	<td>成绩</td>

</tr>
<c:forEach items="${scList }" var="grade">
<tr>
	<td>${sc.sno }</td>
	<td>${sc.cno }</td>
	<td>${sc.grade}</td>	
	<td><a href="${pageContext.request.contextPath }/student/queryCourse.action?id=${sc.sno}">修改</a></td>
	<td><a href="${pageContext.request.contextPath }/student/queryCourse.action?id=${sc.sno}">保存</a></td>
	

</tr>
</c:forEach>
</table>

</form>
</body>

</html>