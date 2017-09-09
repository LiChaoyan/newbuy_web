<%--
  Created by IntelliJ IDEA.
  User: 1Q84
  Date: 2017/8/31
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>订单管理</title>
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
        </ul>
    </div>
    <jsp:include page="/public_jsp/shopmanager/shopmanagerHeaderRight.jsp"></jsp:include>
</div>

<div class="layui-row" style="padding: 10px 10% 20px 10%;text-align: center">
    <table class="layui-table" lay-data="{height:'full', url:'/demo/table/user/', page:true}"
           style="width: 1077px">
        <thead>
        <tr>
            <th lay-data="{field:'num', width:80}">序号</th>
            <th lay-data="{width:400, toolbar: '#info'}">订单</th>
            <th lay-data="{field:'price', width:120}">价格/数量</th>
            <th lay-data="{field:'id', width:120}">订单编号</th>
            <th lay-data="{field:'date', width:120}">日期</th>
            <th lay-data="{width:245,align:'center',toolbar:'#msg'}">物流</th>
        </tr>
        </thead>
    </table>
</div>
<script type="text/html" id="info">
    <img src="" alt="" style="width: 80px;height: 80px">
    <span>【自动发货】CSDN账号 CSDN100下载积分账号 一人独享 可改密码</span>
</script>
<script type="text/html" id="msg">
    <a href="#">物流信息</a>
</script>

<script>
    layui.use('table', function () {
        var table = layui.table;
    });
</script>
</body>
</html>