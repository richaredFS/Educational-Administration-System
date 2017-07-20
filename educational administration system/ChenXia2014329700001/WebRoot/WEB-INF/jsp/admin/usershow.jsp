<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>课程信息 2013329700038</title>

</head>
<body > 
当前用户：${id }，
<c:if test="${id!=null }" >
 <a href="${pageContext.request.contextPath }/logout.action" >退出</a>
</c:if>
<form action="${pageContext.request.contextPath }/student/queryCourse.action" method="post">
用户信息：
<table width="100%" border=1>

</table>
用户列表：
<table width="100%" border=1>
<tr>
	<td>用户名</td>
	<td>id</td>
	<td>密码</td>

</tr>
<c:forEach items="${userList }" var="user">
<tr>	
	<td>${user_pass.username }</td>
	<td>${user_pass.id }</td>
	<td>${user_pass.password }</td>
	
	<td><a href="${pageContext.request.contextPath }/student/queryCourse.action?id=${user_pass.id}">修改</a></td>
	<td><a href="${pageContext.request.contextPath }/student/queryCourse.action?id=${user_pass.id}">保存</a></td>

</tr>
</c:forEach>

</table>
</form>
</body>

</html>