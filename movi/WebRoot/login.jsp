<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<style type="text/css">
*{margin:0;padding:0;}
#bkg{
	position: absolute;
	background-image:url(bkgimg/5.jpg);
	background-size:100% 100%;
	height:100%;
	width:100%;}
#bkg1{
	position:absolute;
	height:500px;
	width:500px;
	top:18%;
	left:38%;
	//background-color:#999;
	}
.t{
	background:rgba(0, 0, 0, 0.5);
	margin-top:35px;
	margin-left:80px;
	width:300px;
	height:50px;
	font-size:20px;
	text-indent: 10px;
	color:#FFF;
	border-radius:8px;
    box-shadow:0 0 40px 10px #CCCCCC;
	outline:0;
	border:3px solid #CCC;
	}
#b{
	width:130px;
	height:60px;	
	border-radius:8px;
	background-color:#FC0;
	//border:#FFF solid 1px;
	margin-left:65px;
	margin-top:20px;
	font-size:35px;
	color:#FFF;
	outline:0;
	font-family:Arial, Helvetica, sans-serif;
	text-shadow:0 2px 2px #eee;
	}
</style>
</head>
<script>
function $(ch){
	return document.getElementById(ch);
	}
function clean(){
	$('username').value='';
	$('username').style.border="3px solid #CCC";
	}
function clean2(){
	$('password').value='';
	$('password').type="password";
	$('password').style.border="3px solid #CCC";
	}
function checkusername(){
	var flag=true;
	if($('username').value==''){
	$('username').value='Username';}
	
	}
function checkpassword(){
	var flag=true;
	if($('password').value==''){
	$('password').type='text';
	$('password').value='password';
	flag=false;}
	//else if($('password').value.length<6){
		//$('password').style.border="3px solid red";
		//alert('密码长度小于6位！');
		//flag=false;
		//}
	else if($('password').value.length>=6){
			$('password').style.border="3px solid #CCC";
			}
	return flag;
	}
	

function checkusername2(){
		var flag=true;
		if($('username').value==''){
		$('username').style.border="3px solid red";
		//alert('用户名不存在!');
		$('username').focus();
		flag=false;}
		return flag;
		
	}
function checkpassword2(){
	var flag=true;
	if($('password').value==''){
		$('password').style.border="3px solid red";
		//alert('密码错误！');
		$('password').focus();
		flag=false;}
		return flag;
	}

	var img1=[1,3,5,6,8]; 
	var count=0;
	setInterval(my,4000);
function my(){
	if(count==4){
		count=0;
		}
	document.getElementById("bkg").style.backgroundImage='url(bkgimg/'+img1[count]+'.jpg)';	
	count++;
}
function checkAll(){
	return   checkusername2() && checkpassword2();
	}
</script>

<body onload="my()">
<form action="login_user.do" target="_blank" method="post" onsubmit="return checkAll()">
<div id="bkg">
<div id="bkg1"><font  style=" font-size:4em; color:#FFF; margin-left:135px; font-weight:bolder; font-family:'Courier New', Courier, monospace">Login</font>
<br />
<input class="t" type="text" id="username" name="uname" value="Username" onfocus="clean()" maxlength="11" onblur="checkusername()"  />
<input class="t" type="text" id="password" name="upwd" value="Password" onfocus="clean2()" onblur="checkpassword()"/>
<br /><br /><br />
<input id="b" type="submit" value="Go"/>
<input id="b" type="button" value="Sign in" onclick="window.open('sign.jsp')" />
</div>
</div>
</form>
</body>
</html>
