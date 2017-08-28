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

<title>店铺管理</title>
</head>
<body>
<!--_header 作为公共模版分离出去-->
<jsp:include page="/public_jsp/bossHeader.jsp" flush="true"></jsp:include>
<!--/_header 作为公共模版分离出去-->
<jsp:include page="/public_jsp/boss_admin_side.jsp" flush="true"></jsp:include>
<!--_menu 作为公共模版分离出去-->

<div class="dislpayArrow hidden-xs">
	<a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a>
</div>
<!--/_menu 作为公共模版分离出去-->

<section class="Hui-article-box">
	<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i><a href="<%=request.getContextPath()%>/boss/admin/index">首页</a>
		<span class="c-gray en">&gt;</span>
		店铺管理
		<span class="c-gray en">&gt;</span>
		查看店铺
		<a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a>
	</nav>
	<div class="Hui-article">
		<article class="cl pd-20">
			<div class="text-c">
				<!-- <span class="select-box inline">
				<select name="" class="select">
					<option value="0">全部分类</option>
					<option value="1">分类一</option>
					<option value="2">分类二</option>
				</select>
				</span>
				日期范围：
				<input type="text" onfocus="WdatePicker({maxDate:'#F{$dp.$D(\'logmax\')||\'%y-%M-%d\'}'})" id="logmin" class="input-text Wdate" style="width:120px;">
				-
				<input type="text" onfocus="WdatePicker({minDate:'#F{$dp.$D(\'logmin\')}',maxDate:'%y-%M-%d'})" id="logmax" class="input-text Wdate" style="width:120px;"> -->
				<input type="text" name=""  placeholder=" 店铺名称" style="width:250px" class="input-text">
				<button name=""  class="btn btn-success" type="submit"><i class="Hui-iconfont">&#xe665;</i> 搜店铺</button>
			</div>
			<div class="cl pd-5 bg-1 bk-gray mt-20">
				<span class="l">
				<a class="btn btn-primary radius" data-title="添加线上店铺" _href="<%=request.getContextPath()%>/article-add" onclick="article_addline('添加线上店铺','/newbuy/boss/shopadd_online')" href="javascript:;"><i class="Hui-iconfont">&#xe600;</i> 添加线上店铺</a>
				<a class="btn btn-primary radius" data-title="添加实体店铺" _href="<%=request.getContextPath()%>/article-add" onclick="article_add('添加实体店铺','/newbuy/boss/shopadd_outline')" href="javascript:;"><i class="Hui-iconfont">&#xe600;</i> 添加实体店铺</a>
				</span>
				<span class="r">共有店铺：<strong>${shops.size()}</strong> 个</span>
			</div>
			<div class="mt-20">
				<table class="table table-border table-bordered table-bg table-hover table-sort">
					<thead>
						<tr class="text-c">
							<th width="25"><input type="checkbox" name="" value=""></th>
							<th width="80">店铺logo</th>
							<th width="120">店铺名称</th>
							<th width="80">店铺类型</th>
							<th width="80">联系方式</th>
							<th width="175">所在地</th>
							<th width="60">店铺状态</th>
							<th width="120">操作</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${shops}" var="shop">
						<tr class="text-c">
							<td><input type="checkbox" value="" name=""></td>
							<td><img src="${shop.logo}" width="50" height="50"></td>
							<td class="text-l"><u style="cursor:pointer" class="text-primary" onClick="article_edit('查看','article-zhang','10001')" title="查看">${shop.shopname}</u></td>
							<td>${shop.type}</td>
							<td>${shop.stel}</td>
							<td>${shop.saddress}</td>
							<td class="td-status"><c:if test="${shop.openstatue==1}"><span class="label label-success radius">已上线</span></c:if><c:if test="${shop.openstatue==0}"><span class="label label-success radius">待审核</span></c:if></td>
							<td class="f-14 td-manage">
								<!-- <a style="text-decoration:none" onClick="article_stop(this,'10001')" href="javascript:;" title="下架"><i class="Hui-iconfont">&#xe6de;</i></a> -->
								<a style="text-decoration:none" class="ml-5" onClick="article_edit('店铺编辑','shop-addline','10001')" href="javascript:;" title="编辑店铺"><i class="Hui-iconfont">&#xe6df;</i></a>
								<a style="text-decoration:none" class="ml-5" onClick="article_del(this,'10001')" href="javascript:;" title="删除店铺"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
						</tr>
					</c:forEach>
						<tr class="text-c">
							<td><input type="checkbox" value="" name=""></td>
							<td>刘明慧</td>
							<td class="text-l"><u style="cursor:pointer" class="text-primary" onClick="article_edit('查看','article-zhang','10001')" title="查看">格林家的衣服</u></td>
							<td>线上店铺</td>
							<td>15166677899</td>
							<td>河南省郑州市新郑市龙湖镇</td>
							<td class="td-status"><span class="label label-success radius">已上线</span></td>
							<td class="f-14 td-manage">
								<!-- <a style="text-decoration:none" onClick="article_stop(this,'10001')" href="javascript:;" title="下架"><i class="Hui-iconfont">&#xe6de;</i></a> -->
								<a style="text-decoration:none" class="ml-5" onClick="article_edit('店铺编辑','shop-addline','10001')" href="javascript:;" title="编辑店铺"><i class="Hui-iconfont">&#xe6df;</i></a>
								<a style="text-decoration:none" class="ml-5" onClick="article_del(this,'10001')" href="javascript:;" title="删除店铺"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
						</tr>
						<tr class="text-c">
							<td><input type="checkbox" value="" name=""></td>
							<td>张亚辉</td>
							<td class="text-l"><u style="cursor:pointer" class="text-primary" onClick="article_edit('查看','article-zhang','10001')" title="查看">大叔的小菜</u></td>
							<td>实体店铺</td>
							<td>15166677899</td>
							<td>河北省唐山市遵化市</td>
							<td class="td-status"><span class="label label-success radius">已上线</span></td>
							<td class="f-14 td-manage">
								<!-- <a style="text-decoration:none" onClick="article_stop(this,'10001')" href="javascript:;" title="下架"><i class="Hui-iconfont">&#xe6de;</i></a> -->
								<a style="text-decoration:none" class="ml-5" onClick="article_edit('店铺编辑','shop-add','10001')" href="javascript:;" title="编辑店铺"><i class="Hui-iconfont">&#xe6df;</i></a>
								<a style="text-decoration:none" class="ml-5" onClick="article_del(this,'10001')" href="javascript:;" title="删除店铺"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
						</tr>

						<tr class="text-c">
							<td><input type="checkbox" value="" name=""></td>
							<td>王浩</td>
							<td class="text-l"><u style="cursor:pointer" class="text-primary" onClick="article_edit('查看','article-zhang','10002')" title="查看">在路上的跑鞋</u></td>
							<td>实体店铺</td>
							<td>15166677899</td>
							<td>重庆市</td>
							<td class="td-status"><span class="label label-success radius">审核中</span></td>
							<td class="f-14 td-manage">
								<!-- <a style="text-decoration:none" onClick="article_shenhe(this,'10001')" href="javascript:;" title="审核">审核</a> -->
								<a style="text-decoration:none" class="ml-5" onClick="article_edit('店铺编辑','shop-add','10001')" href="javascript:;" title="编辑"><i class="Hui-iconfont">&#xe6df;</i></a>
								<a style="text-decoration:none" class="ml-5" onClick="article_del(this,'10001')" href="javascript:;" title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
						</tr>
					</tbody>
				</table>
			</div>
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
<script type="text/javascript" src="<%=request.getContextPath()%>/Scripts/lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/Scripts/lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/Scripts/lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">
$('.table-sort').dataTable({
	"aaSorting": [[ 2, "desc" ]],//默认第几个排序
	"bStateSave": true,//状态保存
	"aoColumnDefs": [
		//{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
		{"orderable":false,"aTargets":[0,7]}// 不参与排序的列
	]
});

/*资讯-添加实体店铺*/
function article_add(title,url,w,h){
	var index = layer.open({
		type: 2,
		title: title,
		content: url
	});
	layer.full(index);
}
/*资讯-添加线上店铺*/
function article_addline(title,url,w,h){
	var index = layer.open({
		type: 2,
		title: title,
		content: url
	});
	layer.full(index);
}
/*资讯-编辑*/
function article_edit(title,url,id,w,h){
	var index = layer.open({
		type: 2,
		title: title,
		content: url
	});
	layer.full(index);
}
/*资讯-删除*/
function article_del(obj,id){
	layer.confirm('确认要删除吗？',function(index){
		$.ajax({
			type: 'POST',
			url: '',
			dataType: 'json',
			success: function(data){
				$(obj).parents("tr").remove();
				layer.msg('已删除!',{icon:1,time:1000});
			},
			error:function(data) {
				console.log(data.msg);
			},
		});		
	});
}

/*资讯-审核*/
function article_shenhe(obj,id){
	layer.confirm('审核文章？', {
		btn: ['通过','不通过','取消'], 
		shade: false,
		closeBtn: 0
	},
	function(){
		$(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="article_start(this,id)" href="javascript:;" title="申请上线">申请上线</a>');
		$(obj).parents("tr").find(".td-status")('<span class="label label-success radius">已发布</span>');
		$(obj).remove();
		layer.msg('已发布', {icon:6,time:1000});
	},
	function(){
		$(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="article_shenqing(this,id)" href="javascript:;" title="申请上线">申请上线</a>');
		$(obj).parents("tr").find(".td-status")('<span class="label label-danger radius">未通过</span>');
		$(obj).remove();
    	layer.msg('未通过', {icon:5,time:1000});
	});	
}
/*资讯-下架*/
function article_stop(obj,id){
	layer.confirm('确认要下架吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="article_start(this,id)" href="javascript:;" title="发布"><i class="Hui-iconfont">&#xe603;</i></a>');
		$(obj).parents("tr").find(".td-status")('<span class="label label-defaunt radius">已下架</span>');
		$(obj).remove();
		layer.msg('已下架!',{icon: 5,time:1000});
	});
}

/*资讯-发布*/
function article_start(obj,id){
	layer.confirm('确认要发布吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="article_stop(this,id)" href="javascript:;" title="下架"><i class="Hui-iconfont">&#xe6de;</i></a>');
		$(obj).parents("tr").find(".td-status")('<span class="label label-success radius">已发布</span>');
		$(obj).remove();
		layer.msg('已发布!',{icon: 6,time:1000});
	});
}
/*资讯-申请上线*/
function article_shenqing(obj,id){
	$(obj).parents("tr").find(".td-status")('<span class="label label-default radius">待审核</span>');
	$(obj).parents("tr").find(".td-manage")("");
	layer.msg('已提交申请，耐心等待审核!', {icon: 1,time:2000});
}
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>