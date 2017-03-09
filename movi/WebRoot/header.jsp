<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<style type="text/css">
*{ margin:0; padding:0;}
#header{
	width:100%;
	height:86px;
	//background-color:#666;
	background:url(bkgimg/bkg1.png);
	position:absolute;
	}
#header_name{
	width:300px;
	height:86px;
	//background-color:#096;
	margin-left:200px;
	font-size:30px;
	font-family:"微软雅黑";
	color:#FF6;
	text-align:center;
	float:left;

	}
#header_logo{
	width:30px;;
	height:40px;
	//margin-left:20px;
	float:left;
	//background-color:#999;
	float:left;
	}
#headerbox{
	width:1100px;
	height:86px;
	//background-color:#006;
	margin-left:140px;
	
	}
#header_right{
	width:350px;
	height:86px;
	//background-color:#F00;
	float:right;
	margin-right:80px;
	font-family:"微软雅黑";
	font-size:24px;
	color:#FFF;
}#name{
	margin-top:20px;}
</style>
</head>
<%
	request.setCharacterEncoding("utf-8");
 %>

<body>
<div id="header">
<div id="headerbox">
<div id="header_name" ><div id="header_logo"><img src="bkgimg/logo3.png" style="margin-top:20px;"></div><div id="name">小蜜蜂电影网</div></div><div id="header_right"><br />欢迎${nickname}登录小蜜蜂电影网</div>
</div>
</div>
</body>
</html>
