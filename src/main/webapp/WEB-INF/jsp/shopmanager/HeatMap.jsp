<%--
  Created by IntelliJ IDEA.
  User: 1Q84
  Date: 2017/8/29
  Time: 19:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>热力分析</title>
    <link type="text/css" rel="stylesheet" href="<%= request.getContextPath()%>/layui/dist/css/layui.css"/>
    <script type="text/javascript" src="<%= request.getContextPath()%>/layui/dist/layui.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/js/echart/echarts.min.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/js/echart/china.json"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/js/echart/china.js"></script>
</head>
<body>
<div class="layui-row" style="background-image: url(<%=request.getContextPath()%>/Images/shopmanagerbgd.jpg)">
    <div class="layui-col-md6">
        <ul class="layui-nav" style="background: transparent">
            <li class="layui-nav-item">
                <jsp:include page="/public_jsp/shopmanager/secondmenu.jsp"></jsp:include>
            </li>
        </ul>
    </div>
    <jsp:include page="/public_jsp/shopmanager/shopmanagerHeaderRight.jsp"></jsp:include>
</div>

<div class="layui-row" style="padding: 10px 50px 10px 50px">
    <div class="layui-col-md5" style="padding-top: 10px">
        <div id="main" style="width: 100%;height: 100%"></div>
    </div>
    <div class="layui-col-md7" style="padding-left: 20px">
        <table class="layui-table" lay-data="{height:'full', url:'/demo/table/user/', page:true}"
               style="width: 100%">
            <thead>
            <tr>
                <th lay-data="{field:'ranking', width:80,sort: true}">排名</th>
                <th lay-data="{field:'id', width:100}">商品编号</th>
                <th lay-data="{field:'username', width:120}">商品名</th>
                <th lay-data="{field:'city', width:80, sort: true}">单价</th>
                <th lay-data="{field:'sellnum', width:80, sort: true}">销售量</th>
                <th lay-data="{field:'sellmoney', width:80, sort: true}">销售额</th>
                <th lay-data="{width:80, align:'center', toolbar: '#add'}">配货</th>
            </tr>
            </thead>
        </table>
    </div>
</div>

<script type="text/html" id="add">
    <a class="layui-btn layui-btn-mini" lay-event="edit">配货</a>
</script>

<script>
    var data = [
        {name: '盐城', value: 15},
        {name: '赤峰', value: 116}
    ];
    var geoCoordMap = {
        '盐城': [120.13, 33.38],
        '赤峰': [118.87, 42.28]
    };

    var convertData = function (data) {
        var res = [];
        for (var i = 0; i < data.length; i++) {
            var geoCoord = geoCoordMap[data[i].name];
            if (geoCoord) {
                res.push({
                    name: data[i].name,
                    value: geoCoord.concat(data[i].value)
                });
            }
        }
        return res
    };

    option = {
        backgroundColor: '#404a59',
        title: {
            text: '全国主要城市销量',
            subtext: '销售量/销售额',
//            sublink: 'http://www.pm25.in',
            left: 'center',
            textStyle: {
                color: '#fff'
            }
        },
        tooltip: {
            trigger: 'item'
        },
        legend: {
            orient: 'vertical',
            y: 'bottom',
            x: 'right',
            data: ['销量'],
            textStyle: {
                color: '#fff'
            }
        },
        geo: {
            map: 'china',
            label: {
                emphasis: {
                    show: false
                }
            },
            roam: true,
            itemStyle: {
                normal: {
                    areaColor: '#323c48',
                    borderColor: '#111'
                },
                emphasis: {
                    areaColor: '#2a333d'
                }
            }
        },
        series: [
            {
                name: '销量',
                type: 'scatter',
                coordinateSystem: 'geo',
                data: convertData(data),
                symbolSize: function (val) {
                    return val[2] / 10;
                },
                label: {
                    normal: {
                        formatter: '{b}',
                        position: 'right',
                        show: false
                    },
                    emphasis: {
                        show: true
                    }
                },
                itemStyle: {
                    normal: {
                        color: '#ddb926'
                    }
                }
            },
            {
                name: 'Top 5',
                type: 'effectScatter',
                coordinateSystem: 'geo',
                data: convertData(data.sort(function (a, b) {
                    return b.value - a.value;
                }).slice(0, 5)),
                symbolSize: function (val) {
                    return val[2] / 10;
                },
                showEffectOn: 'render',
                rippleEffect: {
                    brushType: 'stroke'
                },
                hoverAnimation: true,
                label: {
                    normal: {
                        formatter: '{b}',
                        position: 'right',
                        show: true
                    }
                },
                itemStyle: {
                    normal: {
                        color: '#f4e925',
                        shadowBlur: 10,
                        shadowColor: '#333'
                    }
                },
                zlevel: 1
            }
        ]
    };
    var myChart = echarts.init(document.getElementById('main'));
    myChart.setOption(option);
</script>

<script>
    layui.use('table', function () {
        var table = layui.table;
    });
</script>
</body>
</html>
