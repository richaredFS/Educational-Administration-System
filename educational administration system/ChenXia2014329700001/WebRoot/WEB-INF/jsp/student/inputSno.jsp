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
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <title>2014329700001</title>
	
	<style type="text/css">
	  #main{
	  margin-top:150px;
	   width:400px;
	   margin-left:35%;
	   text-align:center;
	   background-color:#3c8ed9;
	   padding:5px;
	  }
	  body{
	   text-align:center;
	   background-color:#bfedd2;
	  }
	</style>
</head>

  <body> 
  
  <div id="main">
  <h2> 请输入查询学生的编号 </h2>
   <form name="itemsForm" action="${pageContext.request.contextPath}/Student/searchScore.action" method="post">
	 <input type="text" name="sno"/>
	 <input type="submit" value="提交" />
	</form>
  </div>
 </body>
</html>
