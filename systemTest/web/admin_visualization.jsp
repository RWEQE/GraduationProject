<%--普通用户-其他-数据可视化页面--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>重庆市科研平台数据管理系统</title>
    <link rel="stylesheet" href="./css/select.css">
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script src="https://cdn.bootcss.com/echarts/4.7.0/echarts-en.common.js"></script>
    <style>
        .city-picker-span { width:300px;}
        .visualization{
            height: 100px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .btn-son{
            margin: 0px 100px;
        }
    </style>
</head>

<body style="background:#328f46">
<div class="headiv">
    <div class="logotag">
        <a class="logo"><img src="images/logo.png" width="440" height="65"></a>
        <b class="line"></b>
    </div>
    <a class="username">欢迎登录：<i>管理员</i></a>
    <span style="margin-top: 45px;margin-left: 170px;font-size: 25px;display: inline-block;">正在展示可视化信息!</span>
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

    <div class="messageright">
        <div class="visualization">
            <button type="button" class="btn btn-info btn-lg btn-son" onclick="getechars()">近年情况</button>
            <button type="button" class="btn btn-warning btn-lg btn-son" onclick="getechars4()">平台分类</button>
            <button type="button" class="btn btn-danger btn-lg btn-son" onclick="getechars2()">地区分类</button>
            <button type="button" class="btn btn-primary btn-lg btn-son" onclick="getechars3()">技术分类</button>
        </div>
<%--        <br/>--%>
        <div id="main" style="width: 100%;height:602px;"></div>
        <script type="text/javascript">
            // 基于准备好的dom，初始化echarts实例
            function getechars() {
                var myChart = echarts.init(document.getElementById('main'));
                myChart.clear();
                // 指定图表的配置项和数据
                var option = {
                    backgroundColor:'#FFF',
                    title: {
                        text: '近五年市级以上重点实验室数量变化情况'
                    },
                    tooltip: {},
                    legend: {
                        data: ['数量']
                    },
                    xAxis: {
                        data: ["2014", "2015", "2016", "2017", "2018"]
                    },
                    yAxis: {},
                    series: [{
                        name: '数量',
                        type: 'bar',
                        data: [118, 134, 149, 171, 207]
                    }]
                };
                myChart.setOption(option);
            }
            function getechars2() {
                var myChart2 = echarts.init(document.getElementById('main'));
                myChart2.clear();
                var option2 = {
                    title: {
                        text: '重庆市各地区机构数量分布',
                        left: 'center'
                    },
                    tooltip: {
                        trigger: 'item',
                        formatter: '{a} <br/>{b}: {c} ({d}%)'
                    },
                    legend: {
                        orient: 'vertical',
                        left: 10,
                        data: ['沙坪坝区', '南岸区', '北培区', '渝北区', '两江新区','涪陵区','渝中区','巴南区','江津区','永川区','江北区','九龙坡区','万州区']
                    },
                    series: [
                        {
                            name: '区域占比',
                            type: 'pie',
                            radius: ['50%', '70%'],
                            avoidLabelOverlap: false,
                            label: {
                                show: false,
                                position: 'center'
                            },
                            emphasis: {
                                label: {
                                    show: true,
                                    fontSize: '30',
                                    fontWeight: 'bold'
                                }
                            },
                            labelLine: {
                                show: false
                            },
                            data: [
                                {value: 102, name: '沙坪坝区'},
                                {value: 65, name: '南岸区'},
                                {value: 65, name: '北培区'},
                                {value: 65, name: '渝北区'},
                                {value: 64, name: '两江新区'},
                                {value: 18, name: '涪陵区'},
                                {value: 25, name: '渝中区'},
                                {value: 21, name: '巴南区'},
                                {value: 13, name: '江津区'},
                                {value: 17, name: '永川区'},
                                {value: 21, name: '江北区'},
                                {value: 45, name: '九龙坡区'},
                                {value: 8, name: '万州区'}
                            ]
                        }
                    ]
                };
                myChart2.setOption(option2);
            }
            function getechars3() {
                var myChart3 = echarts.init(document.getElementById('main'));
                myChart3.clear();
                var option3 = {
                    title: {
                        text: '所有机构技术领域分布',
                        left: 'center'
                    },
                    tooltip: {
                        trigger: 'item',
                        formatter: '{a} <br/>{b} : {c} ({d}%)'
                    },
                    legend: {
                        orient: 'vertical',
                        left: 'left',
                        data: ['信息科学', '生命科学', '工程科学', '医学科学', '能源资源','装备制造','电子信息','新材料','生物医药','现代农业','其他']
                    },
                    series: [
                        {
                            name: '技术分布',
                            type: 'pie',
                            radius: '55%',
                            center: ['50%', '50%'],
                            data: [
                                {value: 27, name: '信息科学'},
                                {value: 35, name: '生命科学'},
                                {value: 35, name: '工程科学'},
                                {value: 47, name: '医学科学'},
                                {value: 33, name: '能源资源'},
                                {value: 116, name: '装备制造'},
                                {value: 94, name: '电子信息'},
                                {value: 60, name: '新材料'},
                                {value: 99, name: '生物医药'},
                                {value: 68, name: '现代农业'},
                                {value: 213, name: '其他'}
                            ],
                            emphasis: {
                                itemStyle: {
                                    shadowBlur: 10,
                                    shadowOffsetX: 0,
                                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                                }
                            }
                        }
                    ]
                };
                myChart3.setOption(option3);
            }
            function getechars4() {
                var myChart4 = echarts.init(document.getElementById('main'));
                myChart4.clear();
                var option4 = {
                    title: {
                        text: '科研平台种类分类',
                        subtext: 'make by 李伟煜'
                    },
                    tooltip: {
                        trigger: 'axis',
                        axisPointer: {
                            type: 'shadow'
                        }
                    },
                    legend: {
                        data: ['数量']
                    },
                    grid: {
                        left: '3%',
                        right: '4%',
                        bottom: '3%',
                        containLabel: true
                    },
                    xAxis: {
                        type: 'value',
                        boundaryGap: [0, 0.01]
                    },
                    yAxis: {
                        type: 'category',
                        data: ['科学观测研究站', '研究院', '技术创新中心', '研发机构', '重点实验室', '技术研究中心']
                    },
                    series: [
                        {
                            name: '2011年',
                            type: 'bar',
                            data: [8, 12, 41, 63, 171, 518]
                        },
                    ]
                };
                myChart4.setOption(option4);
            }
        </script>
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
