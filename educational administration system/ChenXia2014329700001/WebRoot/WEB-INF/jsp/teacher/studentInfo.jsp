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
	<script type="text/javascript">
		function editStudentsAllSubmit(){
			//提交form
			document.itemsForm.action="${pageContext.request.contextPath }/Teacher/editStudentsAllSubmit.action";
			document.itemsForm.submit();
		}
    </script>
    <style type="text/css">
	 body{background-color:#bfedd2;}
     </style>
  </head>
  <body>
  <h2>选修该门课的学生信息(2014329700001陈霞制作)</h2>
  <form name="itemsForm" action="${pageContext.request.contextPath}/Teacher/editStudentsAllSubmit.action" method="post">
  <input type="submit" value="批量修改"/>
  <input type="hidden" name="courseCustom.cno" value="${course.cno}"/>
     <table border="1" width="50%">
    <tr>
    <td>学生编号</td>
    <td>学生姓名</td>
    <td>学生所属学院</td>
    <td>学生所属班级</td>
    <td>学生性别</td>
    <td>学生年龄</td>
    <td>学生成绩</td>
    </tr>
 <c:forEach items="${course.studentCustoms}" var="student" varStatus="status">
    <tr>
    <td>${student.sno}<input type="hidden" name="studentCustoms[${status.index}].sno" value="${student.sno}"/></td>
	<td>${student.sname}<input type="hidden" name="studentCustoms[${status.index}].sname" value="${student.sname}"/></td>
	<td>${student.sdept}<input type="hidden" name="studentCustoms[${status.index}].sdept" value="${student.sdept}"/></td>
	<td>${student.sclass}<input type="hidden" name="studentCustoms[${status.index}].sclass" value="${student.sclass}"/></td>
	<td>
	  <c:if test="${student.ssex==0}"> 男</c:if>
	  <c:if test="${student.ssex==1}"> 女</c:if>
	  <input type="hidden" name="studentCustoms[${status.index}].ssex" value="${student.ssex}"/>
	</td>
	<td>${student.sage}<input type="hidden" name="studentCustoms[${status.index}].sage" value="${student.sage}"/></td>
	<td>${student.score}<input type="hidden" name="studentCustoms[${status.index}].score" value="${student.score}"/>
	<input type="hidden" name="studentCustoms[${status.index}].username" value="${student.username}"/></td>
    </tr>
 </c:forEach>
</table> 
</form>     
  </body>
</html>
