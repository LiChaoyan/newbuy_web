<%--
  Created by IntelliJ IDEA.
  User: 1Q84
  Date: 2017/8/29
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>店铺监控中心</title>
    <link type="text/css" rel="stylesheet" href="<%= request.getContextPath()%>/layui/dist/css/layui.css"/>
    <script type="text/javascript" src="<%= request.getContextPath()%>/layui/dist/layui.js"></script>
    <%--echart--%>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/echart/echarts.js"></script>
    <%--echart主题--%>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/echart/macarons.js"></script>
    <style type="text/css">
        .page_Top {
            height: 80px;
            line-height: 80px;
            text-align: center;
            font-size: 25px;
            color: #ffffff;
            float: left;
        }

        .page_Middle {
            height: 350px;
        }

        .layui-row {
            margin-top: 10px;
            padding: 0 10% 0 10%;
        }

        .Page_Show {
            width: 100%;
            height: 500px;
            background-image: url(<%=request.getContextPath()%>/Images/shopmanagerbg.jpg);
        }

        .Page_Services {
            height: 150px;
            text-align: center;
            padding-top: 30px;
        }

        .layui-icon {
            font-size: 30px;
            color: #1E9FFF;
        }

    </style>
</head>
<body>
<%--上面销售量销售额以及echart显示--%>
<div class="Page_Show">
    <jsp:include page="/public_jsp/shopmanager/shopmanagerHeader.jsp"></jsp:include>
    <div class="layui-row">
        <div class="page_Top layui-col-md4">
            <span>商品数：1000种</span>
        </div>
        <div class="page_Top layui-col-md4">
            <span>销售量：1000件</span>
        </div>
        <div class="page_Top layui-col-md4">
            <span>销售额：100万元</span>
        </div>
    </div>

    <%--<div class="layui-row">--%>
    <%--<blockquote class="site-text layui-elem-quote" style="font-size: 20px">--%>
    <%--销售统计--%>
    <%--</blockquote>--%>
    <%--</div>--%>
    <div class="layui-row">
        <div id="mainleft" class="page_Middle layui-col-md6"></div>
        <div id="mainright" class="page_Middle layui-col-md6"></div>
    </div>

</div>

<%--下面功能模块--%>
<div class="Page_Services layui-col-md12">
    <div class="layui-col-md2">
        <ul class="layui-nav" style="background: transparent">
            <li class="layui-nav-item">
                <a href="<%=request.getContextPath()%>/shop/managerGoods" style="color: #333333;font-size: 25px"><i class="layui-icon">&#xe628;</i>&nbsp;商品管理</a>
                <%--<dl class="layui-nav-child"> <!-- 二级菜单 -->--%>
                    <%--<dd><a href="#"></a></dd>--%>
                    <%--<dd><a href="#"></a></dd>--%>
                <%--</dl>--%>
            </li>
        </ul>
    </div>
    <div class="layui-col-md2">
        <ul class="layui-nav" style="background: transparent">
            <li class="layui-nav-item">
                <a href="javascript:;" style="color: #333333;font-size: 25px"><i class="layui-icon">&#xe620;</i>&nbsp;定位管理</a>
            </li>
        </ul>
    </div>
    <div class="layui-col-md2">
        <ul class="layui-nav" style="background: transparent">
            <li class="layui-nav-item">
                <a href="<%=request.getContextPath()%>/shop/heatMap" style="color: #333333;font-size: 25px"><i
                        class="layui-icon">&#xe615;</i>&nbsp;热力分析</a>
            </li>
        </ul>
    </div>
    <div class="layui-col-md2">
        <ul class="layui-nav" style="background: transparent">
            <li class="layui-nav-item">
                <a href="javascript:;" style="color: #333333;font-size: 25px"><i class="layui-icon">&#xe62c;</i>&nbsp;数据统计</a>
            </li>
        </ul>
    </div>
    <div class="layui-col-md2">
        <ul class="layui-nav" style="background: transparent">
            <li class="layui-nav-item">
                <a href="javascript:;" style="color: #333333;font-size: 25px"><i class="layui-icon">&#xe60a;</i>&nbsp;订单管理</a>
            </li>
        </ul>
    </div>
    <div class="layui-col-md2">
        <ul class="layui-nav" style="background: transparent">
            <li class="layui-nav-item">
                <a href="javascript:;" style="color: #333333;font-size: 25px"><i class="layui-icon">&#x1005;</i>&nbsp;收银系统</a>
            </li>
        </ul>
    </div>
</div>
<hr>
<jsp:include page="/public_jsp/shopmanager/shopmanagerFooter.jsp"></jsp:include>

<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('mainleft'),'macarons');

    // 指定图表的配置项和数据
    var option = {
        title: {
            text: '销售量',
            subtext: '单位：件',
            textStyle: {
                color: '#fff'
            }
        },
        tooltip: {
            trigger: 'axis'
        },
        legend: {
            data: ['1周', '2周', '3周', '4周'],
            textStyle: {
                color: '#fff'
            }
        },
        calculable: true,
        xAxis: {
            splitLine: {
                show: false
            },
            data: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月'],
            axisLabel: {
                show: true,
                textStyle: {
                    color: '#fff'
                }
            }
        },
        yAxis: {
            splitLine: {
                show: false
            },
            axisLabel: {
                formatter: '{value} 件',
                textStyle: {
                    color: '#fff'
                }
            }
        },
        series: [
            {
                name: '1周',
                type: 'bar',
                data: [5, 20, 36, 10, 20, 5],
            },
            {
                name: '2周',
                type: 'bar',
                data: [10, 10, 16, 10, 15, 20]
            },
            {
                name: '3周',
                type: 'bar',
                data: [8, 21, 26, 28, 10, 10]
            },
            {
                name: '4周',
                type: 'bar',
                data: [10, 25, 6, 18, 17, 20]
            }
        ]
    };

    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('mainright'),'macarons');
    option = {
        title: {
            text: '销售额',
            subtext: '单位：万元',
            textStyle: {
                color: '#fff'
            }
        },
        tooltip: {
            trigger: 'axis'
        },
        legend: {
            data: ['1周', '2周', '3周', '4周'],
            textStyle: {
                color: '#fff'
            }
        },
        toolbox: {
            show: false,
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
            axisLabel: {
                show: true,
                textStyle: {
                    color: '#fff'
                }
            },
            data: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月']
        },
        yAxis: {
            splitLine: {
                show: false
            },
            axisLabel: {
                formatter: '{value} 万元',
                textStyle: {
                    color: '#fff'
                }
            }
        },
        series: [
            {
                name: '1周',
                type: 'line',
                data: [11, 12, 11, 16, 13, 12, 10, 8, 11, 12, 3, 10]
            },
            {
                name: '2周',
                type: 'line',
                data: [14, 11, 11, 15, 13, 12, 7, 1, 8, 9, 10, 7]
            },
            {
                name: '3周',
                type: 'line',
                data: [14, 4, 18, 11, 11, 15, 13, 12, 8, 9, 10, 7]
            }
            ,
            {
                name: '4周',
                type: 'line',
                data: [14, 14, 8, 16, 28, 16, 7, 11, 11, 1, 13, 12]
            }
        ]
    };

    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>
</body>
</html>
