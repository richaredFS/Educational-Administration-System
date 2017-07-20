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
    
    <title>2014329700001studentList</title>
      
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  <body>
  <h2>所有学生信息</h2>
    <table border="1" width="100%">
    <tr>
    <!-- <td>选择</td> -->
    <td>学生编号</td>
    <td>学生姓名</td>
    <td>学生所属学院</td>
    <td>学生所属班级</td>
    <td>学生性别</td>
    <td>查看详细信息</td>
    </tr>
 <c:forEach items="${students}" var="student">
    <tr>
    <%/*String username=${student.username};
        String username=student.getUsernname();*/ %> 
     <!-- <c:set var="name" value="${student.username}"></c:set> 
     <input type="text"  name="username" value="${name}"/> 
     <input type=hidden  name="username" value="${student.username}"/> -->
    <!-- <td><input type="checkbox" name="username" value="${student.username}"/></td> -->
    <td>${student.sno}</td>
	<td>${student.sname}</td>
	<td>${student.sdept}</td>
	<td>${student.sclass}</td>
	<td>
	  <c:if test="${student.ssex==0}"> 男</c:if>
	  <c:if test="${student.ssex==1}"> 女</c:if>
	</td>
	<td>
	  <a href="${pageContext.request.contextPath}/Student/queryDetail.action?username=${student.username}">点击</a>
	 </td>
    </tr>
	 </c:forEach>
</table>
  </body>
</html>
