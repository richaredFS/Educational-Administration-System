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
	   width:400px;
	   margin:0px auto;
	   text-align:center;
	  }
	  body{
	   text-align:center;
	  }
	</style>
</head>

  <body> 
  <h2>修改学生信息</h2>
  <%
   String username=(String)session.getAttribute("username");
   %>
  <div id="main">
   <form name="itemsForm" action="${pageContext.request.contextPath}/Student/updateStudentInfo.action" method="post">
	 <input type="hidden"  name="username" value="${username}" /><br/>
	  学生学号：<input type="text"  name="sno"/><br/><br/>
	  学生姓名：<input type="text"  name="sname"/><br/><br/>
	  学生所属学院：<input type="text" name="sdept"/><br/><br/>
	  学生所属班级：<input type="text" name="sclass"/><br/><br/>
	  学生性别：  <input type="text" name="ssex"/><br/><br/>
	  学生年龄：  <input type="text" name="sage"/><br/><br/>
	 <br/><br/>
	 <input type="submit" value="修改信息"/>
	 <input type="reset" value="重置"/>
	</form>
  </div>
 </body>
</html>
