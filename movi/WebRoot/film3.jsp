<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    <base href="<%=basePath%>">
    
    <title>My JSP 'film2.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	*{ margin: 0; padding: 0}
	#bigbox{
		width: 1100px;
		height: 100%;
		background-color: #CCCCCC;
	}
	#box{
		width: 1100px;
		height:300px;
		//background-color: #cccccc;
	}
	#box_left{
		width:300px;
		height:300px;
		//background-color: black;
		margin-left:100px;
		float: left;
	}
	#box_right{
		width:400px;
		height:300px;
		//background-color: red;
		margin-left:10px;
		float: left;
	}
	#box_right ul{
	margin-left:50px;
	margin-top:20px;
	}
	#box_right ul li{
	font-size:25px;
	font-family: 微软雅黑;
		list-style-type: none;
	}
	#box_right_bottoninf{
	
		
	}
	#box_right_bottonbuy{
		margin-top:10px;
		margin-left:110px;
	}
		
	</style>
  </head>
  
  <body>
   <div id="bigbox">
   <table border=1px;>
   	<tr >
   		<td id=box>
   			<div id=box_left style=" text-align: center; font-family:微软雅黑; font-size:30px;"><img src="img/1.jpg" width=180 height=220 style="margin-top: 10px"><br/>${film[0].fname}</div>
   			<div id=box_right>
   				<ul>
   					<li>主&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;演:</li>
   					<li>类&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;型:</li>
   					<li>上映日期:</li>
   					<li>评&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;分:8.0</li>
   					<li>简&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;介:</li>
   				</ul><br/>
   			<dd id="box_right_bottoninf"><img src="buttonimage/1.png"  ></dd>   <!-- 影片介绍下面的详情图片 -->
   			<dd id="box_right_bottonbuy"><img src="buttonimage/2.png"  ></dd>		<!-- 影片介绍下面的购买图片 -->
   			</div>
   		</td>
   	</tr>
   </table>
   </div>
  </body>
</html>