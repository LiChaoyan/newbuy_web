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

    <title>查看分类</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/Scripts/lib/zTree/v3/css/zTreeStyle/zTreeStyle.css" type="text/css">
</head>
<body>
<!--_header 作为公共模版分离出去-->
<jsp:include page="/public_jsp/systemmanager/bossHeader.jsp" flush="true"></jsp:include>
<!--/_header 作为公共模版分离出去-->
<!--/_header 作为公共模版分离出去-->
<jsp:include page="/public_jsp/systemmanager/boss_admin_side.jsp" flush="true"></jsp:include>
<!--_menu 作为公共模版分离出去-->

<div class="dislpayArrow hidden-xs"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a></div>
<!--/_menu 作为公共模版分离出去-->

<section class="Hui-article-box">
    <nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i><a href="<%=request.getContextPath()%>/system/admin/index">首页</a><span class="c-gray en">&gt;</span> 类别管理 <span class="c-gray en">&gt;</span> 查看类别 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
    <div class="Hui-article">
        <div class="pd-20">
            <div class="text-c">
                <input type="text" name=""  placeholder=" 类别名称" style="width:250px" class="input-text">
                <button name="" class="btn btn-success" type="submit"><i class="Hui-iconfont">&#xe665;</i> 搜类别</button>
            </div>
            <div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l"><a href="javascript:;" onclick="datadel()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a> <a class="btn btn-primary radius" onclick="product_add('添加产品','/newbuy/boss/product_add')" href="javascript:;"><i class="Hui-iconfont">&#xe600;</i> 添加类别</a></span> <span class="r">共有一级类别：<strong>3</strong> 种</span> </div>
            <div class="mt-20">
                <table class="table table-border table-bordered table-bg table-hover table-sort">
                    <thead>
                    <tr class="text-c">
                        <th width="40"><input name="" type="checkbox" value=""></th>
                        <th width="100">一级分类</th>
                        <th width="100">二级分类</th>
                        <th width="100">三级分类</th>
                        <th width="60">显示状态</th>
                        <th width="100">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr class="text-c va-m">
                        <td><input name="" type="checkbox" value=""></td>
                        <td>一级分类</td>
                        <td class="text-l"><a style="text-decoration:none" onClick="product_show('二级','product-show','10001')" href="javascript:;"><img title="" src="<%=request.getContextPath()%>/Css/static/h-ui/images/gq/cn.gif"> <b class="text-success">二级</b> 分类</a></td>
                        <td class="text-l"><a style="text-decoration:none" onClick="product_show('三级','product-show','10001')" href="javascript:;"><img title="" src="<%=request.getContextPath()%>/Css/static/h-ui/images/gq/cn.gif"> <b class="text-success">三级</b> 分类</a></td>
                        <td class="td-status"><span class="label label-success radius">已发布</span></td>
                        <td class="td-manage"><a style="text-decoration:none" onClick="product_stop(this,'10001')" href="javascript:;" title="下架"><i class="Hui-iconfont">&#xe6de;</i></a> <a style="text-decoration:none" class="ml-5" onClick="product_edit('产品编辑','product-add','10001')" href="javascript:;" title="编辑"><i class="Hui-iconfont">&#xe6df;</i></a> <a style="text-decoration:none" class="ml-5" onClick="product_del(this,'10001')" href="javascript:;" title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
                    </tr>
                    <tr class="text-c va-m">
                        <td><input name="" type="checkbox" value=""></td>
                        <td>一级分类</td>
                        <td class="text-l"><a style="text-decoration:none" onClick="product_show('二级','product-show','10001')" href="javascript:;"><img title="" src="<%=request.getContextPath()%>/Css/static/h-ui/images/gq/cn.gif"> <b class="text-success">二级</b> 分类</a></td>
                        <td class="text-l"><a style="text-decoration:none" onClick="product_show('三级','product-show','10001')" href="javascript:;"><img title="" src="<%=request.getContextPath()%>/Css/static/h-ui/images/gq/cn.gif"> <b class="text-success">三级</b> 分类</a></td>
                        <td class="td-status"><span class="label label-success radius">已发布</span></td>
                        <td class="td-manage"><a style="text-decoration:none" onClick="product_stop(this,'10001')" href="javascript:;" title="下架"><i class="Hui-iconfont">&#xe6de;</i></a> <a style="text-decoration:none" class="ml-5" onClick="product_edit('产品编辑','product-add','10001')" href="javascript:;" title="编辑"><i class="Hui-iconfont">&#xe6df;</i></a> <a style="text-decoration:none" class="ml-5" onClick="product_del(this,'10001')" href="javascript:;" title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
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
    var setting = {
        view: {
            dblClickExpand: false,
            showLine: false,
            selectedMulti: false
        },
        data: {
            simpleData: {
                enable:true,
                idKey: "id",
                pIdKey: "pId",
                rootPId: ""
            }
        },
        callback: {
            beforeClick: function(treeId, treeNode) {
                var zTree = $.fn.zTree.getZTreeObj("tree");
                if (treeNode.isParent) {
                    zTree.expandNode(treeNode);
                    return false;
                } else {
                    demoIframe.attr("src",treeNode.file + "");
                    return true;
                }
            }
        }
    };

    var zNodes =[
        { id:1, pId:0, name:"一级分类", open:true},
        { id:11, pId:1, name:"二级分类"},
        { id:111, pId:11, name:"三级分类"},
        { id:112, pId:11, name:"三级分类"},
        { id:113, pId:11, name:"三级分类"},
        { id:114, pId:11, name:"三级分类"},
        { id:115, pId:11, name:"三级分类"},
        { id:12, pId:1, name:"二级分类 1-2"},
        { id:121, pId:12, name:"三级分类 1-2-1"},
        { id:122, pId:12, name:"三级分类 1-2-2"},
    ];

    var code;

    function showCode(str) {
        if (!code) code = $("#code");
        code.empty();
        code.append("<li>"+str+"</li>");
    }

    //$(document).ready(function(){
    //	var t = $("#treeDemo");
    //	t = $.fn.zTree.init(t, setting, zNodes);
    //	demoIframe = $("#testIframe");
    //	demoIframe.bind("load", loadReady);
    //	var zTree = $.fn.zTree.getZTreeObj("tree");
    //	zTree.selectNode(zTree.getNodeByParam("id",'11'));
    //});

    // $('.table-sort').dataTable({
    // 	"aaSorting": [[ 1, "desc" ]],//默认第几个排序
    // 	"bStateSave": true,//状态保存
    // 	"aoColumnDefs": [
    // 	  {"orderable":false,"aTargets":[0,7]}// 制定列不参与排序
    // 	]
    // });
    /*图片-添加*/
    function product_add(title,url){
        var index = layer.open({
            type: 2,
            title: title,
            content: url
        });
        layer.full(index);
    }
    /*图片-查看*/
    function product_show(title,url,id){
        var index = layer.open({
            type: 2,
            title: title,
            content: url
        });
        layer.full(index);
    }
    /*图片-审核*/
    function product_shenhe(obj,id){
        layer.confirm('审核文章？', {
                btn: ['通过','不通过'],
                shade: false
            },
            function(){
                $(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="product_start(this,id)" href="javascript:;" title="申请上线">申请上线</a>');
                $(obj).parents("tr").find(".td-status")('<span class="label label-success radius">已发布</span>');
                $(obj).remove();
                layer.msg('已发布', {icon:6,time:1000});
            },
            function(){
                $(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="product_shenqing(this,id)" href="javascript:;" title="申请上线">申请上线</a>');
                $(obj).parents("tr").find(".td-status")('<span class="label label-danger radius">未通过</span>');
                $(obj).remove();
                layer.msg('未通过', {icon:5,time:1000});
            });
    }
    /*图片-下架*/
    function product_stop(obj,id){
        layer.confirm('确认要下架吗？',function(index){
            $(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="product_start(this,id)" href="javascript:;" title="发布"><i class="Hui-iconfont">&#xe603;</i></a>');
            $(obj).parents("tr").find(".td-status")('<span class="label label-defaunt radius">已下架</span>');
            $(obj).remove();
            layer.msg('已下架!',{icon: 5,time:1000});
        });
    }

    /*图片-发布*/
    function product_start(obj,id){
        layer.confirm('确认要发布吗？',function(index){
            $(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="product_stop(this,id)" href="javascript:;" title="下架"><i class="Hui-iconfont">&#xe6de;</i></a>');
            $(obj).parents("tr").find(".td-status")('<span class="label label-success radius">已发布</span>');
            $(obj).remove();
            layer.msg('已发布!',{icon: 6,time:1000});
        });
    }
    /*图片-申请上线*/
    function product_shenqing(obj,id){
        $(obj).parents("tr").find(".td-status")('<span class="label label-default radius">待审核</span>');
        $(obj).parents("tr").find(".td-manage")("");
        layer.msg('已提交申请，耐心等待审核!', {icon: 1,time:2000});
    }
    /*图片-编辑*/
    function product_edit(title,url,id){
        var index = layer.open({
            type: 2,
            title: title,
            content: url
        });
        layer.full(index);
    }
    /*图片-删除*/
    function product_del(obj,id){
        layer.confirm('确认要删除吗？',function(index){
            $(obj).parents("tr").remove();
            layer.msg('已删除!',{icon:1,time:1000});
        });
    }
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>