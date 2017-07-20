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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	body{background-color:#bfedd2;}
	  a{text-decoration:none;color:white;padding:15px;margin-top:10px; text-align:center;background-color:#3c8ed9;}
      #nav{
       text-align:center;
       margin-top:30px;
      }
       #inout{
       position:absolute;
       top:20%;
       right:4%;
      }
      p{padding-top:30px; margin-left:auto;
       margin-right:auto;
       width:150px;
       height:40px;
       border:2px solid #000;
       background-color:#3c8ed9;}
       a:hover{ text-decoration:none;color:yellow;background-color:#226caf;} 
      body{
      text-align:center;
      }
     </style>
  </head>
  <%
   String username=(String)session.getAttribute("username");
   String message=(String)request.getAttribute("message");
   String message1=(String)request.getAttribute("message1");
   %>
  <c:if test="${!empty username}">
     <%="欢迎您！"+username%>
  </c:if>
  <c:if test="${!empty message}">
     <%=message%>
  </c:if>
  <c:if test="${!empty message1}">
     <%=message1%>
  </c:if>
  <body>
  <div id="nav">
	<h2>教务管理系统(2014329700001陈霞制作)</h2>
    <p><a href="<%=basePath%>Admin/queryAllCourses.action"><b>查询所有课程</b></a></p>
    <p><a href="<%=basePath%>Admin/queryAllTeachers.action"><b>教师信息</b></a></p>
    <p><a href="<%=basePath%>Admin/queryAllStudents.action"><b>学生信息</b></a></p>
   </div>
   
   <div id="inout">
      <a href="${pageContext.request.contextPath }/Admin/toRegister.action">注册</a>
      <a href="${pageContext.request.contextPath }/Admin/toLogin.action">登录</a>
      <a href="${pageContext.request.contextPath }/Admin/UpdatePassword.action">修改密码</a>
      <a href="${pageContext.request.contextPath }/Admin/logout.action">退出</a>
    </div>
  </body>
</html>



<!--  http://localhost:8080/StudentManager/Student/queryCourses.action -->
