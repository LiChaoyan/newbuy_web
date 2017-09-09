<%--
  Created by IntelliJ IDEA.
  User: 1Q84
  Date: 2017/8/28
  Time: 16:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<ul class="layui-nav" style="background: transparent">
    <li class="layui-nav-item">
        <a href="<%=request.getContextPath()%>/shop/indexShopManager" style="font-size: 20px">商家店铺监控中心</a>
    </li>
    <li class="layui-nav-item">
        <a href="#">您好，经理</a>
    </li>
    <li class="layui-nav-item">
        <a href="#">消息<span class="layui-badge">9</span></a>
    </li>
    <li class="layui-nav-item">
        <a href="javascript:;">个人中心</a>
        <dl class="layui-nav-child"> <!-- 二级菜单 -->
            <dd><a href="#">个人信息</a></dd>
            <dd><a href="#">退出</a></dd>
        </dl>
    </li>
</ul>

<script>
    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function () {
        var element = layui.element;

        //…
    });
</script>
