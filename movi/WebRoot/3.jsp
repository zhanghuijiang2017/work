<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"   %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP '3.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <table border=1px; width=800px; bgcolor=#FFFF66;>
  <th>编号</th><th>名字</th><th>密码</th><th>邮箱</th>
  <body><br><c:forEach var="user" items="${user}" varStatus="a">
  		<tr >
  		<td>${user.userid}</td>
  		<td style="text-align:center">${user.uname}</td>
  		<td style="text-align:center">${user.upwd}</td>
  		<td style="text-align:center">${user.email}</td>
  		</tr>
  
  </c:forEach><br></body>
  </table>
  <a href="#">上一页</a>
  <a href="#">下一页</a>
</html>
