<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<!-- 
	<link rel="stylesheet" type="text/css" href="css/style.css"/>
 -->
	<script type="text/javascript" src="JQ\jquery-1.9.1.min.js"></script>
	<script type="text/javascript">
	
	$(document).ready(function(){           //隐藏
	 $("#wel").hide();
	 $("#nice").hide();
	});
	
    $("document").ready(function(){        //每两秒自动刷新显示框
	setInterval(getMsg , 2000);
	});
	
	function to()                           //判断登录是否正确
	{
	$.ajax({
	type:"POST",
	url:"servlet/webservlet",
	data:{
	method:"userservice",
	name:$("#user").val(), 
	age:$("#psw").val()
	},
	success:function (data)
	{
	if(data=="ok")
	{
	$("#username").html(data);
	$(document).ready(function()
	{
	$("#an").slideUp();
	  $("#wel").show();
	  $("#nice").show();
	  get();
	  getusername();
	}
	
	)
	}
	else 
	{
	alert(data);
	}
	}
	});
	}
	
	
	function get()                       //获取用户列表
	{
	$.ajax({
	type:"POST",
	url:"servlet/webservlet",
	data:{
	method:"UserList"
	},
	success:function(abc)
	{
    var res=$.parseJSON(abc);
    var al="";
    $.each(res,function(index,element){
    al+="<li>"+element.truename+"</li>";
    });
    $("#userl").html(al);
	}
	});
	}
	
	
	function send()                     //获取输入框中的内容
	{
	$.ajax({
	type:"POST",
	url:"servlet/webservlet",
	data:{
	word:$("#send").val() ,
	method:"sender"
	},
	success:function()
	{ 
    $("#send").val("");               //清空输入框中的内容
    
	}
	});
	}
	
	function getMsg()               //在显示框中显示
	{
	$.ajax({
	type:"POST",
	url:"servlet/webservlet",
	data:{
	method:"geter"
	},
	success:function(abc)
	{
    var res=$.parseJSON(abc);
    var al="";
    $.each(res,function(index,element){
    al+= element+"\r\n";
    });
    $("#get").val(al);
	}
	});
	}
	
	function getusername(){              //获取用户名
	$.ajax({
	    type:"POST",
	    url:"servlet/webservlet",
	    data:{
	    method:"getusername"
	    },
	    success:function(aa){
	    var us=$.parseJSON(aa);
	   /*  bb+=us.id+"<br/>"+us.name+"<br/>"+us.pwd+"<br/>"+us.tname; */

	    $("#username").html(us.truename);
	    }
	});
	}
	
	</script>
	<style type="text/css">
	    div#an{
	text-align:center;
	background-color: #00FFFF;
	}
	div#wel{
	font-size:20px;
	color:red;
	}
	div#getmsg{
	position:absolute;
    left:400px;
    top:50px;
	}
	div#sendmsg{
	position:absolute;
    left:400px;
    top:350px;
	}
	div#user{
	position:absolute;
    left:200px;
    top:50px;
    background-color: #C0C0C0;
	}
	body{
	margin:0px;
	background-image:url(images/cc.jpg);
  	background-repeat: repeat;
  	background-size: cover;
	}
	 /* div#ground   
  {
  	width: 100%;
  	height: 100%;
  	background-image:url("images/cc.jpg");
  	background-repeat: repeat;
    border:1px red solid;
    margin:0;
    padding:0;
  }    */
  div#go
  {
  position:absolute;
  left:400px;
  top:290px;
  }
input{
	-webkit-transition-property: -webkit-box-shadow, background;
    -webkit-transition-duration: 0.25s;
    padding: 6px;
    border-bottom: 0px;
    border-left: 0px;
    border-right: 0px;
    border-top: 1px solid #ad64e0;
    -moz-box-shadow: 0px 0px 2px #000;
    -webkit-box-shadow: 0px 0px 2px #000;
    margin-bottom: 10px;
    background: #8a33c6;
    width: 230px;
    }
p{
      color:red;
      font-weight: bold;
}
  
	
	</style>
	
	
  </head>
  
  <body>
  
  <div id="ground">
  <div id="an">
  <p>用户名：</p><input id="user" type="text"><br>
  <p>密码：</p><input id="psw" type="password"><br>
  <input type="button" value="按钮" onclick="to()"><br>
  </div> 
  <div id="wel">
  <marquee behavior="alternate" bgcolor="Aquamarine" direction="left" scrolldelay="300"> 欢迎你：<span id="username"></span><br/></marquee>
   </div>
   <div id="nice">
   <div id="user" style="position:absolute; height:400px; overflow:auto;overflow-y :yes;width: 150px">
   <ul id="userl">
   </ul>
   </div>
   

   <div id="getmsg">
   <textarea rows="18" cols="40" id="get"></textarea>
   </div>
   <div id="sendmsg">
   <textarea rows="5" cols="40" id="send"></textarea><br>
   <div>
   <input id="go" type="button" value="发送" onclick="send()"><br>
   </div>
   </div>
   </div>
   </div>
<!--    欢迎你：<span id="usernames"></span>
   <button onclick="getusername()">获取用户名</button> -->
</body>
</html>
