<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>

<%@ page import="dao.impl.FilmImpl" %>
<%@ page import="model.FilmSelect" %>
<%! FilmImpl test = new FilmImpl();%>

<!doctype html >
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>重庆市科研平台数据管理系统</title>
    <link rel="stylesheet" href="./css/select.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <%--<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>--%>
    <%--<script src="js/city-picker.data.js"></script>--%>
    <%--<script src="js/city-picker.js"></script>--%>
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
<%--        内联样式--%>
        <span style="margin-top: 45px;margin-left: 170px;font-size: 25px;display: inline-block;">正在使用查询功能!</span>
        <span class="btnbox">
            <a class="update" href="#" title="修改"></a><a class="exit" href="index.jsp" title="退出"></a>
        </span>
        <div class="clear" style="height:20px; background:#328f46"></div>
    </div>

    <div class="messagebox">
        <div class="messageleft">
            <ul class="Fstage">
                <li><a href="#" class="nav"><em class="e1"></em>常用操作<div class="clear"></div></a>
                    <ul class="Tstage" >
                        <li><a href="users_welcome.jsp">欢迎页面</a></li>
                        <li><a href="users_select.jsp">查询科研平台数据</a></li>
                        <li><a href="users_others.jsp">其他</a></li>
                    </ul>
                </li>
                <li><a href="#" class="nav"><em class="e2"></em>账号管理<div class="clear"></div></a>
                    <ul class="Tstage">
                        <li><a href="users_info.jsp">账户信息</a></li>
                        <li><a href="users_safe.jsp">账户安全</a></li>
                    </ul>
                </li>
            </ul>
        </div>

        <div class="messageright">
            <form class="form-inline" id="divm" method="post" action="users_select.jsp" >
                <div class="form-group" id="div1">
                    <label for="SearchId">Id</label>
                    <input type="text" class="form-control" name="SearchId" id="SearchId">
                </div>
                <div class="form-group" id="div2">
                    <label for="SearchName">Name</label>
                    <input type="text" class="form-control" name="SearchName" id="SearchName">
                </div>
                <div><img src="./images/Search.png" onclick="out()"></div>
                <input class="btn btn-info" type="submit" name="submit" value="搜索">
            </form>

            <table class="table table-hover">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>姓名</th>
                    <th>地址</th>
                    <th>电话号码</th>
                    <th>邮箱地址</th>
                    <th>其他</th>
                </tr>
                </thead>
                <tbody id="tbody1">

                </tbody>
            </table>

            <%
                request.setCharacterEncoding("utf-8");
                String id = request.getParameter("SearchId");
                String name = request.getParameter("SearchName");
    //                System.out.println(id+  " " +name);
                List<FilmSelect> ids = null;
                if (id == "" && name == ""){
                    System.out.println("no message!");
                }
                else if(id != "" && name == "") {
                    ids = test.selectAllFilmById(id);
                }
                else if (name != "" && id == ""){
                    ids = test.selectAllFilmByName(name);
                }
            %>

            <script type="text/javascript">
                let nam = '<%=ids%>'.slice(1, -1);
                if (nam != "ul") {
                    let arr = nam.split(",");
                    let arrs = "";
                    for (let i = 0; i < arr.length; i++) {
                        arrs += arr[i];
                        document.getElementById("tbody1").innerHTML = arrs;
                    }
                    //给数据添加详细情况。
                    let others = document.getElementsByName("otherFeature");
                    // alert(others.length);
                    for (var i=0;i<others.length;i++){
                        others[i].innerHTML = "详情";
                    }
                }
            </script>
<%--        	<div class="picbig">--%>
<%--        		<h1>查询科研平台数据</h1>--%>
<%--            </div>--%>
        </div>
<!--     <div class="clearh" style="height:0"></div> -->
    </div>

</body>
</html>
<%--<script>--%>
<%--    $(".Fstage>li").click(function(){--%>
<%--        if($(this).children("ul").hasClass("Tstage"))--%>
<%--            $(this).siblings("li").children("ul").hide();--%>
<%--        $(this).children("ul").slideDown();--%>
<%--    });--%>
<%--</script>--%>
