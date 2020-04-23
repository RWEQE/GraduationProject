<%--开发者信息页--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>

<%@ page import="dao.impl.FilmImpl" %>
<%@ page import="model.FilmSelect" %>
<%! FilmImpl selectMessage = new FilmImpl();%>

<!doctype html >
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>重庆市科研平台数据管理系统</title>
    <link rel="stylesheet" type="text/css" href="css/select.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <style>
        .city-picker-span { width:300px;}
        .messageright>table>thead>tr>th{
            background:#FFF;
            position: -webkit-sticky;
            position: sticky;
            top:0px;
        }
        .depfa{
            width: 100%;
            height: 100%;
            background-image: url(./images/producer.jpg);
            background-repeat:no-repeat;
            background-size:100% 100%;
            background-origin:content-box;
            background-attachment:fixed;
        }
        .dep{
            width: 100%;
            height: 550px;
            text-align: center;
        }
        .txt{
            color: #FFFACD;
            margin-left: -100px;
            height: 100px;
            font-size: 50px;
            font-weight: bold;
            font-family: 'DejaVu Sans Mono', monospace;
            display: block;
        }
        #txt{
            font-size: 60px;
            /*margin-top: 126px;*/
        }
    </style>
</head>

<body style="background:#328f46" onload="startTime()">
<%--<body class="feature-bgc">--%>
<div class="headiv">
    <div class="logotag">
        <a class="logo"><img src="images/logo.png" width="440" height="65"></a>
        <b class="line"></b>
    </div>
    <a class="username">欢迎登录：<i>管理员</i></a>
    <%--内联样式--%>
    <span style="margin-top: 45px;margin-left: 170px;font-size: 25px;display: inline-block;">开发者：李伟煜</span>
    <span class="btnbox">
            <a class="update" href="#" title="修改"></a><a class="exit" href="index.jsp" title="退出"></a>
        </span>
    <div class="clear" style="height:20px; background:#328f46"></div>
</div>

<div class="messagebox" >
    <div class="messageleft">
        <ul class="Fstage">
            <li><a href="#" class="nav"><em class="e1"></em>常用操作<div class="clear"></div></a>
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

    <script type="text/javascript">
        function startTime()
        {
            var today=new Date()
            var h=today.getHours()
            var m=today.getMinutes()
            var s=today.getSeconds()
// add a zero in front of numbers<10
            m=checkTime(m)
            s=checkTime(s)
            document.getElementById('txt').innerHTML=h+":"+m+":"+s
            t=setTimeout('startTime()',500)
        }

        function checkTime(i)
        {
            if (i<10)
            {i="0" + i}
            return i
        }
    </script>

    <div class="messageright">
        <div class="depfa">
            <div style="height: 126px;display: block"></div>
            <%--1480*702--%>
            <div class="dep">
                <div id="txt" class="txt"></div>
                <div class="txt">Producer:李伟煜</div>
                <div class="txt">学校:CQUPT</div>
                <div class="txt">学号:2016212078</div>
            </div>
        </div>
    </div>
</div>

</body>
</html>