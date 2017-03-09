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
	a:hover{
		color:blue;
        text-decoration: underline;
	}  
#movi_left{
	width:200px; 
	height:3000px;
	float:left;
	background-color: #03F;
}
 #movi_left ul h3{
	color:#FFF;
	font-size:25px;
	text-align: center;
	
}

 #movi_left ul h2{
	color:#FFF;
	//float:right;
	margin-top:5px;
	color:red;
}
#movi_left ul hr{
	clear:both;
}
#movi_left ul li{
	list-style: none;
	font-size: 18px;
	text-align:center;
	//margin-top:5px;
	
}
#movi_left ul li a{
    text-decoration: none;
    color:black;
    display:block;
    background-color: #FF3;
}
#movi_left ul li a:hover{
	color:red;
	background-color: blue;
}

	</style> 
  </head>
<script type="text/javascript">

function of(ch){
	ch.style.backgroundColor="blue";
	ch.style.color="red";
	self.setInterval(arg1, arg2)
}
function ob(ch){
	ch.style.backgroundColor="yellow";
	ch.style.color="black";
}

</script>
  
  
  <body>
 
 <div id="movi_left">
<ul>
	
	<h3>检索区</h3>
	<hr/>
	<font style="color:red; margin-left:75px;font-size: 25px; font-weight: bolder;">类型</font><br/>
	<li><a href="findAll_film.do?type=null&&country=${fcountry}&&time=${fmtime}" target="aaa">全部</a></li><hr/>
	<li><a href="findAll_film.do?type=动作&&country=${fcountry}&&time=${fmtime}" target="aaa" onclick="of(this)" onblur="ob(this)">动作</a></li><hr/>
	<li><a href="findAll_film.do?type=战争&&country=${fcountry}&&time=${fmtime}" target="aaa" onclick="of(this)" onblur="ob(this)">战争</a></li><hr/>
	<li><a href="findAll_film.do?type=剧情&&country=${fcountry}&&time=${fmtime}" target="aaa" onclick="of(this)" onblur="ob(this)">剧情</a></li><hr/>
	<li><a href="findAll_film.do?type=爱情&&country=${fcountry}&&time=${fmtime}" target="aaa" onclick="of(this)" onblur="ob(this)">爱情</a></li><hr/>
	<li><a href="findAll_film.do?type=科幻&&country=${fcountry}&&time=${fmtime}" target="aaa" onclick="of(this)" onblur="ob(this)">科幻</a></li><hr/>
	<li><a href="findAll_film.do?type=悬疑&&country=${fcountry}&&time=${fmtime}" target="aaa" onclick="of(this)" onblur="ob(this)">悬疑</a></li><hr/>
	<li><a href="findAll_film.do?type=家庭&&country=${fcountry}&&time=${fmtime}" target="aaa" onclick="of(this)" onblur="ob(this)">家庭</a></li><hr/>
	<li><a href="findAll_film.do?type=犯罪&&country=${fcountry}&&time=${fmtime}" target="aaa" onclick="of(this)" onblur="ob(this)">犯罪</a></li><hr/>
	<li><a href="findAll_film.do?type=恐怖&&country=${fcountry}&&time=${fmtime}" target="aaa" onclick="of(this)" onblur="ob(this)">恐怖</a></li><hr/>
	<li><a href="findAll_film.do?type=动画&&country=${fcountry}&&time=${fmtime}" target="aaa" onclick="of(this)" onblur="ob(this)">动画</a></li><hr/>
	<li><a href="findAll_film.do?type=喜剧&&country=${fcountry}&&time=${fmtime}" target="aaa" onclick="of(this)" onblur="ob(this)">喜剧</a></li><hr/>
</ul>
<ul>
	<font style="color:red; margin-left:75px;font-size: 25px; font-weight: bolder;">地区</font><br/>
	<li><a href="findAll_film.do?type=${ftype}&&country=null&&time=${fmtime}" target="aaa" onclick="of(this)" onblur="ob(this)">全部</a></li><hr/>
	<li><a href="findAll_film.do?type=${ftype}&&country=中国&&time=${fmtime}" target="aaa" onclick="of(this)" onblur="ob(this)" onfocus=" myFunction()">中国</a></li><hr/>
	<li><a href="findAll_film.do?type=${ftype}&&country=美国&&time=${fmtime}" target="aaa" onclick="of(this)" onblur="ob(this)">美国</a></li><hr/>
	<li><a href="findAll_film.do?type=${ftype}&&country=韩国&&time=${fmtime}" target="aaa" onclick="of(this)" onblur="ob(this)">韩国</a></li><hr/>
	<li><a href="findAll_film.do?type=${ftype}&&country=泰国&&time=${fmtime}" target="aaa" onclick="of(this)" onblur="ob(this)">泰国</a></li><hr/>
	<li><a href="findAll_film.do?type=${ftype}&&country=日本&&time=${fmtime}" target="aaa" onclick="of(this)" onblur="ob(this)">日本</a></li><hr/>
	<li><a href="findAll_film.do?type=${ftype}&&country=中国香港&&time=${fmtime}" target="aaa" onclick="of(this)" onblur="ob(this)">中国香港</a></li><hr/>
	<li><a href="findAll_film.do?type=${ftype}&&country=加拿大&&time=${fmtime}" target="aaa" onclick="of(this)" onblur="ob(this)">加拿大</a></li><hr/>
</ul>
<ul>
	<font style="color:red; margin-left:75px;font-size: 25px; font-weight: bolder;">年份</font><br/>
	<li><a href="findAll_film.do?type=${ftype}&&country=${fcountry}&&time=1" target="aaa" onclick="of(this)" onblur="ob(this)">全部</a></li><hr/>
	<li><a href="findAll_film.do?type=${ftype}&&country=${fcountry}&&time=2006" target="aaa" onclick="of(this)" onblur="ob(this)" onfocus="myFunction()">2006</a></li><hr/>
	<li><a href="findAll_film.do?type=${ftype}&&country=${fcountry}&&time=2007" target="aaa" onclick="of(this)" onblur="ob(this)">2007</a></li><hr/>
	<li><a href="findAll_film.do?type=${ftype}&&country=${fcountry}&&time=2008" target="aaa" onclick="of(this)" onblur="ob(this)">2008</a></li><hr/>
	<li><a href="findAll_film.do?type=${ftype}&&country=${fcountry}&&time=2009" target="aaa" onclick="of(this)" onblur="ob(this)">2009</a></li><hr/>
	<li><a href="findAll_film.do?type=${ftype}&&country=${fcountry}&&time=2010" target="aaa" onclick="of(this)" onblur="ob(this)">2010</a></li><hr/>
	<li><a href="findAll_film.do?type=${ftype}&&country=${fcountry}&&time=2011" target="aaa" onclick="of(this)" onblur="ob(this)">2011</a></li><hr/>
	<li><a href="findAll_film.do?type=${ftype}&&country=${fcountry}&&time=2012" target="aaa" onclick="of(this)" onblur="ob(this)">2012</a></li><hr/>
	<li><a href="findAll_film.do?type=${ftype}&&country=${fcountry}&&time=2013" target="aaa" onclick="of(this)" onblur="ob(this)">2013</a></li><hr/>
	<li><a href="findAll_film.do?type=${ftype}&&country=${fcountry}&&time=2014" target="aaa" onclick="of(this)" onblur="ob(this)">2014</a></li><hr/>
	<li><a href="findAll_film.do?type=${ftype}&&country=${fcountry}&&time=2015" target="aaa" onclick="of(this)" onblur="ob(this)">2015</a></li><hr/>
	<li><a href="findAll_film.do?type=${ftype}&&country=${fcountry}&&time=2016" target="aaa" onclick="of(this)" onblur="ob(this)">2016</a></li><hr/>
</ul>
</div>
   <table style=" background-color:#CFC;"> 
   <tr>
   <c:forEach items="${film}" var="film" varStatus="status">
  		<c:if test="${status.index%3==0}">
   		<tr></tr>
   		</c:if>
   		<td style=" margin-left: 20px; width:300px; height:422px; text-align: center;">	
   		<font style="font-size: 20px; font-family: 微软雅黑; ">${film.fname}<br/></font>
   		<img alt="${film.fpicture}" src="${film.fpicture}" width="260px" height="300px"  /><br/><br/>
   		<a style=" font-size: 15px; font-family: 微软雅黑; text-decoration: none; color:black;" href="findById_film.do?id=${film.fid}" target="_blank">查看详情</a>
   		
   					
   		</td>
   </c:forEach>
   </tr>
   </table>
   
  <br/>
   <c:if test="${count1>5 or count>5}">
   <div style=" float:left; margin-left:300px; " ><a href="findAll_film.do?pagenum=${pagenum-1}&&type=${ftype}&&country=${fcountry}&&time=${fmtime}" style="text-decoration: none; color:black;">上一页</a></div>
   <div style=" float:left; margin-left:50px;" ><input type="text" style=" width:20px" id="te" /><input type="button"  onclick=" tiaozhuan()"/><a id="aa" href="#" style="text-decoration: none; color:black;">第${pagenum}页 </a> </div>
   <div style=" float:left; margin-left:50px;"><a href="findAll_film.do?pagenum=${pagenum+1}&&type=${ftype}&&country=${fcountry}&&time=${fmtime}" style="text-decoration: none; color:black;">下一页</a></div> 
   </c:if>
  </body>
</html>
