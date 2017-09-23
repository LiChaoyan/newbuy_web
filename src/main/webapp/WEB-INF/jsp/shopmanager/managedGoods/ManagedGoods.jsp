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
<div class="layui-row" style="background-image: url(<%=request.getContextPath()%>/Images/shopmanagerbgd.jpg)">
    <div class="layui-col-md6">
        <ul class="layui-nav" style="background: transparent">
            <li class="layui-nav-item">
                <jsp:include page="/public_jsp/shopmanager/secondmenu.jsp"></jsp:include>
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
    </div>
    <jsp:include page="/public_jsp/shopmanager/shopmanagerHeaderRight.jsp"></jsp:include>
</div>

<div class="layui-row" style="padding: 10px 10% 10px 10%;">
    <div class="layui-row">
        <blockquote class="site-text layui-elem-quote">
            <label class="layui-input-inline">
                <input class="layui-input" placeholder="输入商品名称或者编号" style="width: 350px"/>
            </label>
            <button class="layui-btn layui-btn-small layui-input-inline" style="margin-left: 30px">搜索</button>
        </blockquote>
    </div>

    <table class="layui-table" lay-data="{height:'full', url:'/demo/table/user/', page:true}"
           style="width: 1005px">
        <thead>
        <tr>
            <th lay-data="{field:'id', width:110}">商品编号</th>
            <th lay-data="{field:'name', width:160}">商品名</th>
            <th lay-data="{field:'info', width:460}">描述</th>
            <th lay-data="{field:'price', width:95, sort: true}">单价</th>
            <th lay-data="{field:'sellnum', width:80, sort: true}">销售量</th>
            <th lay-data="{field:'sellmoney', width:80, sort: true}">销售额</th>
            <th lay-data="{field:'statue', width:100}">上架状态</th>
        </tr>
        </thead>
    </table>
</div>

<script>
    layui.use('table', function () {
        var table = layui.table;
    });
</script>
</body>
</html>
