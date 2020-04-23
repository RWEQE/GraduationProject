<%--数据更新-跳转输入数据-功能页--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>

<%@ page import="dao.impl.FilmImpl" %>
<%@ page import="model.FilmSelect" %>
<%! FilmImpl updateMessage = new FilmImpl();%>

<!doctype html>
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
        <a class="username">欢迎登录：<i>管理员</i></a>
        <%--内联样式--%>
        <span style="margin-top: 45px;margin-left: 170px;font-size: 25px;display: inline-block;">正在使用修改功能!</span>
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

        <div class="messageright" style="background:#FFFAF0;display: block;max-height:100%;overflow-y: scroll">
            <%
                request.setCharacterEncoding("utf-8");
                String oldLabName = request.getParameter("updateLabName");
                String oldUnit = request.getParameter("updateUnit");
                String oldAdministrativeArea = request.getParameter("updateAdministrativeArea");
                String oldPrincipal = request.getParameter("updatePrincipal");
                String oldTel = request.getParameter("updateTel");
                String oldAddress = request.getParameter("updateAddress");
                String oldSubjectArea = request.getParameter("updateSubjectArea");
                String oldConfirmYear = request.getParameter("updateConfirmYear");
            %>
            <form class="form-horizontal" method="post" action="admin_update_new.jsp">
                <div class="form-group">
                    <label for="inputLabName" class="col-sm-2 control-label">机构名称</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="inputLabName" name="inputLabName" value=<%=oldLabName%> placeholder="id">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputUnit" class="col-sm-2 control-label">所属单位</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="inputUnit" name="inputUnit" value=<%=oldUnit%>>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputAdministrativeArea" class="col-sm-2 control-label">所属行政区域</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="inputAdministrativeArea" name="inputAdministrativeArea" value=<%=oldAdministrativeArea%>>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPrincipal" class="col-sm-2 control-label">负责人</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="inputPrincipal" name="inputPrincipal" value=<%=oldPrincipal%>>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputTel" class="col-sm-2 control-label">联系电话</label>
                    <div class="col-sm-10">
                        <input type="tel" class="form-control" id="inputTel" name="inputTel" value=<%=oldTel%>>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputAddress" class="col-sm-2 control-label">地址</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="inputAddress" name="inputAddress" value=<%=oldAddress%>>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputSubjectArea" class="col-sm-2 control-label">技术领域</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="inputSubjectArea" name="inputSubjectArea" value=<%=oldSubjectArea%>>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputConfirmYear" class="col-sm-2 control-label">判定年限</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="inputConfirmYear" name="inputConfirmYear" value=<%=oldConfirmYear%>>
                    </div>
                </div>
                <hr>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-danger" onclick="reMind()">修改</button>
                    </div>
                </div>
                <%--            <input style="margin-left: 15px" type="submit" class="btn btn-info" value="增加"></input>--%>
            </form>
            <%
                request.setCharacterEncoding("utf-8");
                String newLabName = request.getParameter("inputLabName");
                String newUnit = request.getParameter("inputUnit");
                String newAdministrativeArea = request.getParameter("inputAdministrativeArea");
                String newPrincipal = request.getParameter("inputPrincipal");
                String newTel = request.getParameter("inputTel");
                String newAddress = request.getParameter("inputAddress");
                String newSubjectArea = request.getParameter("inputSubjectArea");
                String newConfirmYear = request.getParameter("inputConfirmYear");
    //            System.out.println(newId + newName + newAddress + newTel + newEmail);
                if (newLabName!=null && newUnit!=null && newAddress!=null && newTel!=null && newAdministrativeArea!=null && newPrincipal!=null && newSubjectArea!=null && newConfirmYear!=null) {
                    updateMessage.updateData(newLabName,newUnit,newAdministrativeArea,newPrincipal,newTel,newAddress,newSubjectArea,newConfirmYear);
                }
            %>
            <script type="text/javascript">

                reMind =  function () {
                    alert("修改成功！");
                }
            </script>
        </div>
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
