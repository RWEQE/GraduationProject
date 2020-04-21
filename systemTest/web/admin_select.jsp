<%--数据查询功能页--%>
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
    <link rel="stylesheet" href="./css/select.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    <%--<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>--%>
    <%--<script src="js/city-picker.data.js"></script>--%>
    <%--<script src="js/city-picker.js"></script>--%>
    <style>
        .city-picker-span { width:300px;}
        .messageright>table>thead>tr>th{
            background:#FFFAF0;
            position: -webkit-sticky;
            position: sticky;
            top:0px;
        }
    </style>
</head>

<body style="background:#328f46">
<%--<body class="feature-bgc">--%>
    <div class="headiv">
        <div class="logotag">
            <a class="logo"><img src="images/logo.png" width="440" height="65"></a>
            <b class="line"></b>
        </div>
        <a class="username">欢迎登录：<i>管理员</i></a>
        <%--内联样式--%>
        <span style="margin-top: 45px;margin-left: 170px;font-size: 25px;display: inline-block;">正在使用查询功能!</span>
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
                        <li><a href="">开发者信息</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    
        <div class="messageright" style="display: block;max-height:100%;overflow-y: scroll">
            <form class="form-inline" id="divm" method="post" action="admin_select.jsp" >
                <div class="form-group" id="div1">
                    <label for="SearchLabName">机构名称</label>
                    <input type="text" class="form-control" name="SearchLabName" id="SearchLabName">
                </div>
                <div class="form-group" id="div2">
                    <label for="SearchUnit">所属单位</label>
                    <input type="text" class="form-control" name="SearchUnit" id="SearchUnit">
                </div>
                <div class="form-group" id="div3">
                    <label for="SearchAddress">地址</label>
                    <input type="text" class="form-control" name="SearchAddress" id="SearchAddress">
                </div>
                <div><img src="./images/Search.png" onclick="out()"></div>
                <input class="btn btn-success" type="submit" name="submit" value="搜索">
            </form>

            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>机构名称</th>
                        <th>所属单位</th>
                        <th>所属行政区域</th>
                        <th>地址</th>
                        <th>技术领域</th>
                        <th>其他</th>
                    </tr>
                </thead>
                <tbody id="tbody1">

                </tbody>
            </table>

            <%
                request.setCharacterEncoding("utf-8");
                String labName = request.getParameter("SearchLabName");
                String unit = request.getParameter("SearchUnit");
                String address = request.getParameter("SearchAddress");
                List<FilmSelect> ids = null;
                if (labName == "" && unit == "" && address == ""){
                    System.out.println("no message!");
                }
                else if(labName != "" && unit == "" && address == "") {
                    ids = selectMessage.selectAllFilmByLabName(labName);
                }
                else if (unit != "" && labName == "" && address == ""){
                    ids = selectMessage.selectAllFilmByUnit(unit);
                }
                else if (address != "" && labName == "" && unit == ""){
                    ids = selectMessage.selectAllFilmByAddress(address);
                }
            %>

            <script type="text/javascript">
                let nam = '<%=ids%>'.slice(1, -1);
                function otherFea() {
                    if(!e){
                        var e = window.event;
                    }
                    //获取事件点击元素
                    let targ = e.target;
                    //获取元素名称
                    // alert(targ.tagName);
                    //获取这个元素对应的数据的id
                    let targetData = targ.parentNode.parentNode.children;
                    // alert("你要修改的id是：" + targetData[0].innerHTML);
                    // console.log(targetData.innerHTML);

                    //虚拟表单提交
                    let temp = document.createElement("form");
                    temp.action = "admin_select_detail.jsp";//提交的地址
                    temp.method = "post";//也可指定为get
                    temp.style.display = "none";
                    //1. 原来的机构名称 labName 根据机构名称来查看详细
                    let detailLabName = document.createElement("textarea");
                    detailLabName.name = "detailLabName";
                    detailLabName.value = targetData[0].innerHTML;
                    temp.appendChild(detailLabName);

                    document.body.appendChild(temp);
                    if (confirm("你确定要查看这条数据吗?")) {
                        temp.submit();
                        alert("正在进入查看！");
                    }
                    else {
                        //回退
                        // history.back();
                        location.reload();
                    }
                }
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
<%--	$(".Fstage>li").click(function(){--%>
<%--		if($(this).children("ul").hasClass("Tstage"))--%>
<%--		$(this).siblings("li").children("ul").hide();--%>
<%--		$(this).children("ul").slideDown();--%>
<%--	});--%>
<%--</script>--%>
