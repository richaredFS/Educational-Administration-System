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
  </head>
  <body>
  <h2>批量修改学生信息</h2>
  <form action="${pageContext.request.contextPath}/Teacher/submitEditStudents.action" method="post">
  <input type="hidden" name="courseCustom.cno" value="${vo.courseCustom.cno}"/>
  <table border="1" width="100%">
 <c:forEach items="${vo.studentCustoms}" var="student" varStatus="status">
    <tr>
    <td>学生编号</td>
    <td>学生姓名</td>
    <td>学生所属学院</td>
    <td>学生所属班级</td>
    <td>学生性别</td>
    <td>学生年龄</td>
    <td>学生成绩</td>
    </tr>
    <tr>
    <td><input type="text" name="studentCustoms[${status.index}].sno" value="${student.sno}"/></td>
	<td><input type="text" name="studentCustoms[${status.index}].sname" value="${student.sname}"/></td>
	<td><input type="text" name="studentCustoms[${status.index}].sdept" value="${student.sdept}"/></td>
	<td><input type="text" name="studentCustoms[${status.index}].sclass" value="${student.sclass}"/></td>
	<td>
	  <input type="text" name="studentCustoms[${status.index}].ssex" value="${student.ssex}"/>
	</td>
    <td><input type="text" name="studentCustoms[${status.index}].sage" value="${student.sage}"/></td>
	<td><input type="text" name="studentCustoms[${status.index}].score" value="${student.score}"/>
		<input type="hidden" name="studentCustoms[${status.index}].username" value="${student.username}"/></td>

    </tr>
 </c:forEach>
</table> 
 <br/><br/><br/><br/>
  <input type="submit" value="提交"/>
</form>     
  </body>
</html>
