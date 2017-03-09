<%@ page language="java" import="java.util.*,java.sql.*,cn.hygj.zhj.entity.User" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP '2.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <!--用集合输出-->
  <body>
  <table border=1px; width=500px;>
  <% 
  			request.setCharacterEncoding("utf-8"); 
  			ArrayList<User> users=(ArrayList<User>)request.getAttribute("user"); 
  			for(int i=0;i<users.size();i++){ 
  			User u=users.get(i); 
   %>
  			<tr >
  			<td><%=u.getUserid() %></td>
  			<td><%=u.getUname() %></td>
  			<td><%=u.getUpwd() %></td>
  			<td><%=u.getEmail() %></td>
  			</tr>	
  <%
  			}
   %>
    </table>
  </body>
</html>
