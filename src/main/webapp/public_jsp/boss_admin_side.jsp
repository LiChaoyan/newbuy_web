<%--
  Created by IntelliJ IDEA.
  User: 123
  Date: 2017/8/24
  Time: 14:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<aside class="Hui-aside">

    <div class="menu_dropdown bk_2">
        <dl id="menu-index">
            <dt><i class="Hui-iconfont">&#xe616;</i> 首页<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="<%=request.getContextPath()%>/boss/admin/index" title="概览查看">概览查看</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-article">
            <dt><i class="Hui-iconfont">&#xe616;</i> 店铺管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="<%=request.getContextPath()%>/boss/shop_list" title="查看店铺">查看店铺</a></li>
                </ul>
            </dd>
        </dl>

        <dl id="menu-product">
            <dt><i class="Hui-iconfont">&#xe620;</i> 商品管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="<%=request.getContextPath()%>/boss/product_list" title="产品管理">查看商品</a></li>
                </ul>
            </dd>
        </dl>

        <dl>
            <dt><i class="Hui-iconfont">&#xe620;</i> 合作管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="<%=request.getContextPath()%>/boss/coop_product" title="合作商品管理">合作商品管理</a></li>
                    <li><a href="<%=request.getContextPath()%>/boss/coop_build" title="合作建立概览">合作建立概览</a></li>
                    <li><a href="<%=request.getContextPath()%>/boss/view_pickup" title="可配货查看">可配货查看</a></li>
                    <li><a href="<%=request.getContextPath()%>/boss/hot_spots" title="地区热点分析">地区热点分析</a></li>
                    <li><a href="<%=request.getContextPath()%>/boss/data_count" title="配货数据统计">配货数据统计</a></li>
                </ul>

            </dd>
        </dl>


        <dl id="menu-employ">
            <dt ><i class="Hui-iconfont">&#xe60d;</i> 店员管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li ><a href="<%=request.getContextPath()%>/boss/employ_list" title="会员列表">会员列表</a></li>
                    <%--<li class="current"><a href="<%=request.getContextPath()%>/boss/employ_list" title="会员列表">会员列表</a></li>--%>
                </ul>
            </dd>
        </dl>


        <dl id="menu-tongji">
            <dt><i class="Hui-iconfont">&#xe61a;</i> 统计管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="<%=request.getContextPath()%>/charts-1" title="折线图">折线图</a></li>
                    <li><a href="<%=request.getContextPath()%>/charts-2" title="时间轴折线图">时间轴折线图</a></li>
                    <li><a href="<%=request.getContextPath()%>/charts-3" title="区域图">区域图</a></li>
                    <li><a href="<%=request.getContextPath()%>/charts-4" title="柱状图">柱状图</a></li>
                    <li><a href="<%=request.getContextPath()%>/charts-5" title="饼状图">饼状图</a></li>
                    <li><a href="<%=request.getContextPath()%>/charts-6" title="3D柱状图">3D柱状图</a></li>
                    <li><a href="<%=request.getContextPath()%>/charts-7" title="3D饼状图">3D饼状图</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-system">
            <dt><i class="Hui-iconfont">&#xe62e;</i> 安全管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="<%=request.getContextPath()%>/boss/safe_list" title="安全设置">银行卡设置</a></li>
                </ul>
            </dd>
        </dl>
    </div>
</aside>
<div class="dislpayArrow hidden-xs"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a></div>

