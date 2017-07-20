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
    
    <title>2014329700001陈霞</title>
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
 	  a{ text-decoration:none;color:white;padding:15px;margin-top:10px; text-align:center;background-color:#3c8ed9;} 
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
  <body>
  <h2>教务管理系统（2014329700001陈霞制作）</h2>

      <p><a href="${pageContext.request.contextPath }/Student/toIndex.action"><b>学生系统</b></a></p>
      <p><a href="${pageContext.request.contextPath }/Teacher/toIndex.action"><b>教师系统</b></a></p>
      <p><a href="${pageContext.request.contextPath }/Admin/toIndex.action"><b>管理员系统</b></a></p>

  </body>
</html>


<!--  http://localhost:8080/EducationManagerSystem/Student/queryCourses.action -->
