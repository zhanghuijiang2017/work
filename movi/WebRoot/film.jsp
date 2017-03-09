<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<style type="text/css">
*{ margin:0; padding:0;}
#bigbox{
	width:100%;
	height:100%;
	//background-color:#999;
	}
td{
	text-align:center; 
	color:#000; 
	font-size:20px; 
	font-family:'微软雅黑'
}
a{
text-decoration: none;
color: black;
}
a:hover{
color:blue;
text-decoration: underline;
}
#bigbox1{
width:100%;
	height:100%;
position: absolute;
z-index: 1;
display: none;

}
#a1{
background: #000;
}

</style>
</head>
<script>
function qw(){
	document.getElementById("bigbox1").style.display="block";
}
</script>
<body>
<div id="bigbox">
<table width="100%" height="100%" border="1px">

	<tr>
    	<td style="text-align:center"><img src="img/1.jpg" style="width:150px; height:200px;" /></td>
        <td style="text-align:center"><img src="img/2.jpg" style="width:150px; height:200px;" /></td>
        <td style="text-align:center"><img src="img/3.jpg" style="width:150px; height:200px;" /></td>
        <td style="text-align:center"><img src="img/4.jpg" style="width:150px; height:200px;" /></td>
    </tr>
    <tr>
    	<td >爆鼓烈手<br /><br /><a href="details2.jsp" target="_blank">查看详情</a>&nbsp; 购票</td>
        <td >被解救的姜戈<br /><br /><a href="#">查看详情</a>&nbsp; 购票</td>
        <td >盗梦空间<br /><br /><a href="#">查看详情</a>&nbsp; 购票</td>
        <td >复仇者联盟<br /><br /><a href="#">查看详情</a>&nbsp; 购票</td>
    </tr>
    <tr>
    	<td style="text-align:center"><img src="img/5.jpg" style="width:150px; height:200px;" /></td>
        <td style="text-align:center"><img src="img/6.jpg" style="width:150px; height:200px;" /></td>
        <td style="text-align:center"><img src="img/7.jpg" style="width:150px; height:200px;" /></td>
        <td style="text-align:center"><img src="img/8.jpg" style="width:150px; height:200px;" /></td>
    </tr>
    <tr>
    	<td >禁闭岛<br /><br /><a href="#">查看详情</a>&nbsp; 购票</td>
        <td >惊天魔盗团<br /><br /><a href="#">查看详情</a>&nbsp; 购票</td>
        <td >模仿游戏<br /><br /><a href="#">查看详情</a>&nbsp; 购票</td>
        <td >神探夏洛克<br /><br /><a href="#">查看详情</a>&nbsp; 购票</td>
    </tr>
    <tr>
    	<td style="text-align:center"><img src="img/9.jpg" style="width:150px; height:200px;" /></td>
        <td style="text-align:center"><img src="img/10.jpg" style="width:150px; height:200px;" /></td>
        <td style="text-align:center"><img src="img/11.jpg" style="width:150px; height:200px;" /></td>
        <td style="text-align:center"><img src="img/12.jpg" style="width:150px; height:200px;" /></td>
    </tr>
    <tr>
    	<td >踏雪寻梅<br /><br /><a href="#">查看详情</a>&nbsp; 购票</td>
        <td >头脑特工队<br /><br /><a href="#">查看详情</a>&nbsp; 购票</td>
        <td >星际穿越<br /><br /><a href="#">查看详情</a>&nbsp; 购票</td>
        <td >致命魔术<br /><br /><a href="#">查看详情</a>&nbsp; 购票</td>
    </tr> 
  
</table>
</div>
</body>
</html>
