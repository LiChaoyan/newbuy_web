<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="Bookmark" href="<%=request.getContextPath()%>/Images/favicon.ico" >
<link rel="Shortcut Icon" href="<%=request.getContextPath()%>/Images/favicon.ico" />
<!--[if lt IE 9]>
<script type="text/javascript" src="<%=request.getContextPath()%>/Scripts/lib/html5.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/Scripts/lib/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/Css/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/Css/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/Scripts/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/Css/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/Css/static/h-ui.admin/css/style.css" />
<!--[if IE 6]>
<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script><![endif]-->
<!--/meta 作为公共模版分离出去-->

<title>查看商品</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/Scripts/lib/zTree/v3/css/zTreeStyle/zTreeStyle.css" type="text/css">
</head>
<body>
<!--_header 作为公共模版分离出去-->
<header class="navbar-wrapper">
	<div class="navbar navbar-fixed-top">
		<div class="container-fluid cl"> <a class="logo navbar-logo f-l mr-10 hidden-xs" href="<%=request.getContextPath()%>/aboutHui.shtml">双线购</a> <a class="logo navbar-logo-m f-l mr-10 visible-xs" href="<%=request.getContextPath()%>/aboutHui.shtml">H-ui</a>
			<span class="logo navbar-slogan f-l mr-10 hidden-xs">店主管理</span>
			<a aria-hidden="false" class="nav-toggle Hui-iconfont visible-xs" href="javascript:;">&#xe667;</a>

			<nav id="Hui-userbar" class="nav navbar-nav navbar-userbar hidden-xs">
				<ul class="cl">
					<li>您好，张璐</li>
					<li class="dropDown dropDown_hover"> <a href="#" class="dropDown_A">个人中心 <i class="Hui-iconfont">&#xe6d5;</i></a>
						<ul class="dropDown-menu menu radius box-shadow">
							<li><a href="javascript:;" onClick="myselfinfo()">个人信息</a></li>
							<!-- <li><a href="#">切换账户</a></li> -->
							<li><a href="#">退出</a></li>
						</ul>
					</li>
					<li id="Hui-msg"> <a href="#" title="消息"><span class="badge badge-danger">1</span><i class="Hui-iconfont" style="font-size:18px">&#xe68a;</i></a> </li>
					<li id="Hui-skin" class="dropDown right dropDown_hover"> <a href="javascript:;" class="dropDown_A" title="换肤"><i class="Hui-iconfont" style="font-size:18px">&#xe62a;</i></a>
						<ul class="dropDown-menu menu radius box-shadow">
							<li><a href="javascript:;" data-val="default" title="默认（黑色）">默认（黑色）</a></li>
							<li><a href="javascript:;" data-val="blue" title="蓝色">蓝色</a></li>
							<li><a href="javascript:;" data-val="green" title="绿色">绿色</a></li>
							<li><a href="javascript:;" data-val="red" title="红色">红色</a></li>
							<li><a href="javascript:;" data-val="yellow" title="黄色">黄色</a></li>
							<li><a href="javascript:;" data-val="orange" title="橙色">橙色</a></li>
						</ul>
					</li>
				</ul>
			</nav>
		</div>
	</div>
</header>

<!--/_header 作为公共模版分离出去-->

<!--_menu 作为公共模版分离出去-->
<aside class="Hui-aside">

	<div class="menu_dropdown bk_2">
		<dl id="menu-article">
			<dt><i class="Hui-iconfont">&#xe616;</i> 店铺管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a href="<%=request.getContextPath()%>/boss/article_list" title="资讯管理">查看店铺</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu-product">
			<dt><i class="Hui-iconfont">&#xe620;</i> 商品管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a href="<%=request.getContextPath()%>/boss/product_list" title="产品管理">查看商品</a></li>
				</ul>
			</dd>
		</dl>

		<dl>
			<dt  class="selected"><i class="Hui-iconfont">&#xe620;</i> 合作管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd style="display: block;">
				<ul>
					<li class="current"><a href="<%=request.getContextPath()%>/boss/coop_product" title="合作商品管理">合作商品管理</a></li>
					<li><a href="<%=request.getContextPath()%>/boss/coop_build" title="合作建立概览">合作建立概览</a></li>
					<li><a href="<%=request.getContextPath()%>/boss/view_pickup" title="可配货查看">可配货查看</a></li>
					<li><a href="<%=request.getContextPath()%>/boss/hot_spots" title="地区热点分析">地区热点分析</a></li>
					<li><a href="<%=request.getContextPath()%>/boss/data_count" title="配货数据统计">配货数据统计</a></li>
				</ul>

			</dd>
		</dl>

		<dl id="menu-member">
			<dt><i class="Hui-iconfont">&#xe60d;</i> 店员管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a href="<%=request.getContextPath()%>/boss/ member_list" title="会员列表">会员列表</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu-tongji">
			<dt><i class="Hui-iconfont">&#xe61a;</i> 统计管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a href="<%=request.getContextPath()%>/charts-1" title="折线图">折线图</a></li>
					<li><a href="<%=request.getContextPath()%>/charts-2" title="时间轴折线图">时间轴折线图</a></li>
					<li><a href="<%=request.getContextPath()%>/charts-3" title="区域图">区域图</a></li>
					<li><a href="<%=request.getContextPath()%>/charts-4" title="柱状图">柱状图</a></li>
					<li><a href="<%=request.getContextPath()%>/charts-5" title="饼状图">饼状图</a></li>
					<li><a href="<%=request.getContextPath()%>/charts-6" title="3D柱状图">3D柱状图</a></li>
					<li><a href="<%=request.getContextPath()%>/charts-7" title="3D饼状图">3D饼状图</a></li>
				</ul>
			</dd>
		</dl>
		<dl id="menu-system">
			<dt><i class="Hui-iconfont">&#xe62e;</i> 安全管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a href="<%=request.getContextPath()%>/boss/safe_list" title="安全设置">安全设置</a></li>
				</ul>
			</dd>
		</dl>
	</div>
</aside>
<div class="dislpayArrow hidden-xs"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a></div>
<!--/_menu 作为公共模版分离出去-->

<section class="Hui-article-box">
	<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i><a href="<%=request.getContextPath()%>/index_admin">登录</a><span class="c-gray en">&gt;</span> 商品管理 <span class="c-gray en">&gt;</span> 查看商品 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
	<div class="Hui-article">
			<div class="pd-20">
				<div class="text-c">
					<input type="text" name=""  placeholder=" 商品名称" style="width:250px" class="input-text">
					<button name="" class="btn btn-success" type="submit"><i class="Hui-iconfont">&#xe665;</i> 搜商品</button>
				</div>
				<div id="main" style="width: 100%;height: 600px;margin-top:20px;"></div>

			<%--<div class="mt-20">--%>
					<%--<table class="table table-border table-bordered table-bg table-hover table-sort">--%>
						<%--<thead>--%>
							<%--<tr class="text-c">--%>
								<%--&lt;%&ndash;<th width="40"><input name="" type="checkbox" value=""></th>&ndash;%&gt;--%>
								<%--<th width="100">产品名称</th>--%>
								<%--<th width="60">所属店铺</th>--%>
								<%--<th width="100">单价</th>--%>
								<%--<th width="100">销售量(件)</th>--%>
								<%--<th width="100">销售额(￥)</th>--%>
								<%--<th width="60">合作数量</th>--%>
								<%--&lt;%&ndash;<th width="100">操作</th>&ndash;%&gt;--%>
							<%--</tr>--%>
						<%--</thead>--%>
						<%--<tbody>--%>
							<%--<tr class="text-c va-m">--%>
								<%--&lt;%&ndash;<td><input name="" type="checkbox" value=""></td>&ndash;%&gt;--%>
								<%--<td class="text-l"><a style="text-decoration:none" onClick="product_show('哥本哈根橡木地板','product-show','10001')" href="javascript:;"><img title="国内品牌" src="<%=request.getContextPath()%>/Css/static/h-ui/images/gq/cn.gif"> <b class="text-success">圣象</b> 哥本哈根橡木地板KS8373</a></td>--%>
								<%--<td>义乌小商品批发城</td>--%>
								<%--<td><span class="price">356.0</span> 元/平米</td>--%>
								<%--<td>1000</td>--%>
								<%--<td>10000</td>--%>
								<%--<td>200</td>--%>
							<%--</tr>--%>
							<%--<tr class="text-c va-m">--%>
								<%--&lt;%&ndash;<td><input name="" type="checkbox" value=""></td>&ndash;%&gt;--%>
								<%--<td class="text-l"><a style="text-decoration:none" onClick="product_show('哥本哈根橡木地板','product-show','10001')" href="javascript:;"><img title="国内品牌" src="<%=request.getContextPath()%>/Css/static/h-ui/images/gq/cn.gif"> <b class="text-success">圣象</b> 哥本哈根橡木地板KS8373</a></td>--%>
								<%--<td>义乌小商品批发城</td>--%>
								<%--<td><span class="price">356.0</span> 元/平米</td>--%>
								<%--<td>1000</td>--%>
								<%--<td>10000</td>--%>
								<%--<td>200</td>--%>
							<%--</tr>--%>
						<%--</tbody>--%>
					<%--</table>--%>
				<%--</div>--%>

			</div>
		</div>

	</div>
</section>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="<%=request.getContextPath()%>/Scripts/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/Scripts/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/Css/static/h-ui/js/H-ui.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/Css/static/h-ui.admin/js/H-ui.admin.page.js"></script>
<!--/_footer /作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="<%=request.getContextPath()%>/Scripts/lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/Scripts/lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/Scripts/lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/Scripts/lib/zTree/v3/js/jquery.ztree.all-3.5.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/Scripts/lib/echarts.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/Scripts/lib/china.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/Scripts/lib/china.json"></script>


<script type="text/javascript">
    // $(function () {
    //     $('#container1').highcharts({
    //         chart: {
    //             type: 'column'
    //         },
    //         title: {
    //             text: 'Monthly Average Rainfall'
    //         },
    //         subtitle: {
    //             text: 'Source: WorldClimate.com'
    //         },
    //         xAxis: {
    //             categories: [
    //                 '一月',
    //                 '二月',
    //                 '三月',
    //                 '四月',
    //                 '五月',
    //                 '六月',
    //                 '七月',
    //                 '八月',
    //                 '九月',
    //                 '十月',
    //                 '十一月',
    //                 '十二月'
    //             ]
    //         },
    //         yAxis: {
    //             min: 0,
    //             title: {
    //                 text: 'Rainfall (mm)'
    //             }
    //         },
    //         tooltip: {
    //             headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
    //             pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
    //                 '<td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>',
    //             footerFormat: '</table>',
    //             shared: true,
    //             useHTML: true
    //         },
    //         plotOptions: {
    //             column: {
    //                 pointPadding: 0.2,
    //                 borderWidth: 0
    //             }
    //         },
    //         series: [{
    //             name: 'Tokyo',
    //             data: [49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4]

    //         }, {
    //             name: 'New York',
    //             data: [83.6, 78.8, 98.5, 93.4, 106.0, 84.5, 105.0, 104.3, 91.2, 83.5, 106.6, 92.3]

    //         }, {
    //             name: 'London',
    //             data: [48.9, 38.8, 39.3, 41.4, 47.0, 48.3, 59.0, 59.6, 52.4, 65.2, 59.3, 51.2]

    //         }, {
    //             name: 'Berlin',
    //             data: [42.4, 33.2, 34.5, 39.7, 52.6, 75.5, 57.4, 60.4, 47.6, 39.1, 46.8, 51.1]

    //         }]
    //     });
    // });
    var data = [
        {name: '鄂尔多斯', value: 121},
        {name: '青岛', value: 118},
        {name: '上海', value: 215},
        {name: '攀枝花', value: 251},
        {name: '承德', value: 215},
        {name: '厦门', value: 216},
        {name: '烟台', value: 218},
        {name: '张家口', value: 311},
        {name: '广州', value: 318},
        {name: '大连', value: 117},
        {name: '西安', value: 111},
        {name: '北京', value: 119},
        {name: '邯郸', value: 118},
        {name: '郑州', value: 113},
        {name: '哈尔滨', value: 114},
        {name: '唐山', value: 119}
    ];
    var geoCoordMap = {
        '鄂尔多斯':[109.781327,39.608266],
        '青岛':[120.33,36.07],
        '上海':[121.48,31.22],
        '攀枝花':[101.718637,26.582347],
        '承德':[117.93,40.97],
        '厦门':[118.1,24.46],
        '烟台':[121.39,37.52],
        '张家口':[114.87,40.82],
        '广州':[113.23,23.16],
        '大连':[121.62,38.92],
        '西安':[108.95,34.27],
        '北京':[116.46,39.92],
        '邯郸':[114.47,36.6],
        '郑州':[113.65,34.76],
        '哈尔滨':[126.63,45.75],
        '唐山':[118.02,39.63]

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
        return res;
    };
    var myChart = echarts.init(document.getElementById('main'));
    option = {
        backgroundColor: '#404a59',
        title: {
            text: '地区热点分析',
            subtext: '商品销售地区热点',
            sublink: 'index.html',
            left: 'center',
            textStyle: {
                color: '#fff'
            }
        },
        tooltip : {
            trigger: 'item'
        },
        legend: {
            orient: 'vertical',
            y: 'bottom',
            x:'right',
            data:['销量'],
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
        series : [
            {
                name: '销量',
                type: 'scatter',
                coordinateSystem: 'geo',
                data: convertData(data),
                symbolSize: function (val) {  //标记的大小，用下面的公式计算
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
                name: '销售量',
                type: 'effectScatter',
                coordinateSystem: 'geo',
                data: convertData(data.sort(function (a, b) {
                    return 1;
                }).slice(0, 6)),
                symbolSize: function (val) {
                    return 2;
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
    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>