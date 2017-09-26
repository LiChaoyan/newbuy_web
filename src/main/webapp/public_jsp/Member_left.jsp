<%--
  Created by IntelliJ IDEA.
  User: win8.1
  Date: 2017/9/26
  Time: 18:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="left_n">个人中心</div>
<div class="left_m">
    <div class="left_m_t t_bg2">会员中心</div>
    <ul>
        <li><a href="<%= request.getContextPath()%>/Member_User">个人信息</a></li>
        <li><a href="<%= request.getContextPath()%>/Member_Safehead" class="now">修改个人信息</a></li>
        <li><a href="#">我的收藏</a></li>
        <li><a href="#">我的评价</a></li>
    </ul>
</div>
<div class="left_m">
    <div class="left_m_t t_bg1">订单中心</div>
    <ul>
        <li><a href="<%= request.getContextPath()%>/Order_My">我的订单</a></li>
        <li><a href="<%= request.getContextPath()%>/Member_Safeplace">收货地址</a></li>
        <li><a href="<%= request.getContextPath()%>/BuyCar">我的购物车</a></li>
        <li><a href="#">已买到的商品</a></li>
    </ul>
</div>

<div class="left_m">
    <div class="left_m_t t_bg3">账户中心</div>
    <ul>
        <li><a href="#">账户安全</a></li>
        <li><a href="#">我的红包</a></li>
        <li><a href="#">资金管理</a></li>
    </ul>
</div>
