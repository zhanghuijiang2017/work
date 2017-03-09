<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<style type="text/css">
*{ margin:0; padding:0}
#bkg{
	background-image:url(bkgimg/1.jpg);
	width:100%;
	height:100%;
	position:absolute;
	background-size:100%;
	}
#box{
	position:absolute;
	height:600px;
	width:500px;
	//background-color:#999;
	left:450px;
	}
#t1{
	background:rgba(0, 0, 0, 0.5);
	margin-top:35px;
	margin-left:100px;
	width:300px;
	height:50px;
	font-size:23px;
	text-indent: 10px;
	color:#FFF;
	border-radius:8px;
    box-shadow:0 0 40px 10px #00FFCC;
	outline:0;
	font-family:"微软雅黑";
	border:2px solid #CCC;}

#t2{
	background:rgba(0, 0, 0, 0.5);
	margin-top:35px;
	margin-left:100px;
	width:300px;
	height:50px;
	font-size:23px;
	text-indent: 10px;
	color:#FFF;
	border-radius:8px;
    box-shadow:0 0 40px 10px #00FFCC;
	outline:0;
	font-family:"微软雅黑";
	border:2px solid #CCC;
	}
	
#t3{
	background:rgba(0, 0, 0, 0.5);
	margin-top:35px;
	margin-left:100px;
	width:300px;
	height:50px;
	font-size:23px;
	text-indent: 10px;
	color:#FFF;
	border-radius:8px;
    box-shadow:0 0 40px 10px #00FFCC;
	outline:0;
	font-family:"微软雅黑";
	border:2px solid #CCC;
	}
	
#t4{
	background:rgba(0, 0, 0, 0.5);
	margin-top:35px;
	margin-left:100px;
	width:300px;
	height:50px;
	font-size:23px;
	text-indent: 10px;
	color:#FFF;
	border-radius:8px;
    box-shadow:0 0 40px 10px #00FFCC;
	outline:0;
	font-family:"微软雅黑";
	border:2px solid #CCC;
	}

#t5{
	background:rgba(0, 0, 0, 0.5);
	margin-top:35px;
	margin-left:100px;
	width:150px;
	height:51px;
	font-size:23px;
	text-indent: 10px;
	color:#FFF;
	border-radius:8px;
    box-shadow:0 0 40px 10px  #00FFCC;
	outline:0;
	font-family:"微软雅黑";
	border:2px solid #CCC;
	}
#b{
	width:300px;
	height:60px;	
	border-radius:8px;
	background-color:#FC0;
	//border:#FFF solid 1px;
	margin-left:100px;
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
	return document.getElementById(ch)
	}

function clean(ch){
	ch.value='';
	ch.style.border="2px solid #ccc"
	}
function checkusername(ch){
	if(ch.value==''){
		ch.value='用户名'
	}
}
function cleanp(ch){
	ch.value='';
	ch.type='password';
	ch.style.border="2px solid #ccc";
	}

function checkpassword(){
	var flag=true;
	if($('t2').value==''){
		$('t2').type='test';
		$('t2').value='密码'}
	else if($('t2').value.length<6){
		$('t2').style.border="2px solid red";
		alert('密码长度不能小于6位！')
		flag=false;
		}
		return flag;
	}
	
function checkpassword2(){
	var flag=true;
	if($('t3').value==''){
		$('t3').type='test';
		$('t3').value='确认密码'}
		else if($('t3').value!=$('t2').value){
			$('t3').style.border="2px solid red";
			alert('两次密码输入不一致！')
			flag=false;}
			return flag;
	}
	
function checkemail(){
	if($('t4').value==''){
		$('t4').value='邮箱'}
	}

function checkcode(){
	var flag=true;
	if($('t5').value==''){
		$('t5').value='验证码';
		alert('请输入验证码');
		flag=false;}
	else if($('t5').value!='avnc'){
		$('t5').style.border="2px solid red";
		alert('验证码输入错误!');
		flag=false;}
		return flag;
	}

function checkAll(){
  return  checkcode() && checkpassword()&& checkpassword2()&& checkemail() ;
	}
</script>
<body>
<form action="sign_user.do" method="post" onsubmit="return checkAll()">
<div id="bkg">
<div id="box"><br /><font  style=" font-size:3.6em; color:#FFF; margin-left:120px; font-weight:bolder; font-family:'Courier New', Courier, monospace;">sign in</font>
<br />
<input type="text" id="t1" name="uname" value="用户名" onfocus="clean(this)" onblur="checkusername(this)" maxlength="9">
<br />
<input type="text" id="t2" name="upwd" value="密码" onfocus="cleanp(this)" onblur="checkpassword()"/>
<br />
<input type="text" id="t3" name="upwds" value="确认密码" onfocus="cleanp(this)" onblur="checkpassword2()">
<br />
<input type="email" id="t4" name="email" value="邮箱" onfocus="clean(this)" onblur="checkemail()">
<br />
<input type="text" id="t5" name="code" value="验证码" onfocus="clean(this)" onblur="checkcode()" maxlength="4"><img src="code/1.png" style=" margin-left:40px;
 vertical-align:middle;" />
<br />
<input id="b" type="submit" value="Submit" />
</div>
</div>
</form>
</body>
</html>
