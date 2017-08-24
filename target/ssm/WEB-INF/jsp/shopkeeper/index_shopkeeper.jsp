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
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<!--/meta 作为公共模版分离出去-->

<title>概览</title>
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

<dl id="menu-product">
			<dt><i class="Hui-iconfont">&#xe620;</i> 合作管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a href="<%=request.getContextPath()%>/product-brand" title="品牌管理">品牌管理</a></li>
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
					<li><a href="<%=request.getContextPath()%>/system-base" title="系统设置">系统设置</a></li>
					<li><a href="<%=request.getContextPath()%>/system-category" title="栏目管理">栏目管理</a></li>
					<li><a href="<%=request.getContextPath()%>/system-data" title="数据字典">数据字典</a></li>
					<li><a href="<%=request.getContextPath()%>/system-shielding" title="屏蔽词">屏蔽词</a></li>
					<li><a href="<%=request.getContextPath()%>/system-log" title="系统日志">系统日志</a></li>
		</ul>
	</dd>
</dl>
</div>
</aside>

<div class="dislpayArrow hidden-xs"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a></div>
<!--/_menu 作为公共模版分离出去-->


<section class="Hui-article-box">
	<nav class="breadcrumb"><i class="Hui-iconfont"></i> <a href="<%=request.getContextPath()%>/boss/index_shopkeeper" class="maincolor">首页</a>
		<span class="c-999 en">&gt;</span>
		<span class="c-666">概览</span> 
		<a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
	<div class="Hui-article">
		<article class="cl pd-20">
			<p class="f-20 text-success">欢迎登陆！</p>
			<p>登录次数：18 </p>
			<p>上次登录时间：2014-6-14 11:19:55</p>
			<table class="table table-border table-bordered table-bg">
				<thead>
					<tr>
						<th colspan="7" scope="col">信息统计</th>
			</tr>
					<tr class="text-c">
						<th>统计</th>
						<th>资讯库</th>
						<th>图片库</th>
						<th>产品库</th>
						<th>用户</th>
						<th>管理员</th>
			</tr>
		</thead>
				<tbody>
					<tr class="text-c">
						<td>总数</td>
						<td>92</td>
						<td>9</td>
						<td>0</td>
						<td>8</td>
						<td>20</td>
			</tr>
					<tr class="text-c">
						<td>今日</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
			</tr>
					<tr class="text-c">
						<td>昨日</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
			</tr>
					<tr class="text-c">
						<td>本周</td>
						<td>2</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
			</tr>
					<tr class="text-c">
						<td>本月</td>
						<td>2</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
			</tr>
		</tbody>
	</table>

</article>
</div>
</section>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="<%=request.getContextPath()%>/Scripts/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/Scripts/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/Css/static/h-ui/js/H-ui.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/Css/static/h-ui.admin/js/H-ui.admin.page.js"></script>
<!--/_footer /作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript">

</script>
<!--/请在上方写此页面业务相关的脚本-->


</body>
</html>