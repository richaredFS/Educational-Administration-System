<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2013329700038 系统登陆</title>
<style type="text/css">
   #font{
      width:800px;
      margin:0 auto;
      padding:40px 0px 100px 0px;
      font-size:32px;
      text-align:center;
   }
   #main{
      width:800px;
      margin:0 auto;
      text-align:center;
   }
   body{background-color:#bfedd2;}
</style>
</head>
<body>
   <div id="font">教师登录页面(2014329700001陈霞制作)</div>
   <div id="main">
		<form action="${pageContext.request.contextPath }/Teacher/login.action" method="post">
		用户账号：<input type="text" name="username" /><br/><br/>
		用户密码 ：<input type="password" name="password" /><br/><br/>
		<input type="submit" value="登录"/>
		<input type="reset" value="重置"/>
		</form>
    </div>
</body>
</html>