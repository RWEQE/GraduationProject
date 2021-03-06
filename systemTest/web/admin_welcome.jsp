<%--管理员欢迎页面--%>
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
        <a class="logo"><img src="./images/logo.png" width="440" height="65"></a>
        <b class="line"></b>
    </div>
    <a class="username">欢迎登录：<i>管理员</i></a>
    <span class="btnbox">
    	<a class="update" href="#" title="修改"></a><a class="exit" href="index.jsp" title="退出"></a>
    </span>
    <div class="clear" style="height:20px; background:#328f46"></div>
</div>

<div class="messagebox">
	<div class="messageleft">
    	<ul class="Fstage">
        	<li><a href="#"><em class="e1"></em>常用操作<div class="clear"></div></a>
            	<ul class="Tstage" >
                	<li><a href="admin_welcome.jsp">欢迎页面</a></li>
                	<li><a href="admin_select.jsp">查询科研平台数据</a></li>
                	<li><a href="admin_update.jsp">修改科研平台数据</a></li>
                	<li><a href="admin_add.jsp">增加科研平台数据</a></li>
                	<li><a href="admin_delete.jsp">删除科研平台数据</a></li>
                </ul>
            </li>
            <li><a href="#" class="nav"><em class="e2"></em>其他<div class="clear"></div></a>
                <ul class="Tstage">
                    <li><a href="admin_visualization.jsp">可视化展示</a></li>
                    <li><a href="admin_developer.jsp">开发者信息</a></li>
                </ul>
            </li>
        </ul>
    </div>
    
    <div class="messageright">
    	<div class="picbig">
    		<h1>欢迎使用</h1>
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
