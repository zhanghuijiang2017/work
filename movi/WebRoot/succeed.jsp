<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<style type="text/css">
*{ margin:0; padding:0;}
#bkg{
	width:100%;
	height:100%;
	position:absolute;
	background-image:url(bkgimg/6.jpg);
	background-size:100%;
	color:#FFF;
	}
#cle{
	width:1000px;
	height:400px;
	font-family:"Courier New", Courier, monospace;
	font-size:100px;
	position:absolute;
	//background-color:#CCC;
	line-height:400px;
	left:200px;
	font-weight:bolder;
	color:#FF0;
	}

</style>
</head>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("uname");
	String pwd = request.getParameter("upwd");
	String email = request.getParameter("email");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","scott","tiger");
	PreparedStatement pstmt= conn.prepareStatement("insert into movie_user values(seq_movie_user.nextval,?,?,?)");
	pstmt.setString(1, name);
	pstmt.setString(2, pwd);
	pstmt.setString(3, email);
	pstmt.executeUpdate();
 %>

<body>
<div id="bkg">
用户名：<%=name %><br />
密&nbsp;&nbsp;码：<%=pwd %><br />
邮&nbsp;&nbsp;箱:<%=email %><br />

<div id="cle">succeed&nbsp;&nbsp;(*^_^*)</div></div>
</body>
</html>
