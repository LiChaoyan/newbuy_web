<%--
  Created by IntelliJ IDEA.
  User: 1Q84
  Date: 2017/8/29
  Time: 22:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品上下架</title>
    <link type="text/css" rel="stylesheet" href="<%= request.getContextPath()%>/layui/dist/css/layui.css"/>
    <script type="text/javascript" src="<%= request.getContextPath()%>/layui/dist/layui.js"></script>
</head>
<body>
<ul class="layui-nav">
    <li class="layui-nav-item">
        <a href="<%=request.getContextPath()%>/shop/indexShopManager" style="font-size: 20px">商家店铺监控中心</a>
    </li>
    <li class="layui-nav-item">
        <a href="<%=request.getContextPath()%>/shop/managerGoods">查看商品</a>
    </li>
    <li class="layui-nav-item">
        <a href="<%=request.getContextPath()%>/shop/addDeletedGoods">增删商品</a>
    </li>
    <li class="layui-nav-item  layui-this">
        <a href="<%=request.getContextPath()%>/shop/upDownGoods">商品上下架</a>
    </li>
</ul>

<div class="layui-col-md12" style="padding-left: 10%;padding-right: 10%;">
    <div class="layui-row">
        <blockquote class="site-text layui-elem-quote">
            <button class="layui-btn layui-btn-small">批量上架</button>
            <button class="layui-btn layui-btn-small layui-btn-danger">批量下架</button>
        </blockquote>
    </div>

    <table class="layui-table" lay-even="" lay-skin="row">
        <thead>
        <tr>
            <td width="50">
                <input type="checkbox" name="" lay-skin="primary">
            </td>
            <td width="110">商品编号</td>
            <td width="160">商品名</td>
            <td>描述</td>
            <td width="110">单价</td>
            <td width="110">上架状态</td>
            <td width="110">操作</td>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>
                <input type="checkbox" name="" lay-skin="primary">
            </td>
            <td>001</td>
            <td>小米</td>
            <td>手机</td>
            <td>100</td>
            <td>已上架</td>
            <td>
                <div class="layui-btn-group">
                    <button class="layui-btn layui-btn-mini">上架</button>
                    <button class="layui-btn layui-btn-mini layui-btn-danger">下架</button>
                </div>
            </td>
        </tr>
        </tbody>
    </table>

    <div id="page"></div>
</div>

<script>
    layui.use(['laypage', 'layer'], function () {
        var laypage = layui.laypage
            , layer = layui.layer;

        //完整功能
        laypage.render({
            elem: 'page'
            , count: 100
            , layout: ['count', 'prev', 'page', 'next', 'limit', 'skip']
            , jump: function (obj) {
                console.log(obj)
            }
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
