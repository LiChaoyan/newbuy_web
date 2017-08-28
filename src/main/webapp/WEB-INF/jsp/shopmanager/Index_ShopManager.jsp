<%--
  Created by IntelliJ IDEA.
  User: 1Q84
  Date: 2017/8/28
  Time: 14:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%--<span class="glyphicon glyphicon-arrow-up" style="color: rgb(255, 140, 60);"> Arrow-up</span>--%>
    <link type="text/css" rel="stylesheet" href="<%= request.getContextPath()%>/layui/css/layui.css"/>
    <link type="text/css" rel="stylesheet" href="<%= request.getContextPath()%>/layui/css/layui.css"/>
    <script type="text/javascript" src="<%= request.getContextPath()%>/layui/layui.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/echart/echarts-all.js"></script>
    <%--图表主题--%>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/echart/macarons.js"></script>
    <style type="text/css">
        .page_Top {
            height: 80px;
            width: 30%;
            line-height: 80px;
            text-align: center;
            font-size: 25px;
            color: #ffffff;
            background-color: #5FB878;
            margin-left: 20px;
            float: left;
        }

        .page_Middle {
            height: 350px;
        }

        .layui-row {
            margin-top: 10px;
        }
    </style>
</head>
<body>
<jsp:include page="/public_jsp/shopmanagerHeader.jsp"></jsp:include>
<jsp:include page="/public_jsp/shopmanagerSide.jsp"></jsp:include>

<div class="layui-col-md10">
    <div class="layui-row">
        <div class="page_Top">
            <span>商品数：1000种</span>
        </div>
        <div class="page_Top">
            <span>销售量：1000件</span>
        </div>
        <div class="page_Top">
            <span>销售额：100万元</span>
        </div>
    </div>

    <div class="layui-row">
        <blockquote class="site-text layui-elem-quote" style="font-size: 20px">
            销售统计
        </blockquote>
    </div>

    <div id="mainleft" class="page_Middle layui-col-md6"></div>
    <div id="mainright" class="page_Middle layui-col-md6"></div>
</div>


<script>
    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function () {
        var element = layui.element;

        //…
    });
</script>

<%--echart--%>
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('mainleft'), 'macarons');

    // 指定图表的配置项和数据
    var option = {
        title: {
            text: '销售量',
            subtext: '单位：件'
        },
        tooltip: {
            trigger: 'axis'
        },
        legend: {
            data: ['1周', '2周', '3周', '4周']
        },
        calculable: true,
        xAxis: {
            splitLine: {
                show: false
            },
            data: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月']
        },
        yAxis: {
            splitLine: {
                show: false
            },
            axisLabel: {
                formatter: '{value} 件'
            }
        },
        series: [
            {
                name: '1周',
                type: 'bar',
                data: [5, 20, 36, 10, 40, 5]
            },
            {
                name: '2周',
                type: 'bar',
                data: [10, 10, 36, 10, 10, 20]
            },
            {
                name: '3周',
                type: 'bar',
                data: [10, 30, 36, 50, 10, 10]
            },
            {
                name: '4周',
                type: 'bar',
                data: [10, 25, 36, 18, 10, 20]
            }
        ]
    };

    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('mainright'), 'macarons');
    option = {
        title: {
            text: '销售额',
            subtext: '单位：万元'
        },
        tooltip: {
            trigger: 'axis'
        },
        legend: {
            data: ['1周', '2周', '3周', '4周']
        },
        toolbox: {
            show: true,
            feature: {
                dataZoom: {
                    yAxisIndex: 'none'
                },
                dataView: {readOnly: false},
                magicType: {type: ['line', 'bar']},
                restore: {},
                saveAsImage: {}
            }
        },
        xAxis: {
            type: 'category',
            boundaryGap: false,
            splitLine: {
                show: false
            },
            data: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月']
        },
        yAxis: {
            splitLine: {
                show: false
            },
            axisLabel: {
                formatter: '{value} 万元'
            }
        },
        series: [
            {
                name: '1周',
                type: 'line',
                data: [11, 11, 11, 15, 13, 12, 10, 11, 11, 12, 13, 10]
            },
            {
                name: '2周',
                type: 'line',
                data: [14, 11, 11, 15, 13, 12, 7, 8, 8, 9, 10, 7]
            },
            {
                name: '3周',
                type: 'line',
                data: [14, 14, 18, 11, 11, 15, 13, 12, 8, 9, 10, 7]
            }
            ,
            {
                name: '4周',
                type: 'line',
                data: [14, 14, 18, 16, 150, 16, 7, 11, 11, 15, 13, 12]
            }
        ]
    };

    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>
</body>
</html>
