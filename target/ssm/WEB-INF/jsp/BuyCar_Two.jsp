<%@ page language="java" contentType="text/html; charset=UTF-8"
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
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/n_nav.js"></script>   

    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/menu.js"></script>    

    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/select.js"></script>
    
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/num.js">
    	var jq = jQuery.noConflict();
    </script>     
    
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/shade.js"></script>
    
<title>提交订单</title>
<meta name="keywords" content="小桥双线购项目购物商城" />
<meta name="description" content="线上线下商家加盟的商城" />
</head>
<body>  
<!--Begin Header Begin-->
<jsp:include page="Carheader.jsp"></jsp:include>
<!--End Header End--> 
<!--Begin Menu Begin-->
<div class="menu_bg">
    <div class="menu">
        <jsp:include page="/public_jsp/fenlei.jsp"></jsp:include>
        <div class="m_ad">好礼送不停！</div>
    </div>
</div>
<!--End Menu End--> 
<div class="i_bg">  
    <div class="content mar_20">
    	<img src="<%= request.getContextPath()%>/Picture/img2.jpg" />        
    </div>
    
    <!--Begin 第二步：确认订单信息 Begin -->
    <div class="content mar_20">
    	<div class="two_bg">
        	<div class="two_t">
            	<span class="fr"><a href="<%= request.getContextPath()%>/BuyCar.html">修改</a></span> 商品列表
            </div>
            <table border="0" class="car_tab od-goods" style="width:1110px;" cellspacing="0" cellpadding="0">
              <tr>
                <td class="car_th" width="550">商品名称</td>
                <td class="car_th" width="140">属性</td>
                <td class="car_th" width="150">购买数量</td>
                <td class="car_th" width="130">单价</td>
                <td class="car_th" width="140">小计</td>
              </tr>
                <c:forEach items="${OrderList}" var="Order" varStatus="Orderid">
                    <input type="hidden" value="${Order.oid}" class="od-oid"/>
                    <c:forEach items="${Order.goodsList}" var="goods" varStatus="goodsid">
                    <tr>
                        <td>
                            <div class="c_s_img"><img src="${goods.logo}" width="73" height="73" /></div>
                            ${goods.goodsname}
                        </td>
                        <td align="center">${goods.param}</td>
                        <td align="center" class="od-count">${goods.count}</td>
                        <td align="center">￥${goods.totalprice/goods.count}</td>
                        <td align="center" style="color:#ff4e00;">￥<span class="od-xzong">${goods.totalprice}</span></td>
                    </tr>
                    </c:forEach>
                    <tr>
                        <td colspan="5" align="right" style="font-family:'Microsoft YaHei';">
                            共<sapn>${Order.count}</sapn>件商品 &nbsp;商品总价：￥${Order.totalprice-Order.freight}
                        </td>
                    </tr>
                </c:forEach>
            </table>

            <div class="two_t">
            	<span class="fr"></span>收货人信息
            </div>
            <table border="0" class="peo_tab" style="width:1110px;" cellspacing="0" cellpadding="0">
            <tr>
                <td class="p_td">姓名</td>
                <td>${Address.name}</td>
                <td class="p_td">性别</td>
                <td>${Address.sexword}</td>
                <%--
                <td class="p_td">昵称</td>
                <td>谦谦君子<a href="<%= request.getContextPath()%>/Member_Safehead.html" class="fr" style="color:#ff4e00;">修改</a></td>
                 --%>
              </tr>
              <tr>
               <%-- <td class="p_td" width="160">商品名称</td>
                <td width="395">酒水饮料</td>--%>
                <td class="p_td" width="160">邮政编码</td>
                <td width="395">${Address.zip}</td>
                <td class="p_td" width="160">手机号</td>
                <td width="395">${Address.phone}<a href="<%= request.getContextPath()%>/Member_Safetel" class="fr" style="color:#ff4e00;">修改</a></td>
              </tr>
              <tr>
                <td class="p_td">详细地址</td>
                <td>${Address.address}<a href="<%= request.getContextPath()%>/Member_Safeplace" class="fr" style="color:#ff4e00;">修改</a></td>
              </tr>
            </table>
            
            <div class="two_t">
            	其他信息
            </div>
            <table border="0" class="car_tab" style="width:1110px;" cellspacing="0" cellpadding="0">
              <tr valign="top">
                <td align="right" style="padding-right:0;"><b style="font-size:14px;">订单附言：</b></td>
                <td style="padding-left:0;"><textarea class="add_txt" style="width:860px; height:50px;"></textarea></td>
              </tr>
            </table>   
            <table border="0" style="width:900px; margin-top:20px;" cellspacing="0" cellpadding="0">
              <tr>
                <td align="right">、
                    商品总价: <font color="#ff4e00">￥${ALLprice-Allyun}</font>  + 配送费用: <font color="#ff4e00">￥${Allyun}</font>
                </td>
              </tr>
              <tr height="70">
                <td align="right">
                	<b style="font-size:14px;">应付款金额：<span style="font-size:22px; color:#ff4e00;">￥${ALLprice}</span></b>
                </td>
              </tr>
              <tr height="70">
                <td align="right"><a class="od-confirm" onclick="ShowDiv_1('MyDiv1','fade1')"><img src="<%= request.getContextPath()%>/Picture/btn_sure.gif" /></a></td>
              </tr>  
            </table>
        </div>
    </div>

    <div id="fade1" class="black_overlay"></div>
    <div id="MyDiv1" class="white_content">             
        <div class="white_d">
            <div class="notice_t">
                <span class="fr" style="margin-top:10px; cursor:pointer;" onclick="CloseDiv_1('MyDiv1','fade1')"><img src="<%= request.getContextPath()%>/Picture/close.gif" /></span>
            </div>
            <div class="notice_c">               
                <div class="two_t" style="">
                请选择支付方式:
                </div>
                <ul class="pay">
                    <li class="checked">余额支付<div class="ch_img"></div></li>
                    <li>货到付款<div class="ch_img"></div></li>
                    <li>支付宝<div class="ch_img"></div></li>
                </ul>
                <a><button class="fr od-fu" style="margin-right: 70px;width: 60px;height: 30px;">付款</button></a>
            </div>
        </div>
    </div>
	<!--End 第二步：确认订单信息 End-->
    <script type="text/javascript">

            //付款方式
            $(".pay li").click(function(){
                $(this).parent("ul").find(".checked").removeClass("checked");
                $(this).addClass("checked");
            })

            //获取订单oid

            //付款
            $(".od-fu").click(function(){
                var oid="";
                $(".od-oid").each(function(){
                    oid=oid+$(this).val()+",";
                });
                var li=$(".pay").find(".checked");
                var paytype=li.text();
                var leaveword=$(".add_txt").val();
                //alert(oid+" "+paytype);
                //提交订单()
                 window.location.href ="<%= request.getContextPath()%>/BuyCar_Three?oids="+oid+"&paytype="+paytype+"&leaveword="+leaveword+""

            });
    </script>
    
    <!--Begin Footer Begin -->
    <div class="b_btm_bg bg_color">
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
                <td><h2>满38包邮</h2>满38包邮 免运费</td>
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
                <td><h2>准时送达</h2>收货时间由你做主</td>
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
            <dd><a href="#">隐私声明</a></dd>
            <dd><a href="#">推荐分享说明</a></dd>
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
        <div class="b_tel_bg">
        	<a href="#" class="b_sh1">新浪微博</a>            
        	<a href="#" class="b_sh2">腾讯微博</a>
            <p>
            服务热线：<br />
            <span>400-123-4567</span>
            </p>
        </div>
        <div class="b_er">
            <div class="b_er_c"><img src="<%= request.getContextPath()%>/Picture/er.gif" width="118" height="118" /></div>
            <img src="<%= request.getContextPath()%>/Picture/ss.png" />
        </div>
    </div>    
    <div class="btmbg">
		<div class="btm">
        	备案/许可证编号：蜀ICP备12009302号-1-www.dingguagua.com   Copyright © 2015-2018 尤洪商城网 All Rights Reserved. 复制必究 , Technical Support: Dgg Group <br />
            <img src="<%= request.getContextPath()%>/Picture/b_1.gif" width="98" height="33" /><img src="<%= request.getContextPath()%>/Picture/b_2.gif" width="98" height="33" /><img src="<%= request.getContextPath()%>/Picture/b_3.gif" width="98" height="33" /><img src="<%= request.getContextPath()%>/Picture/b_4.gif" width="98" height="33" /><img src="<%= request.getContextPath()%>/Picture/b_5.gif" width="98" height="33" /><img src="<%= request.getContextPath()%>/Picture/b_6.gif" width="98" height="33" />
        </div>    	
    </div>
    <!--End Footer End -->    
</div>

</body>
</html>