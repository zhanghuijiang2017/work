<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/luara.top.css"/>
<title>无标题文档</title>
<style type="text/css">
*{ margin:0; padding:0;}


#bigbox {
	position: absolute;
	width: 100%;
	height:3000px;;
	z-index: 1;
	//background-color:#CCC; //大灰色背景
	//background-image:url(bkgimg/1.jpg);
	background-size:100%;
}

#nav{
	width:100%;
	height:40px;
	background-color:#999;
	}
#nav_menu{
	width:1100px;
	height:40px;
	//background-color:#006;
	margin-left:140px;
	}
#nav_menu a{
	margin-left:45px;
	width:130px;
	height:40px;
	//background-color:#900;
	display:block;
	float:left; 
	line-height:40px; 
	text-align:center; 
	text-decoration:none;
	font-family:"微软雅黑";
	color:#FFF;
	}
#nav_menu a:hover{
	background:url(bkgimg/nav.jpg); color:#0F0; 
	    background-position-x: 50%;
    background-position-y: 50%;
	background-repeat:no-repeat;
	}
#banner{
	width:100%;
	height:400px;
	background:url(bkgimg/bkg2.png);
	}
.example1 { left:140px;}
.example1 ol{ position: relative; width: 180px; height: 20px; top:-30px; left:500px; list-style:none;}
.example1 ol li{ float: left; width: 20px;height: 20px; margin: 10px; background: #fff; }
.example1 ol li.seleted{ background: #1AA4CA; }
#nav2{
	width:1100px;
	height:40px;
	margin-left:140px;
	background-color:#F00;
	}
#nav2 a{
	margin-left:45px;
	width:130px;
	height:40px;
	//background-color:#900;
	display:block;
	float:left; 
	line-height:40px; 
	text-align:center; 
	text-decoration:none;
	font-family:"微软雅黑";
	color:#FFF;
	}
#nav2 a:hover{
	background:url(bkgimg/nav.jpg); color:#0F0; 
	background-position-x: 50%;
    background-position-y: 50%;
	background-repeat:no-repeat;
	}
#movi{
	clear:both;
	width:1100px;
	height:100%;
	//background-color:#00F;
	margin-left:140px;
	//margin-top:20px;
	}

</style>
<script type="text/javascript" src="js/jquery.js"></script>
</head>

<script>
function fangyin(){
	document.getElementById("kuangjia").style.height="1000px";
}
function reyin(){
	document.getElementById("kuangjia").style.height="2500px";
}
	$(document).ready(function(){
			$("button:first").click(
			function(){
			   $.ajax({
			   url:"",
			   data:{pic:123} ,
			   success:function(data){
			   	}
			   })
		}	)
	})



</script>

<body>
<button>dd</button>
<div id="bigbox">
<div id="header"><iframe src="header.jsp" height="86px" width="100%" ></iframe></div>
<div id="nav">
<div id="nav_menu">
   <a href="#">首页</a>
   <a href="#">在线购票</a>
   <a href="#">放映计划</a>
   <a href="#">会员中心</a>
   <a href="#">联系我们</a>
   <a href="#">支付方式</a>
</div>
</div>
<div id="banner"><div id="banner_box">
 <script src="js/jquery-1.8.3.min.js"></script> 
    <!--Luara js文件-->
 <script src="js/jquery.luara.0.0.1.min.js"></script>
 <div class="example1">
        <ul>
            <li><img src="movie/beiai.jpg" alt="1"/></li>
            <li><img src="movie/meiguoduizhang3.jpg" alt="2"/></li>
            <li><img src="movie/qihuansenlin.png" alt="3"/></li>
            <li><img src="images/4.jpg" alt="4"/></li>
        </ul>
        <ol>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
        </ol>
    </div>
    <!--Luara图片切换骨架end-->
<script>
        $(function(){
            $(".example1").luara({width:"1100",height:"400",interval:5000,selected:"seleted",deriction:"top"});

        });
</script>
</div></div>
<div id="nav2">
   <a href="film2.jsp"  target="aaa" onclick="reyin()">正在热映</a>
   <a href="film3.jsp" target="aaa">即将上映</a>
   <a href="film.jsp"  target="aaa" onclick="fangyin()">放映计划</a>
   </div>
<div id="movi">


<iframe src="findAll_film.do" name="aaa"style=" width:1100px; height:3000px;"  ></iframe><!--控制电影页面显示长度 --> 
</div>
</div>
</body>
</html>