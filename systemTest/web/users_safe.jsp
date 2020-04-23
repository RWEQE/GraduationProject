<%--普通用户信息安全页面--%>
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
            <div class="clear" style="height:30px"></div>
            <h3>您的安全服务</h3>
            <p class="safelev">当前安全等级：<b>高</b><i>（您目前账户运行很安全）</i></p>
<%--            <div class="clear" style="height:40px;"></div>--%>
            <div class="safelist">
                <table width="60%">
                    <tr>
                        <td height="80" width="5%" ><span class="sficon sfi1"><em class="yes"></em></span></td>
                        <td width="30%" ><span class="sftit"><p>登陆密码<br/><i class="green">[已设置]</i></p></span></td>
                        <td width="50%" class="sftext">
                            <p>安全性高的密码可以使帐号更安全。建议您定期更换密码，且设置一个包含数字和字母，并长度超过6位以上的密码，为保证您的账户安全，只有在您绑定邮箱或手机后才可以修改密码。</p>
                        </td>
                        <td width="5%" class="sfbtn"><a href="#">修改密码</a></td>
                    </tr>
                    <tr>
                        <td height="80" width="5%" ><span class="sficon sfi2"><em class="yes"></em></span></td>
                        <td width="30%" ><span class="sftit"><p>登陆密码<br/><i class="green">[已设置]</i></p></span></td>
                        <td width="50%" class="sftext">
                            <p>安全性高的密码可以使帐号更安全。建议您定期更换密码，且设置一个包含数字和字母，并长度超过6位以上的密码，为保证您的账户安全，只有在您绑定邮箱或手机后才可以修改密码。</p>
                        </td>
                        <td width="5%" class="sfbtn"><a href="#">修改密码</a></td>
                    </tr>
                    <tr>
                        <td height="80" width="5%" ><span class="sficon sfi3"><em class="yes"></em></span></td>
                        <td width="30%" ><span class="sftit"><p>登陆密码<br/><i class="green">[已设置]</i></p></span></td>
                        <td width="50%" class="sftext">
                            <p>安全性高的密码可以使帐号更安全。建议您定期更换密码，且设置一个包含数字和字母，并长度超过6位以上的密码，为保证您的账户安全，只有在您绑定邮箱或手机后才可以修改密码。</p>
                        </td>
                        <td width="5%" class="sfbtn"><a href="#">修改密码</a></td>
                    </tr>
                    <tr>
                        <td height="80" width="5%" ><span class="sficon sfi4"><em class="no"></em></span></td>
                        <td width="30%" ><span class="sftit"><p>登陆密码<br/><i class="red">[未设置]</i></p></span></td>
                        <td width="50%" class="sftext">
                            <p>安全性高的密码可以使帐号更安全。建议您定期更换密码，且设置一个包含数字和字母，并长度超过6位以上的密码，为保证您的账户安全，只有在您绑定邮箱或手机后才可以修改密码。</p>
                        </td>
                        <td width="5%" class="sfbtn"><a href="#">修改密码</a></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
<!--     <div class="clearh" style="height:0"></div> -->
</div>

</body>
</html>