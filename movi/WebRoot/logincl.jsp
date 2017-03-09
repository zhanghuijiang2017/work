<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String uname = request.getParameter("uname");
	String upwd = request.getParameter("upwd");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","scott","tiger");
	PreparedStatement pstmt= conn.prepareStatement("select * from movie_user where uname=? and upwd=?");	
 	pstmt.setString(1, uname);
 	pstmt.setString(2, upwd);
 	ResultSet rs = pstmt.executeQuery();
 	if(rs.next()==true){
 		request.getRequestDispatcher("header.jsp").forward(request,response);
 	}else{
 		request.getRequestDispatcher("login.jsp").forward(request,response);
 	}
 	
 	
 	
 
 %>

