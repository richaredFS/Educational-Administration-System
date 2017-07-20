<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2014329700001的教务管理系统</title>

</head>
<body> 
当前用户：${id },
<c:if test="${id!=null }">
 <a href="${pageContext.request.contextPath }/logout.action">退出</a>
</c:if>
<form action="${pageContext.request.contextPath }/student/studentquery.action" method="post">
<h1 align="center">欢迎使用教务管理系统</h1>

<a href="${pageContext.request.contextPath }/student/queryCourse.action">课程信息</a>
<a href="${pageContext.request.contextPath }/student/">教师信息</a>
<a href="${pageContext.request.contextPath }/student/coursegrade.action">学生信息</a>
<a href="${pageContext.request.contextPath }/student/coursegrade.action">学生成绩</a>

</form>
</body>

</html>