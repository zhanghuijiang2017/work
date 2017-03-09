<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<style type="text/css">
*{ margin:0; padding:0}
#bigbox2{
	height:1700px;
	width:100%;
	background-color:#0C6;
	position:absolute;
	}
#header2{
	width:100%;
	height:86px;
	//background-color:#999;
	background-image:url(bkgimg/bkg1.png);
	position:absolute;
	z-index:1;
	}
#header2_logo{
	width:35px;
	height:47px;
	margin-left:200px;
	background-color:#066;
	margin-top:20px;
	float:left;
	z-index:1;
	}
#header2_name{
	width:200px;
	height:47px;
	margin-left:20px;
	//background-color:#F00;
	margin-top:20px;
	float:left;
	font-family:"微软雅黑";
	text-align:center;
	font-size:25px;
	color:#FFF;
	z-index:1;
	}

#content {
	position: absolute;
	width: 1000px;
	height: 1614px;
	z-index: 2;
	left: 0px;
	top: 86px;
	background-color:#CCC;
	margin-left:170px;
}
#content_left{
	height:600px;
	width:400px;
	//background-color:#F00;
	margin-left:80px;
	margin-top:50px;
	float:left;
	}
#content_left img{
	width:450px;
	height:600px;
	}
#content_right{
	height:600px;
	width:400px;
	//background-color:#F00;
	margin-left:30px;
	margin-top:40px;
	float:left;
	//position:absolute;
	}
#content_right ul{
	list-style:none;
	margin-left:50px;
	//margin-top:30px;
	}
#content_right ul li{
	font-family:"微软雅黑";
	font-size:35px;
	margin-top:10px;
	color:#FFF;
	}
#content_right ul li font{
	font-size:25px;
	color:black;
}
#content_bottom {
	position: absolute;
	width: 828px;
	height: 732px;
	z-index: 1;
	left: 80px;
	top: 682px;
	//background-color:#F00;
	font-family:"微软雅黑";
	font-size:30px;
}
</style>
</head>

<body>
<div id="bigbox2">
<div id="header2"><div id="header2_logo"><img src="bkgimg/logo3.png" /></div>
<div id="header2_name">小蜜蜂电影网</div>
</div>
<div id="content">
<div id="content_left"><img src="${film.fpicture}" /></div>
<div id="content_right">
<ul>
	<li>电影名：<br/>&nbsp;&nbsp;&nbsp;&nbsp;<font>${film.fname}</font></li>
    <li>类&nbsp;&nbsp;&nbsp;&nbsp;型：<br/>&nbsp;&nbsp;&nbsp;&nbsp;<font>${film.ftype}</font></li>
    <li>地&nbsp;&nbsp;&nbsp;&nbsp;区：<br/>&nbsp;&nbsp;&nbsp;&nbsp;<font>${film.fcountry}</font></li>
    <li>年&nbsp;&nbsp;&nbsp;&nbsp;份：<br/>&nbsp;&nbsp;&nbsp;&nbsp;<font>${film.fmtime}</font></li>
    <li>主&nbsp;&nbsp;&nbsp;&nbsp;演：<br/>&nbsp;&nbsp;&nbsp;&nbsp;<font>${film.fperformer}</font></li>
    
</ul>
</div>
<div id="content_bottom">
简介
<br /><br />
&nbsp;&nbsp;&nbsp;&nbsp;${film.fbriefing}
<div>
<iframe></iframe>
</div>
</div>
</div>
</div>
</body>
</html>
