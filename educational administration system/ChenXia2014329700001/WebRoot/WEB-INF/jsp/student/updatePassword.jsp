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
    <title>2013329700038studentList</title>
	
	<style type="text/css">
	body{background-color:#bfedd2;}
	  #main{
	  margin:0px auto;
	  margin-top:130px;
	  padding:5px;
	   width:400px;
	   
	   text-align:center;
	   background-color:#3c8ed9;
	  }
	  body{
	   text-align:center;
	  }
	</style>
</head>

  <body> 
 
  <%
   String username=(String)session.getAttribute("username");
   %>
  <div id="main">
   <h2>修改密码</h2>
   <form name="itemsForm" action="${pageContext.request.contextPath}/Student/updatePassword.action" method="post">
	 <input type="hidden"  name="username" value="${username}" /><br/>
	  新密码：<input type="password"  name="password"/><br/><br/>
	 <br/><br/>
	 <input type="submit" value="修改信息"/>
	 <input type="reset" value="重置"/>
	</form>
  </div>
 </body>
</html>
