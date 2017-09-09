<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE HTML>
<html>
<head>
	<meta charset="utf-8">
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta http-equiv="Cache-Control" content="no-siteapp" />
	<link rel="Bookmark"  href="<%=request.getContextPath()%>/Images/favicon.ico" >
	<link rel="Shortcut Icon"  href="<%=request.getContextPath()%>/Images/favicon.ico" />
	<!--[if lt IE 9]>
	<script type="text/javascript"  src="<%=request.getContextPath()%>/Scripts/lib/html5.js"></script>
	<script type="text/javascript"  src="<%=request.getContextPath()%>/Scripts/lib/respond.min.js"></script>
	<![endif]-->
	<link rel="stylesheet" type="text/css"  href="<%=request.getContextPath()%>/Css/static/h-ui/css/H-ui.min.css" />
	<link rel="stylesheet" type="text/css"  href="<%=request.getContextPath()%>/Css/static/h-ui.admin/css/H-ui.admin.css" />
	<link rel="stylesheet" type="text/css"  href="<%=request.getContextPath()%>/Scripts/lib/Hui-iconfont/1.0.8/iconfont.css" />
	<link rel="stylesheet" type="text/css"  href="<%=request.getContextPath()%>/Css/static/h-ui.admin/skin/default/skin.css" id="skin" />
	<link rel="stylesheet" type="text/css"  href="<%=request.getContextPath()%>/Css/static/h-ui.admin/css/style.css" />
	<!--[if IE 6]>
	<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
	<script>DD_belatedPNG.fix('*');</script><![endif]-->
	<!--/meta 作为公共模版分离出去-->

	<title>概览</title>
</head>
<body>
<!--_header 作为公共模版分离出去-->
<jsp:include page="/public_jsp/bossHeader.jsp" flush="true"></jsp:include>
<<<<<<< HEAD
=======

>>>>>>> 78a503e3fd4dbf72d6ea85daa8fac65f781ba061
<!--/_header 作为公共模版分离出去-->
<!--_menu 作为公共模版分离出去-->
<<<<<<< HEAD
<jsp:include page="/public_jsp/boss_admin_side.jsp" flush="true"></jsp:include>
=======

<div class="dislpayArrow hidden-xs"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a></div>
>>>>>>> 78a503e3fd4dbf72d6ea85daa8fac65f781ba061
<!--/_menu 作为公共模版分离出去-->

<section class="Hui-article-box">
	<nav class="breadcrumb"><i class="Hui-iconfont"></i> <a href="<%=request.getContextPath()%>/boss/index_shopkeeper" class="maincolor">首页</a>
		<span class="c-999 en">&gt;</span>
		<span class="c-666">概览</span>
		<a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
	<div class="Hui-article"  style="margin-left: 15px;">

		<p class="cl pd-20">
			<p class="f-20 text-success">欢迎登陆！&nbsp;&nbsp;&nbsp;&nbsp;
			<p style="font-size: 14px;"> 登录次数：18 &nbsp;&nbsp;&nbsp;&nbsp; 上次登录时间：2014-6-14 11:19:55</p></p>
			<div class="col-md-12">

			<table class="table table-border table-bordered table-bg col-md-4" style="height:400px;">
				<thead>
				<tr>
					<th colspan="7" scope="col">信息概览</th>
				</tr>
				<tr class="text-c">
					<th>统计</th>
					<th>店铺数</th>
					<th>商品数</th>
					<th>销售量</th>
					<th>销售额</th>
					<th>合作商家</th>

				</tr>
				</thead>
				<tbody>
				<tr class="text-c" style="font-weight: 500;">
					<td>总数</td>
					<td>4</td>
					<td>50</td>
					<td>1000</td>
					<td>2000</td>
					<td>10</td>
				</tr>
				<tr class="text-c">
					<td rowspan="4">各店铺统计</td>
					<td>店铺2</td>
					<td>10</td>
					<td>10</td>
					<td>100</td>
					<td>100</td>
				</tr>
				<tr class="text-c">
					<td>店铺3</td>
					<td>20</td>
					<td>20</td>
					<td>100</td>
					<td>1000</td>
				</tr>
				<tr class="text-c">
					<td>店铺4</td>
					<td>10</td>
					<td>20</td>
					<td>100</td>
					<td>1000</td>
				</tr>
				<tr class="text-c">
					<td>店铺5</td>
					<td>10</td>
					<td>20</td>
					<td>100</td>
					<td>1000</td>
				</tr>
				</tbody>
			</table>
				<div id="container1" class="col-md-6" style="min-width:700px;height:400px"></div>
			</div><br><br><br><hr>
			<div id="container" style="min-width:700px;height:400px;margin-left:20px;"></div>
		</article>
	</div>
</section>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript"  src="<%=request.getContextPath()%>/Scripts/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript"  src="<%=request.getContextPath()%>/Scripts/lib/layer/2.4/layer.js"></script>
<script type="text/javascript"  src="<%=request.getContextPath()%>/Css/static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript"  src="<%=request.getContextPath()%>/Css/static/h-ui.admin/js/H-ui.admin.page.js"></script>
<!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript"  src="<%=request.getContextPath()%>/Scripts/lib/hcharts/Highcharts/5.0.6/js/highcharts.js"></script>
<script type="text/javascript"  src="<%=request.getContextPath()%>/Scripts/lib/hcharts/Highcharts/5.0.6/js/modules/exporting.js"></script>
<script type="text/javascript">

    <c:if test="${!empty error_msg}">alert("${error_msg}");
    </c:if>

    $(function () {
        $('#container1').highcharts({
            chart: {
                type: 'column'
            },
            title: {
                text: '各店铺统计'
            },
            subtitle: {
                text: '商品数、销售量、销售额、合作商家数的统计'
            },
            xAxis: {
                categories: [
                    '店铺1',
                    '店铺2',
                    '店铺3',
                    '店铺4',
                    '店铺5',
                    '店铺6',
                    '店铺7',
                    '店铺8',
                    '店铺9',
                    '店铺10',
                    '店铺11',
                    '店铺12'
                ]
            },
            yAxis: {
                min: 0,
                title: {
                    text: '（个）'
                }
            },
            tooltip: {
                headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
                pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                '<td style="padding:0"><b>{point.y:.1f} 件</b></td></tr>',
                footerFormat: '</table>',
                shared: true,
                useHTML: true
            },
            plotOptions: {
                column: {
                    pointPadding: 0.2,
                    borderWidth: 0
                }
            },
            series: [{
                name: '商品数',
                data: [49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4]

            }, {
                name: '销售量',
                data: [83.6, 78.8, 98.5, 93.4, 106.0, 84.5, 105.0, 104.3, 91.2, 83.5, 106.6, 92.3]

            }, {
                name: '销售额',
                data: [48.9, 38.8, 39.3, 41.4, 47.0, 48.3, 59.0, 59.6, 52.4, 65.2, 59.3, 51.2]

            }, {
                name: '合作商家数',
                data: [42.4, 33.2, 34.5, 39.7, 52.6, 75.5, 57.4, 60.4, 47.6, 39.1, 46.8, 51.1]

            }]
        });
    });
</script>
<script type="text/javascript">
    $(function () {
        $('#container').highcharts({
            title: {
                text: '图表波动展示',
                x: -20 //center
            },
            subtitle: {
                text: '价格、销量、销售额波动',
                x: -20
            },
            xAxis: {
                categories: ['一月', '二月', '三月', '四月', '五月', '六月','七月', '八月', '九月', '十月', '十一月', '十二月']
            },
            yAxis: {
                title: {
                    text: '￥'
                },
                plotLines: [{
                    value: 0,
                    width: 1,
                    color: '#808080'
                }]
            },
            tooltip: {
                valueSuffix: '￥'
            },
            legend: {
                layout: 'vertical',
                align: 'right',
                verticalAlign: 'middle',
                borderWidth: 0
            },
            series: [{
                name: '价格',
                data: [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]
            }, {
                name: '销量',
                data: [-0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, 20.1, 14.1, 8.6, 2.5]
            }, {
                name: '销售额',
                data: [-0.9, 0.6, 3.5, 8.4, 13.5, 17.0, 18.6, 17.9, 14.3, 9.0, 3.9, 1.0]
            }, {
                name: 'London',
                data: [3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]
            }]
        });
    });
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>