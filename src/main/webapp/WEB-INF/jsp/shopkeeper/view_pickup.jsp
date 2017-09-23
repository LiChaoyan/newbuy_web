﻿<!DOCTYPE HTML>
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

<title>可配货查看</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/Scripts/lib/zTree/v3/css/zTreeStyle/zTreeStyle.css" type="text/css">
</head>
<body>
<!--_header 作为公共模版分离出去-->
<jsp:include page="/public_jsp/bossHeader.jsp" flush="true"></jsp:include>
<!--/_header 作为公共模版分离出去-->
<!--_menu 作为公共模版分离出去-->
<jsp:include page="/public_jsp/boss_admin_side.jsp" flush="true"></jsp:include>
<!--/_menu 作为公共模版分离出去-->

<section class="Hui-article-box">
	<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i><a href="<%=request.getContextPath()%>/index_admin">登录</a><span class="c-gray en">&gt;</span> 商品管理 <span class="c-gray en">&gt;</span> 查看商品 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
	<div class="Hui-article">
			<div class="pd-20">
				<div class="text-c">
					<input type="text" name=""  placeholder=" 商品名称" style="width:250px" class="input-text">
					<button name="" class="btn btn-success" type="submit"><i class="Hui-iconfont">&#xe665;</i> 搜商品</button>
				</div>
				<div class="cl pd-5 bg-1 bk-gray mt-20">
					<button name="" class="btn btn-success" type="submit">提交合作</button>
					<span class="r">共有数据：<strong>54</strong> 条</span> </div>
				<div class="mt-20">
					<table class="table table-border table-bordered table-bg table-hover table-sort">
						<thead>
							<tr class="text-c">
								<th width="40"><input name="" type="checkbox" value=""></th>
								<th width="100">商品名称</th>
								<th width="150">商品描述</th>
								<th width="100">推荐合作店铺</th>
								<th width="100">店铺所在地</th>
								<th width="100">推荐配送数量(件)</th>
								<th width="100">操作</th>
							</tr>
						</thead>
						<tbody>
							<tr class="text-c va-m">
								<td><input name="" type="checkbox" value=""></td>
								<td>东鹏陶瓷</td>
								<td class="text-l">东鹏陶瓷被评为“中国名牌”、“国家免检产品”</td>
								<td>
									<a href="<%=request.getContextPath()%>/boss/view_pickup_shop">义乌小商品批发城</a>
								</td>
								<td>郑州</td>
								<td>1000</td>
								<td class="f-14 product-brand-manage">
									<a style="text-decoration:none" href="<%=request.getContextPath()%>/boss/view_pickup_shop">查看相似店铺<i class="Hui-iconfont">&#xe6df;</i></a>
								</td>
							</tr>
							<tr class="text-c va-m">
								<td><input name="" type="checkbox" value=""></td>
								<td>东鹏陶瓷</td>
								<td class="text-l">东鹏陶瓷被评为“中国名牌”、“国家免检产品”</td>
								<td>
									<a href="<%=request.getContextPath()%>/boss/view_pickup_shop">义乌小商品批发城</a>
								</td>
								<td>郑州</td>
								<td>1000</td>
								<td class="f-14 product-brand-manage">
									<a style="text-decoration:none"   href="<%=request.getContextPath()%>/boss/view_pickup_shop">查看相似店铺<i class="Hui-iconfont">&#xe6df;</i></a>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
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
<script type="text/javascript">
    $('.table-sort').dataTable({
        "aaSorting": [[ 1, "desc" ]],//默认第几个排序
        "bStateSave": true,//状态保存
        "aoColumnDefs": [
            //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
            {"orderable":false,"aTargets":[0,5]}// 制定列不参与排序
        ]
    });
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>