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
<div id="content_left"><img src="img/盗梦空间.jpg" /></div>
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
&nbsp;&nbsp;&nbsp;&nbsp;Dom Cobb（莱昂纳多·迪卡普里奥 饰）是一名精于潜盗的神偷，专门趁目标人物于睡梦状态中思维最软弱的时候，潜入他们的意识中盗取机密资料。Dom的天赋技能使他成为商界间谍活动梦寐以求的的合作伙伴，但同时亦令他变成失去所爱的国际逃犯。
<br /><br />
　　此时，Cobb接受了一项新任务，这是他一次救赎的机会，但是，他却要做到潜意识犯罪中最不可能的境界：潜植意念。Cobb与他的伙伴并不是如以往般策划完美的盗窃行动，相反是要潜入目标人物最深层次的潜意识中，植入一项意念。如果他们能够成功，这将会是一次史无前例的完美犯罪。但是，即使他们如何精心策划行动的每一步，在这次任务的潜意凶间中，却有一个神秘敌人如影随形，彷似能预知他们计划的每一步……而这个神秘人，则只有Cobb能够感应到其存在……
<br /><br />
一句话评论
<br /><br />
一部结构极其复杂，但却非常引人入胜的科幻梦境之旅。——《好莱坞报道》
<br /><br />
这部影片就像是《黑客帝国》加上《纽约提喻法》，反物理学的探讨、精彩的动作场面、具有冲击力的情感、以及莱昂纳多令人吃惊的表演，都让人沉迷不已，这是诺兰电影的一个全新领域。——《帝国》
<br /><br />
《奠基》是一部很聪明的电影，丰富的细节、错综复杂的叙事，将人带入一个潜意识的迷宫。——《综艺》
<br /><br />
花絮 
<br /><br />
·本片的拍摄计划诞生于《蝙蝠侠前传2：黑暗骑士》的拍摄期间，克里斯托弗·诺兰曾经考虑再度和亲密无间的搭档克里斯蒂安·贝尔合作，但克里斯丁·贝尔因为要拍摄《终结者2018》，以及之后克里斯蒂安·贝尔有自己其他的拍摄计划，所以他建议克里斯托弗·诺兰寻找其他他中意的演员来担任男主角。这时候克里斯托弗·诺兰想起另一位自己很喜欢但一直未曾正式合作的演员莱昂纳多·迪卡普里奥。
<br /><br />
·莱昂纳多·迪卡普里奥只知道本片是由克里斯托弗·诺兰写剧本和导演时，他就确定出演本片，甚至那时候他都不知道本片题材究竟是什么样子。
<br /><br />
·在早期，詹姆斯·弗兰科和克里斯托弗·诺兰会谈的时候曾经决定出演本片的角色，但由于档期冲突，他无法参演本片，最后约瑟夫·高登-莱维特代替出演了原定詹姆斯·弗兰科接下的角色。
<br /><br />
·埃文·蕾切尔·伍德是克里斯托弗·诺兰在原定计划里饰演Ariadne一角的不二人选，但她却拒绝了导演的邀请。最后这个角色由艾伦·佩姬来出演。但在最终敲定由艾伦·佩姬出演这个角色之前，艾米莉·布朗特、凯拉·奈特莉和艾玛·罗伯茨都曾经是克里斯托弗·诺兰考虑的人选。
<br /><br />
·在本片早期公布拍摄计划时，传言莱昂纳多·迪卡普里奥的角色名字叫Jacob Hastley，而艾伦·佩姬扮演的角色名为伊莎贝拉，后来正式公布本片具体细节的时候，两者都证明只是官方宣传上的烟雾弹，莱昂纳多·迪卡普里奥的角色叫Cobb，而艾伦·佩姬的角色叫Ariadne。
<br /><br />
·本片之前广泛认为克里斯托弗·诺兰是借鉴了日本导演今敏于2006年制作的动画片《红辣椒》的创意。但克里斯托弗·诺兰澄清了这一说法，他反复表示本片是完全原创的全新作品。
<br /><br />
·《奠基》是汤姆·哈迪自2001年的《训练日》以来第一部在美国正式上映的作品。
<div>
<iframe></iframe>
</div>
</div>
</div>
</div>
</body>
</html>
