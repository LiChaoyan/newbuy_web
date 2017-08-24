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

        <dl id="menu-part">
            <dt><i class="Hui-iconfont">&#xe620;</i> 合作管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="<%=request.getContextPath()%>/product-brand" title="品牌管理">品牌管理</a></li>
                </ul>
            </dd>
        </dl>

        <dl id="menu-member">
            <dt><i class="Hui-iconfont">&#xe60d;</i> 店员管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="<%=request.getContextPath()%>/member-list" title="会员列表">会员列表</a></li>
                    <li><a href="<%=request.getContextPath()%>/member-del" title="删除的会员">删除的会员</a></li>
                    <li><a href="<%=request.getContextPath()%>/member-level" title="等级管理">等级管理</a></li>
                    <li><a href="<%=request.getContextPath()%>/member-scoreoperation" title="积分管理">积分管理</a></li>
                    <li><a href="<%=request.getContextPath()%>/member-record-browse" title="浏览记录">浏览记录</a></li>
                    <li><a href="<%=request.getContextPath()%>/member-record-download" title="下载记录">下载记录</a></li>
                    <li><a href="<%=request.getContextPath()%>/member-record-share" title="分享记录">分享记录</a></li>
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
                    <li><a href="<%=request.getContextPath()%>/system-base" title="系统设置">系统设置</a></li>
                    <li><a href="<%=request.getContextPath()%>/system-category" title="栏目管理">栏目管理</a></li>
                    <li><a href="<%=request.getContextPath()%>/system-data" title="数据字典">数据字典</a></li>
                    <li><a href="<%=request.getContextPath()%>/system-shielding" title="屏蔽词">屏蔽词</a></li>
                    <li><a href="<%=request.getContextPath()%>/system-log" title="系统日志">系统日志</a></li>
                </ul>
            </dd>
        </dl>
    </div>
</aside>
