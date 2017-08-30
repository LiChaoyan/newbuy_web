<%--
  Created by IntelliJ IDEA.
  User: 1Q84
  Date: 2017/8/30
  Time: 11:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品管理</title>
    <link type="text/css" rel="stylesheet" href="<%= request.getContextPath()%>/layui/dist/css/layui.css"/>
    <script type="text/javascript" src="<%= request.getContextPath()%>/layui/dist/layui.js"></script>
</head>
<body>
<ul class="layui-nav">
    <li class="layui-nav-item">
        <a href="<%=request.getContextPath()%>/shop/indexShopManager" style="font-size: 20px">商家店铺监控中心</a>
    </li>
    <li class="layui-nav-item layui-this">
        <a href="<%=request.getContextPath()%>/shop/managerGoods">查看商品</a>
    </li>
    <li class="layui-nav-item">
        <a href="<%=request.getContextPath()%>/shop/addDeletedGoods">增删商品</a>
    </li>
    <li class="layui-nav-item">
        <a href="<%=request.getContextPath()%>/shop/upDownGoods">商品上下架</a>
    </li>
</ul>

<div class="layui-col-md12" style="padding-left: 10%;padding-right: 10%;">
    <div class="layui-row">
        <blockquote class="site-text layui-elem-quote">
            <label class="layui-input-inline">
                <input class="layui-input" placeholder="输入商品名称或者编号" style="width: 350px"/>
            </label>
            <button class="layui-btn layui-btn-small layui-input-inline" style="margin-left: 30px">搜索</button>
        </blockquote>
    </div>

    <table id="viewGoods"></table>

</div>

<script>
    layui.use('table', function () {
        var table = layui.table;

        //展示已知数据
        table.render({
            elem: '#viewGoods'
            , data: [{
                "id": "10001"
                , "name": "魅族"
                , "info": "手机"
                , "sellnum": "100"
                , "sellmoney": "1000"
                , "statue": "已上架"
            }]
            , height: 'full'
            , width: 1080
            , cols: [[ //标题栏
                {field: 'id', title: '商品编号', width: 150}
                , {field: 'name', title: '商品名', width: 200}
                , {field: 'info', title: '描述', width: 370}
                , {field: 'sellnum', title: '销售量', width: 120, sort: true}
                , {field: 'sellmoney', title: '销售额', width: 120, sort: true}
                , {field: 'statue', title: '上架状态', width: 111}
            ]]
            , skin: 'row' //表格风格
            , even: true
            , page: true //是否显示分页
            , limits: [5, 10]
            , limit: 10 //每页默认显示的数量
        });
    });
</script>
<script>
    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function () {
        var element = layui.element;

        //…
    });
</script>
</body>
</html>
