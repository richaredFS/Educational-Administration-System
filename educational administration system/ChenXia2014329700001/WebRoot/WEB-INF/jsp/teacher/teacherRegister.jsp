<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2013329700038 用户注册</title>
<style type="text/css">
body{background-color:#bfedd2;}
      #main{
       text-align:center;
       margin-top:30px;
      }
      #content{
       color:blue;
       text-align:center;
      }
     </style>
</head>
<body>
<div id="content">需要先注册才能登陆！</div>
<br/>

<div id="main">
	<form action="${pageContext.request.contextPath }/Teacher/register.action" method="post">
	默认教学课程编号：<input type="text" name="tcno" /><br/><br/>
	你的编号：<input type="text" name="tno" /><br/><br/>
	你的姓名 ：<input type="text" name="tname" /><br/><br/>
	你的学院 ：<input type="text" name="tdept" /><br/><br/>
	你的年龄：<input type="text" name="tage" /><br/><br/>
	账号名字 ：<input type="text" name="username" value="${error }"/><br/><br/>
	账号密码 ：<input type="password" name="password" /><br/><br/>
	<input type="submit" value="注册"/>
	<input type="reset" value="重置"/>
	</form>
</div>
</body>
</html>
