<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>重庆市科研平台数据管理系统</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script src="js/city-picker.data.js"></script>
<script src="js/city-picker.js"></script>
<style>
.city-picker-span { width:300px;}
</style>
</head>

<body style="background:#328f46">
<div class="headiv">
	<div class="logotag">
        <a class="logo"><img src="images/logo.png" width="440" height="65"></a>
        <b class="line"></b>
    </div>
    <a class="username">欢迎登录：<i>普通用户</i></a>
    <span class="btnbox">
    	<a class="update" href="#" title="修改"></a><a class="exit" href="#" title="退出"></a>
    </span>
    <div class="clear" style="height:20px; background:#328f46"></div>
</div>

<div class="messagebox">
	<div class="messageleft">
    	<ul class="Fstage">
        	<li><a href="#"><em class="e1"></em>常用操作<div class="clear"></div></a>
            	<ul class="Tstage" >
                	<li><a href="users_welcome.jsp">欢迎页面</a></li>
                    <li><a href="users_select.jsp">查询科研平台数据</a></li>
                    <li><a href="users_others.jsp">其他</a></li>
                </ul>
            </li>
            <li><a href="#"><em class="e2"></em>账号管理<div class="clear"></div></a>
            	<ul class="Tstage">
                	<li><a href="users_info.jsp">账户信息</a></li>
                    <li><a href="users_safe.jsp">账户安全</a></li>
                </ul>
            </li>
<!--             <li><a href="#"><em class="e3"></em>县域统计<div class="clear"></div></a>
            	<ul class="Tstage">
                	<li><a href="Manage_tiyan.html">县域交易额信息</a></li>
                    <li><a href="Manage_tiyan.html">体验店信息</a></li>
                    <li><a href="Manage_pinkun.html">贫困户信息</a></li>
                    <li><a href="Manage_diansh.html">电商培训</a></li>
                    <li><a href="Manage_wuliu.html">物流车辆</a></li>
                </ul> -->
            </li>
           
        </ul>
    </div>
    
    <div class="messageright">
    	<div class="picbig">
    		<h1>其他</h1>
        </div>
    </div>
<!--     <div class="clearh" style="height:0"></div> -->
</div>

</body>
</html>
<script>
	$(".Fstage>li").click(function(){
		if($(this).children("ul").hasClass("Tstage"))
		$(this).siblings("li").children("ul").hide();
		$(this).children("ul").slideDown();
	});
</script>
