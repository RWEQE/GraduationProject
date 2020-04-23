<%--普通用户信息页面--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>重庆市科研平台数据管理系统</title>
    <script type="text/javascript" src="jquery-1.8.3.min.js"></script>
    <script src="city-picker.data.js"></script>
    <script src="city-picker.js"></script>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <style>
        .city-picker-span { width:300px;}
        .information form{font-size: 20px;}
        .information form input.textput{font-size: 20px;background-color: #fff;}
    </style>
</head>

<body style="background:#328f46">
<div class="headiv">
	<div class="logotag">
        <a class="logo"><img src="images/logo.png" width="440" height="65"></a>
        <b class="line"></b>
    </div>
    <a class="username">欢迎登录：<i>普通用户</i></a>
    <span style="margin-top: 45px;margin-left: 170px;font-size: 25px;display: inline-block;">正在修改账户信息!</span>
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
                	<li><a href="users_welcome.jsp">欢迎页面</a></li>
                    <li><a href="users_select.jsp">查询科研平台数据</a></li>
                    <li><a href="users_visualization.jsp">可视化展示</a></li>
                </ul>
            </li>
            <li><a href="#"><em class="e2"></em>账号管理<div class="clear"></div></a>
            	<ul class="Tstage">
                	<li><a href="users_info.jsp">账户信息</a></li>
                    <li><a href="users_safe.jsp">账户安全</a></li>
                    <li><a href="users_developer.jsp">开发者信息</a></li>
                </ul>
            </li>
        </ul>
    </div>
    
    <div class="messageright">
        <div class="formpage">
            <div class="clear" style="height:20px"></div>
            <h2>账户信息</h2>
            <div class="clear" style="height:30px"></div>

            <span class="information">
            	<div class="clear" style="height:10px"></div>
<%--            	<a class="headpic1" href="#">--%>
                    <img src="images/headp.png" style="margin: 10px; float: left">
<%--                </a>--%>
                <form style="margin-left: 70px">
                    <table>
                        <tr>
                            <td>登录帐号：</td>
                            <td colspan="2">普通用户体验</td></tr>
                        <tr>
                            <td>电子邮箱：</td>
                            <td><input class="textput" type="text"/></td>
                            <td><a class="link" href="#">&emsp;&ensp;    更换邮箱</a></td></tr>
                        <tr>
                            <td>真实姓名：</td>
                            <td><input class="textput" type="text"/></td>
                            <td><p class="wrrong">*姓名不能为空</p></td>
                        </tr>
                        <tr>
                            <td>性别：</td>
                            <td><label>女<input name="sex" type="radio"></label><label>男<input name="sex" type="radio"></label></td>
                            <td><p class="wrrong">*必选！</p></td>
                        </tr>
                        <tr>
                            <td>生日：</td>
                            <td><input class="textput" type="text"/></td>
                            <td><p class="wrrong"></p></td>
                        </tr>
                        <tr>
                            <td>所在地区：</td>
                            <td class="address"><input id="city-picker3" class="addr" readonly data-toggle="city-picker" type="text"/></td>
                            <td><p class="wrrong"></p></td>
                        </tr>
                        <tr>
                            <td>QQ：</td>
                            <td><input class="textput" type="text"/></td>
                            <td><p class="wrrong"></p></td>
                        </tr>
                        <tr>
                            <td>微信：</td>
                            <td><input class="textput" type="text"/></td>
                            <td><p class="wrrong"></p></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td colspan="2"><a class="greenbtn" href="#">保存修改</a></td>
                        </tr>
                    </table>
                </form>
                <div class="clear"></div>
            </span>
            <div class="clear" style="height:50px"></div>
        </div>
    </div>
<!--     <div class="clearh" style="height:0"></div> -->
</div>

</body>
</html>
<%--<script>--%>
<%--	$(".Fstage>li").click(function(){--%>
<%--		if($(this).children("ul").hasClass("Tstage"))--%>
<%--		$(this).siblings("li").children("ul").hide();--%>
<%--		$(this).children("ul").slideDown();--%>
<%--	});--%>
<%--</script>--%>
