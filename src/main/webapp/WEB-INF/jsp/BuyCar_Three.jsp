﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link type="text/css" rel="stylesheet" href="<%= request.getContextPath()%>/Css/style.css" />

    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/jquery-1.11.1.min_044d0927.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/menu.js"></script>    
                
	<script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/n_nav.js"></script>   
    
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/num.js">
    	var jq = jQuery.noConflict();
    </script>     
    
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/shade.js"></script>
    
<title>付款结果</title>
</head>
<body>  
<!--Begin Header Begin-->
<jsp:include page="Carheader.jsp"></jsp:include>
<!--End Header End--> 
<!--Begin Menu Begin-->
<div class="menu_bg">
	<div class="menu">
        <jsp:include page="/public_jsp/fenlei.jsp"></jsp:include>
        <div class="m_ad">中秋送好礼！</div>
    </div>
</div>
<!--End Menu End--> 
<div class="i_bg">  
    <div class="content mar_20">
    	<img src="<%= request.getContextPath()%>/Picture/img3.jpg" />        
    </div>
    
    <!--Begin 第三步：提交订单 Begin -->
    <div class="content mar_20">
    	
        <!--Begin 支付宝支付 Begin -->
        <C:forEach items="${OrderList}" var="Order">
    	<div class="warning">
            <table border="0" style="width:1000px; text-align:center;" cellspacing="0" cellpadding="0">
              <tr height="35">
                <td style="font-size:18px;">
                	感谢您在本店购物！您的订单已提交成功，请记住您的订单号: <font color="#ff4e00">${Order.number}</font>
                </td>
              </tr>
              <tr>
                <td style="font-size:14px; font-family:'宋体'; padding:10px 0 20px 0; border-bottom:1px solid #b6b6b6;">
                	您选定的支付方式为: <font color="#ff4e00">${Order.paytype}</font>； &nbsp; &nbsp;
                    快递为: <font color="#ff4e00">申通快递</font>； &nbsp; &nbsp;
                    您的付款金额为: <font color="#ff4e00">￥${Order.totalprice}</font>
                </td>
              </tr>
              <tr>
                <td>
                	<a href="<%= request.getContextPath()%>/Index">返回首页</a> &nbsp; &nbsp; <a href="<%= request.getContextPath()%>/Order_My">查看订单</a>
                </td>
              </tr>
            </table>
        </div>
        </C:forEach>
    </div>
	<!--End 第三步：提交订单 End--> 
    
    
    <!--Begin Footer Begin -->
    <div class="b_btm_bg    bg_color">
        <div class="b_btm">
            <table border="0" style="width:210px; height:62px; float:left; margin-left:75px; margin-top:30px;" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="72"><img src="<%= request.getContextPath()%>/Picture/b1.png" width="62" height="62" /></td>
                    <td><h2>正品保障</h2>正品行货  放心购买</td>
                </tr>
            </table>
            <table border="0" style="width:210px; height:62px; float:left; margin-left:75px; margin-top:30px;" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="72"><img src="<%= request.getContextPath()%>/Picture/b2.png" width="62" height="62" /></td>
                    <td><h2>最优选择</h2>线上线下 对比选购</td>
                </tr>
            </table>
            <table border="0" style="width:210px; height:62px; float:left; margin-left:75px; margin-top:30px;" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="72"><img src="<%= request.getContextPath()%>/Picture/b3.png" width="62" height="62" /></td>
                    <td><h2>天天低价</h2>天天低价 畅选无忧</td>
                </tr>
            </table>
            <table border="0" style="width:210px; height:62px; float:left; margin-left:75px; margin-top:30px;" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="72"><img src="<%= request.getContextPath()%>/Picture/b4.png" width="62" height="62" /></td>
                    <td><h2>准时送达</h2>线下提货 就近安排</td>
                </tr>
            </table>
        </div>
    </div>
    <div class="b_nav">
        <dl>
            <dt><a href="#">新手上路</a></dt>
            <dd><a href="#">售后流程</a></dd>
            <dd><a href="#">购物流程</a></dd>
            <dd><a href="#">订购方式</a></dd>
        </dl>
        <dl>
            <dt><a href="#">配送与支付</a></dt>
            <dd><a href="#">货到付款区域</a></dd>
            <dd><a href="#">配送支付查询</a></dd>
            <dd><a href="#">支付方式说明</a></dd>
        </dl>
        <dl>
            <dt><a href="#">会员中心</a></dt>
            <dd><a href="#">资金管理</a></dd>
            <dd><a href="#">我的收藏</a></dd>
            <dd><a href="#">我的订单</a></dd>
        </dl>
        <dl>
            <dt><a href="#">服务保证</a></dt>
            <dd><a href="#">退换货原则</a></dd>
            <dd><a href="#">售后服务保证</a></dd>
            <dd><a href="#">产品质量保证</a></dd>
        </dl>
        <dl>
            <dt><a href="#">联系我们</a></dt>
            <dd><a href="#">网站故障报告</a></dd>
            <dd><a href="#">购物咨询</a></dd>
            <dd><a href="#">投诉与建议</a></dd>
        </dl>
        <dl>
            <dt><a href="#">加入我们</a></dt>
            <dd><a href="#">线上商家联系</a></dd>
            <dd><a href="#">线下商家联系</a></dd>
            <dd><a href="#">资讯合作</a></dd>
        </dl>

        <div class="btmbg">
            <div class="btm">
                <img src="<%= request.getContextPath()%>/Picture/b_1.gif" width="98" height="33" /><img src="<%= request.getContextPath()%>/Picture/b_2.gif" width="98" height="33" /><img src="<%= request.getContextPath()%>/Picture/b_3.gif" width="98" height="33" /><img src="<%= request.getContextPath()%>/Picture/b_4.gif" width="98" height="33" /><img src="<%= request.getContextPath()%>/Picture/b_5.gif" width="98" height="33" /><img src="<%= request.getContextPath()%>/Picture/b_6.gif" width="98" height="33" />
            </div>
        </div>
    <!--End Footer End -->    
</div>

</body>
<script src="<%= request.getContextPath()%>/Scripts/zh_cn.js"></script>
</html>