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
                    <li><a href="<%=request.getContextPath()%>/system/admin/index" title="概览查看">概览查看</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-article">
            <dt><i class="Hui-iconfont">&#xe616;</i> 店铺管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="<%=request.getContextPath()%>/system/shop_list" title="查看店铺">查看店铺</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-product">
            <dt><i class="Hui-iconfont">&#xe620;</i> 类别管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="<%=request.getContextPath()%>/system/category_list" title="产品管理">查看类别</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-employ">
            <dt ><i class="Hui-iconfont">&#xe60d;</i> 权限管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li ><a href="<%=request.getContextPath()%>/system/employ_list" title="管理员列表">管理员列表</a></li>
                    <%--<li class="current"><a href="<%=request.getContextPath()%>/boss/employ_list" title="会员列表">会员列表</a></li>--%>
                </ul>
            </dd>
        </dl>


        <dl id="menu-tongji">
            <dt><i class="Hui-iconfont">&#xe61a;</i> 统计管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="<%=request.getContextPath()%>/system/admin/index" title="季度">季度</a></li>
                    <li><a href="<%=request.getContextPath()%>/system/admin/index" title="季度">月份</a></li>
                    <li><a href="<%=request.getContextPath()%>/system/admin/index" title="季度">周数</a></li>
                    <li><a href="<%=request.getContextPath()%>/system/admin/index" title="年份">年份</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-system">
            <dt><i class="Hui-iconfont">&#xe62e;</i> 安全管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a href="<%=request.getContextPath()%>/system/safe_list" title="安全设置">银行卡设置</a></li>
                </ul>
            </dd>
        </dl>
    </div>
</aside>
<div class="dislpayArrow hidden-xs"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a></div>

