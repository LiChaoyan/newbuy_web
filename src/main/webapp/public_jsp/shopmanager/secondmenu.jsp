<%--
  Created by IntelliJ IDEA.
  User: 1Q84
  Date: 2017/8/31
  Time: 13:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<li class="layui-nav-item">
    <a href="<%=request.getContextPath()%>/shop/indexShopManager" style="font-size: 20px">商家店铺监控中心</a>
    <dl class="layui-nav-child"> <!-- 二级菜单 -->
        <dd><a href="<%=request.getContextPath()%>/shop/managerGoods"><i class="layui-icon">&#xe628;</i>&nbsp;商品管理</a>
        </dd>
        <dd><a href="<%=request.getContextPath()%>/shop/location"><i class="layui-icon">&#xe620;</i>&nbsp;定位管理</a>
        </dd>
        <dd><a href="<%=request.getContextPath()%>/shop/heatMap"><i class="layui-icon">&#xe615;</i>&nbsp;热力分析</a>
        </dd>
        <dd><a href="<%=request.getContextPath()%>/shop/statistics"><i class="layui-icon">&#xe62c;</i>&nbsp;数据统计</a>
        </dd>
        <dd><a href="<%=request.getContextPath()%>/shop/order"><i class="layui-icon">&#xe60a;</i>&nbsp;订单管理</a>
        </dd>
        <dd><a href="<%=request.getContextPath()%>/shop/cashier"><i class="layui-icon">&#x1005;</i>&nbsp;收银系统</a>
        </dd>
    </dl>
</li>
