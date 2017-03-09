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
&nbsp;&nbsp;&nbsp;&nbsp;美国队长在被冰封数年后，终于苏醒过来。这个世界已经不再是他过去所熟悉的样子，各类型的邪恶对手层出不穷，整个社会动荡不安，单靠一个人的力量已无法拯救世界。于是美国队长、钢铁侠、雷神、绿巨人等超级英雄聚集在一起，组成史上最强大的“复仇者”团队，共同惩恶扬善，为和平而战。 
<br /><br />
　　一股突如其来的强大邪恶势力对地球造成致命威胁，没有任何一个超级英雄能够单独抵挡。长期致力于保护全球安危的神盾局（SHIELD）感到措手不及，其指挥官“独眼侠”尼克－法瑞（塞缪尔·杰克逊饰）意识到他必须创建一个“史上最强”的联盟组织，云集各方超级英雄一起发威，才能拯救世界于水深火热，抵御黑暗势力的侵袭。于是由六大超级英雄－“钢铁侠”、“雷神”、“美国队长”、“绿巨人”、“黑寡妇”和“鹰眼”组成的“复仇者联盟”应运而生。他们各显神通，团结一心，终于战胜了邪恶势力，保证了地球的安全。
<br /><br />
花絮 
<br /><br />
·钢铁侠在片中总是把自己这群盟友称为“地球最强”（Earth's mightiest heroes, that kind of thing）。这句话来源于1963年《复仇者联盟》漫画出版时的标语。而且，这句话也成为了2010年动画版的标题：《复仇者：超级英雄联盟》（The Avengers: Earth's Mightiest Heroes）。
<br /><br />
·这是绿巨人和雷神第二次同时出现在同一部影视作品中。他们第一次同台亮相是在1988年的电视电影《绿巨人归来》（The Incredible Hulk Returns）之中。
<br /><br />
·制片人凯文·费格常常把《变形金刚3》拿来和这部电影做比较，他希望《复仇者联盟》能在效果上超过《变3》。
<br /><br />
·影片采用了表演捕捉技术，所以马克·鲁法洛可以自己既扮演绿巨人又扮演变身前的布鲁斯·班纳。在以往的电影中，绿巨人和布鲁斯·班纳要么是由两个演员扮演的，要么绿巨人是完全的CG产物。
<br /><br />
·曾经扮演过绿巨人的爱德华·诺顿原本是本片中绿巨人的扮演者，但是他和漫威漫画之间并没有就此达成协议，从而没能再次扮演这个角色。在诺顿之后，杰昆·菲尼克斯曾是扮演绿巨人的候选人。
<br /><br />
·卢·费里诺在影片中为绿巨人配音，自从1978年以来，他几乎声演了所有真人版的绿巨人影片。
<br /><br />
·为了扮演雷神，克里斯·海姆斯沃斯进行了大量的身体训练和饮食控制。
<br /><br />
·本片导演乔斯·韦登是著名的《X战警》的粉丝。早在1990年代，他就撰写了《X战警》的剧本。不过这个版本的《X战警》未能开拍。在这部电影里，有两句台词出自他撰写的《X战警》的剧本。
<br /><br />
·美国的科学与娱乐交流协会（Science and Entertainment Exchange）为影片提供了科普性的指导。
<br /><br />
·小罗伯特·唐尼在片场总是喜欢穿一件黑色安息日乐队的T恤。而该乐队的歌曲也出现在了《钢铁侠》之中。
<br /><br />
·影片演员阵容中，获得过奥斯卡奖的，足足有9位之多。这足以创下漫画电影的记录了。
<div>
<iframe></iframe>
</div>
</div>
</div>
</div>
</body>
</html>
