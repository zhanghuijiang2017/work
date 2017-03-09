<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <table border=1px;>
  <%
  	request.setCharacterEncoding("utf-8");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","scott","tiger");
	PreparedStatement pstmt= conn.prepareStatement("select * from movie_user");
	ResultSet rs=pstmt.executeQuery();
	while(rs.next()){
	out.print("<tr><td width=200px; height=200px; >"+rs.getString(1)+"</td><td width=200px; height=200px;>"+rs.getString(2)+"</td><td width=200px; height=200px;>"+rs.getString(3)+"</td><td width=200px; height=200px;>"+rs.getString(4)+"</td></tr>");
	};
   
   
   %>
   
   </table>
  </body>
</html>
