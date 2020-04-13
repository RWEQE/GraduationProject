<%@ page language="java"  import="java.util.*" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <link rel="stylesheet" type="text/css" href="css/index.css" />
</head>
<body background="images/login.jpg"
      style="background-repeat:no-repeat;
	background-size:100% 100%;
	background-attachment:fixed;">

    <form name="form1" action="" method="post">
        <h1>重庆市科研平台数据管理系统</h1>
        <input class="input_1" id="username" size=15  name= "username"  placeholder="用户名"><br />
        <input class="input_1" id="password" type="text" size=15 name= "password" placeholder="密码"><br />

        <span class="radio_box">
                   <input type="radio" id="radio_1" name="gettype" value="users" checked>
                   <label for="radio_1"></label>
                  普通用户
                </span>
        <span class="radio_box">
                   <input type="radio" id="radio_2" name="gettype" value="admin">
                   <label for="radio_2"></label>
                   管理员
                </span><br/>
        <input class="input_3" type="button" onclick="login()" value="登录" />
        <input class="input_3" type="button"  onclick=document.form1.reset() value="重置" />
    </form>

    <script type="text/javascript" src="login.js"></script>

</body>
</html>
