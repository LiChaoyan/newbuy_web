<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <link type="text/css" rel="stylesheet" href="<%= request.getContextPath()%>/Css/style.css" />
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/jquery-1.11.1.min_044d0927.js"></script>
    <%--<script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/jquery-1.8.2.min.js"></script>
    --%><script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/n_nav.js"></script>

    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/lrscroll_1.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/menu.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/jquery-1.11.1.min_044d0927.js"></script>

<title>购物车</title>
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
    	<img src="<%= request.getContextPath()%>/Picture/img1.jpg" />        
    </div>
    
    <!--Begin 第一步：查看购物车 Begin -->
    <div class="content mar_20">
    	<table border="0" class="car_tab" style="width:1200px; margin-bottom:50px;" cellspacing="0" cellpadding="0">
          <tr>
            <td class="car_th" width="20">序号</td>
            <td class="car_th" width="490">商品名称</td>
            <td class="car_th" width="140">属性</td>
            <td class="car_th" width="150">购买数量</td>
            <td class="car_th" width="140">单价</td>
            <td class="car_th" width="130">金额</td>
            <td class="car_th" width="150">操作</td>
          </tr>
            <C:forEach items="${CartList}" var="cart" varStatus="cartid">
                <tr>
                    <td><input type="checkbox" CHECKED="checked" name="cbid" class="cart_cbid" value="${cart.cbid}"/></td>
                <td>
                    <div class="c_s_img"><img src="${cart.commodity_pic}" width="73" height="73" /></div>
                    ${cart.commodity_name}
                </td>
                <td align="center">${cart.commodity_select}</td>
                <td align="center">
                    <div class="c_num">
                        <input type="button" value=""  class="car_btn_1" /><%--onclick="jianUpdate1(jq(this));"--%>
                        <input type="text" value="${cart.amount}" name="" class="car_ipt" />
                        <input type="button" value=""  class="car_btn_2" /><%--onclick="addUpdate1(jq(this));"--%>
                    </div>
                </td>
                    <td align="center">￥<span class="cart_price">${cart.price}</span></td>
                <td align="center" style="color:#ff4e00;">￥<span class="cart_money">${cart.price*cart.amount}</span></td>
                <td align="center"><a class="cart_dele">删除</a>&nbsp; &nbsp;<a href="#">加入收藏</a></td><%----%>
                </tr>
            </C:forEach>
          <tr height="70">
          	<td colspan="6" style="font-family:'Microsoft YaHei'; border-bottom:0;">
            	<label class="r_rad"><input type="checkbox" CHECKED="checked" name="clear" id="quxu" /></label><label class="r_txt">全选</label>
                <span class="fr">商品总价：<b style="font-size:22px; color:#ff4e00;">￥<span class="cart_all_money"></span></b></span>
            </td>
          </tr>
          <tr valign="top" height="150">
          	<td colspan="6" align="right">
            	<a href="<%= request.getContextPath()%>/index"><img src="<%= request.getContextPath()%>/Picture/buy1.gif" /></a>&nbsp; &nbsp; <a class="GO_BuyCar_Two" ><img src="<%= request.getContextPath()%>/Picture/buy2.gif" /></a>
            </td>
          </tr>
        </table>
        
    </div>
	<!--End 第一步：查看购物车 End-->
    <script type="text/javascript">
        $(document).ready(function(){
            var tr_num=$(".car_tab tr").length;
            $(".car_tab tr").each(function (index) {
                if (index!=0&&index<tr_num-2&&index%2==0){
                    $(this).addClass("car_tr");
                }
                var cart_price;
                var cart_cbid;
                if(index>0&&index<tr_num-2){
                    cart_price=$(this).find(".cart_price").text();
                    cart_cbid=$(this).find(".cart_cbid").val();<%--首先，JSP是由服务端执行的，EL表达式自然也由服务端解析执行，因此，如果EL所在的脚本在JSP页面内，它是可以获取到值的，这个值在服务器端返回到浏览器端时已经解析完毕，浏览器端只是呈现而已，但是如果在单独的JS文件中写EL，会怎么样呢？这个时候是无法获取的，因为javascript是客户端执行，单独的JS文件不在服务器的解析执行之中，EL是不起任何作用的，这个时候它就等同于普通的字符串--%>
                }
                $(this).find(".car_btn_2").click(function(){
                    var num=$(this).parent().find(".car_ipt").val();
                    num=parseInt(num,10);
                    if(num>=1&&num<5){
                        num=num+1;
                        $(this).parent().find(".car_ipt").val(num);
                        var cart_money=num*cart_price;
                        $(this).parents("tr").find(".cart_money").text(cart_money);
                        var cart_amount=num;
                        var url = "<%=request.getContextPath()%>/BuyCar/change";
                        var args = {"amount": cart_amount,"cbid":cart_cbid, "time": new Date()};
                        $.getJSON(url,args,function(data){});

                        //总价
                        var cart_all_money=0.0;
                        $(".cart_money").each(function(){
                            cart_all_money=cart_all_money+parseFloat($(this).text());
                        });
                        $(".cart_all_money").text(cart_all_money);


                    }
                });
                $(this).find(".car_btn_1").click(function(){
                    var num=$(this).parent().find(".car_ipt").val();
                    if(num>=2){
                        num=num-1;
                        var cart_amount=num;
                        $(this).parent().find(".car_ipt").val(num);
                        var cart_money=num*cart_price;
                        $(this).parents("tr").find(".cart_money").text(cart_money);

                        var url = "<%=request.getContextPath()%>/BuyCar/change";
                        var args = {"amount": cart_amount,"cbid":cart_cbid, "time": new Date()};
                        $.getJSON(url,args,function(data){});

                        //总价
                        var cart_all_money=0;
                        $(".cart_money").each(function(){
                            cart_all_money=cart_all_money+parseFloat($(this).text());
                        });
                        $(".cart_all_money").text(cart_all_money);

                    }
                });
                //删除购物车中商品
                $(this).find(".cart_dele").click(function(){
                    //ShowDiv('MyDiv','fade');
                    var cart_amount=0;
                    window.location.href ="<%= request.getContextPath()%>/BuyCar?amount=0&cbid="+cart_cbid+"";
                });
            });

        //复选框
            $("#quxu").click(function(){
                if ($(this).attr('checked')){
                    $(this).attr('checked',false);
                } else {
                    $(this).attr("checked",true);
                }
            })
        $(".cart_cbid").click(function(){
            if ($(this).attr('checked')){
                $(this).attr('checked',false);
            } else {
                $(this).attr("checked",true);
            }
            //总价
            var cart_all_money=0.0;
            $(".cart_cbid").each(function () {
                if ($(this).attr('checked')) {
                    var cart_money=$(this).parents("tr").find(".cart_money").text();
                    cart_money=parseFloat(cart_money);
                    cart_all_money=cart_all_money+cart_money;
                }
            });
            $(".cart_all_money").text(cart_all_money);
        })

            //全选
        $("#quxu").click(function(){
            if ($(this).attr('checked')){
                $(".cart_cbid").each(function(){
                    $(this).prop('checked', true);
                    $(this).attr('checked', true);
                });
            } else {
                $(".cart_cbid").each(function(){
                    $(this).attr('checked', false);
                  $(this).prop('checked', false);
                });
            }
            //总价
            var cart_all_money=0.0;
            $(".cart_cbid").each(function () {
                if ($(this).attr('checked')) {
                    var cart_money=$(this).parents("tr").find(".cart_money").text();
                    cart_money=parseFloat(cart_money);
                    cart_all_money=cart_all_money+cart_money;
                }
            });
            $(".cart_all_money").text(cart_all_money);
        })

            //总价
            var cart_all_money=0.0;
            $(".cart_cbid").each(function () {
                if ($(this).attr('checked')) {
                    var cart_money=$(this).parents("tr").find(".cart_money").text();
                    cart_money=parseFloat(cart_money);
                    cart_all_money=cart_all_money+cart_money;
                }
            });
            $(".cart_all_money").text(cart_all_money);


            //提交订单
            $(".GO_BuyCar_Two").click(function(){
                var cbids="";
                $(".cart_cbid").each(function () {
                    if ($(this).attr('checked')) {
                        var cbid=$(this).val();
                            cbids=cbids+cbid+",";
                    }
                });
                if(cbids!=null) {
                    window.location.href = "<%= request.getContextPath()%>/BuyCar_Two?cbids="+cbids+"";
                }
            });

        });
    </script>
    
    <!--Begin 弹出层-删除商品 Begin-->
    <div id="fade" class="black_overlay"></div>
    <div id="MyDiv" class="white_content">             
        <div class="white_d">
            <div class="notice_t">
                <span class="fr" style="margin-top:10px; cursor:pointer;" onclick="CloseDiv('MyDiv','fade')"><img src="<%= request.getContextPath()%>/Picture/close.gif" /></span>
            </div>
            <div class="notice_c">
           		
                <table border="0" align="center" style="font-size:16px;" cellspacing="0" cellpadding="0">
                  <tr valign="top">
                    <td>您确定要把该商品移除购物车吗？</td>
                  </tr>
                  <tr height="50" valign="bottom">
                    <td><a href="#" class="b_sure">确定</a><a href="#" class="b_buy">取消</a></td>
                  </tr>
                </table>
                    
            </div>
        </div>
    </div>    
    <!--End 弹出层-删除商品 End-->
    
    
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
</html>
