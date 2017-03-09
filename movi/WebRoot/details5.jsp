<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<style type="text/css">
*{ margin:0; padding:0}
#bigbox{
	height:1700px;
	width:100%;
	background-color:#0C6;
	position:absolute;
	}
#header{
	width:100%;
	height:86px;
	//background-color:#999;
	background-image:url(bkgimg/bkg1.png);
	position:absolute;
	z-index:1;
	}
#header_logo{
	width:35px;
	height:47px;
	margin-left:200px;
	background-color:#066;
	margin-top:20px;
	float:left;
	z-index:1;
	}
#header_name{
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
#content_bottom {
	position: absolute;
	width: 828px;
	height: 732px;
	z-index: 1;
	left: 80px;
	top: 682px;
	//background-color:#F00;
	font-family:"微软雅黑";
	font-size:10px;
}
</style>
</head>

<body>
<div id="bigbox">
<div id="header"><div id="header_logo"><img src="bkgimg/logo3.png" /></div>
<div id="header_name">小蜜蜂电影网</div>
</div>
<div id="content">
<div id="content_left"><img src="img/爆鼓烈手.jpg" /></div>
<div id="content_right">
<ul>
	<li>电影名：</li>
    <li>类&nbsp;&nbsp;&nbsp;&nbsp;型：</li>
    <li>地&nbsp;&nbsp;&nbsp;&nbsp;区：</li>
    <li>年&nbsp;&nbsp;&nbsp;&nbsp;份：</li>
    <li>主&nbsp;&nbsp;&nbsp;&nbsp;演：</li>
    
</ul>
</div>
<div id="content_bottom">
简介
<br /><br />
&nbsp;&nbsp;&nbsp;&nbsp;《禁闭岛》根据美国小说家丹尼斯·勒翰的同名小说改编而成，故事发生于波士顿海湾的一座与世隔绝的小岛上，66名精神病罪犯被关押于此，传言岛上正在进行种种人体实验。重重戒备之下，一个杀害了三个亲生孩子的女犯雷切尔，竟诡异失踪。
<br /><br />
　　联邦执法官泰德·丹尼尔（莱昂纳多·迪卡普里奥 饰）和搭档恰克（马克·鲁弗洛 饰）奉命上岛调查此事。而泰德此行前来还有一个隐秘的目的--寻找让妻子（米歇尔·威廉姆斯 饰） 葬身火海的凶手。故事遵循这条线索展开，寻找失踪之谜、访问医院工作人员与病人、地毯式搜查……泰德查遍全岛，意外发现岛上多出一份神秘档案：第67号病人的！岛上所有秘密无不纠结于这个多出来的人。但究竟谁是67号？
<br /><br />
一句话评论
<br /><br />
马丁·斯科塞斯用《禁闭岛》向观众说明，他在黑帮题材之外一样可以把电影拍得那么出色。
<br /><br />
花絮
<br /><br />
在确定马克·鲁弗洛扮演查克一角之前，莱昂纳多·迪卡普里奥和马丁·斯科塞斯还曾经考虑过小罗伯特·唐尼和乔什·布洛林。
<br /><br />
本片是马丁·斯科塞斯与莱昂纳多·迪卡普里奥合作的第四部电影，《禁闭岛》也维持着自2002年开始，马丁·斯科塞斯所拍摄的故事长片必定由莱昂纳多·迪卡普里奥主演的记录。
<br /><br />
派拉蒙当初筹拍本片时的导演是大卫·芬奇，主演则是布拉德·皮特，不过后来两人开始拍摄《本杰明·巴顿奇事》，本片的拍摄计划也随之顺移，最终大卫·芬奇与布拉德·皮特退出了拍摄计划。
<br /><br />
整部电影的拍摄地大部分取景于马萨诸塞州的梅德菲尔德精神病院。
<br /><br />
在《禁闭岛》里，莱昂纳多·迪卡普里奥所饰演的角色非常的晕船，具有讽刺的意味是，莱昂纳多·迪卡普里奥所主演的《泰坦尼克号》中，绝大多数的场景都是在船上。
<br /><br />
因为诸多原因，本片的公映日期从2009年的10月推迟到2010年的2月，这是因为派拉蒙想仿效《沉默的羔羊》那样，在2月公映，最终拿下了次年的奥斯卡。
<div>
<iframe></iframe>
</div>
</div>
</div>
</div>
</body>
</html>
