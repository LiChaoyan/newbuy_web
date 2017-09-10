<%--
  Created by IntelliJ IDEA.
  User: win8.1
  Date: 2017/9/10
  Time: 9:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>头部</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />

</head>
<body>
<div class="soubg">
    <div class="sou">
        <!--Begin 所在收货地区 Begin-->
        <span class="s_city_b">
            <span class="fl"><div class="location"></div></span>
            <span class="s_city">
                <span>北京</span>
                <div class="s_city_bg">
                    <div class="s_city_t"></div>
                    <div class="s_city_c">
                        <h2>请选择收货地区</h2>
                        <table border="0" class="c_tab" style="width:235px; margin-top:10px;" cellspacing="0" cellpadding="0">
                          <tr>
                            <th>A</th>
                            <td class="c_h"><span>安徽</span><span>澳门</span></td>
                          </tr>
                          <tr>
                            <th>B</th>
                            <td class="c_h"><span class="c_check">北京</span></td>
                          </tr>
                          <tr>
                            <th>C</th>
                            <td class="c_h"><span>重庆</span></td>
                          </tr>
                          <tr>
                            <th>F</th>
                            <td class="c_h"><span>福建</span></td>
                          </tr>
                          <tr>
                            <th>G</th>
                            <td class="c_h"><span>广东</span><span>广西</span><span>贵州</span><span>甘肃</span></td>
                          </tr>
                          <tr>
                            <th>H</th>
                            <td class="c_h"><span>河北</span><span>河南</span><span>黑龙江</span><span>海南</span><span>湖北</span><span>湖南</span></td>
                          </tr>
                          <tr>
                            <th>J</th>
                            <td class="c_h"><span>江苏</span><span>吉林</span><span>江西</span></td>
                          </tr>
                          <tr>
                            <th>L</th>
                            <td class="c_h"><span>辽宁</span></td>
                          </tr>
                          <tr>
                            <th>N</th>
                            <td class="c_h"><span>内蒙古</span><span>宁夏</span></td>
                          </tr>
                          <tr>
                            <th>Q</th>
                            <td class="c_h"><span>青海</span></td>
                          </tr>
                          <tr>
                            <th>S</th>
                            <td class="c_h"><span>上海</span><span>山东</span><span>山西</span><span>四川</span><span>陕西</span></td>
                          </tr>
                          <tr>
                            <th>T</th>
                            <td class="c_h"><span>台湾</span><span>天津</span></td>
                          </tr>
                          <tr>
                            <th>X</th>
                            <td class="c_h"><span>西藏</span><span>香港</span><span>新疆</span></td>
                          </tr>
                          <tr>
                            <th>Y</th>
                            <td class="c_h"><span>云南</span></td>
                          </tr>
                          <tr>
                            <th>Z</th>
                            <td class="c_h"><span>浙江</span></td>
                          </tr>
                        </table>
                    </div>
                </div>
            </span>
        </span>
        <!--End 所在收货地区 End-->
        <span class="fr">
            <span class="fl">你好，请<a href="<%=request.getContextPath()%>/user/Login.html">登录</a>&nbsp; <a href="<%=request.getContextPath()%>/user/Regist.html" style="color:#ff4e00;">免费注册</a>&nbsp;<!-- |&nbsp;<a href="#">我的订单</a>&nbsp; -->|</span>
            <span class="ss">
                <div class="ss_list">
                    <a href="#">我的</a>
                    <div class="ss_list_bg">
                        <div class="s_city_t"></div>
                        <div class="ss_list_c">
                            <ul>
                                <li><a href="#">我的订单</a></li>
                                <li><a href="#">我的消息</a></li>
                                <li><a href="#">我的收藏夹</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="ss_list">
                    <a href="#">客户服务</a>
                    <div class="ss_list_bg">
                        <div class="s_city_t"></div>
                        <div class="ss_list_c">
                            <ul>
                                <li><a href="#">客户服务</a></li>
                                <li><a href="#">客户服务</a></li>
                                <li><a href="#">客户服务</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="ss_list">
                    <a href="#">网站导航</a>
                    <div class="ss_list_bg">
                        <div class="s_city_t"></div>
                        <div class="ss_list_c">
                            <ul>
                                <li><a href="#">网站导航</a></li>
                                <li><a href="#">网站导航</a></li>
                                <li><a href="#">网站导航</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </span>
            <!-- <span class="fl">|&nbsp;关注我们：</span>
            <span class="s_sh"><a href="#" class="sh1">新浪</a><a href="#" class="sh2">微信</a></span>
            <span class="fr">|&nbsp;<a href="#">手机版&nbsp;<img src="Picture/s_tel.png" align="absmiddle" /></a></span>
        </span> -->
        </span>
    </div>
</div>
<div class="top">
    <div class="logo"><a href="Index"><img src="<%= request.getContextPath()%>/Picture/logo.png" /></a></div>
    <!-- 搜索框 -->
    <div class="search">
        <div class="searchbox">
            <ul id="ul_menus">
                <li><a href="#" class="style_1">商品</a></li>
                <li><a href="#">店铺</a></li>
            </ul>

            <form name="form" method="get" action="CategoryList?productname=?&p=1">
                <div class="search_area" id="search_area">
                    <p style="display: block">
                        <input type="text" name="productname" value=""  class="input_1" placeholder="输入商品名称" />
                        <button onclick="Product()"  class="button_search_1">搜索</button>
                    </p><p><input type="text" name="shopname" value=""  class="input_2" placeholder="输入店铺名称" />
                    <button  onclick="Shop()" class="button_search_2">搜索</button></p>
                </div>
            </form>
            <script type="text/javascript">
                function Product() {
                    form.action="<%=request.getContextPath()%>/CategoryList?productname=?&p=1";
                    form.submit();
                }
                function Shop() {
                    form.action="<%=request.getContextPath()%>/brand?shopname=?&p=1";
                    form.submit();
                }
            </script>

            <span class="fl" style="margin-left: 10px;"><a href="#">咖啡</a><a href="#">iphone 6S</a><a href="#">新鲜美食</a><a href="#">蛋糕</a><a href="#">日用品</a><a href="#">连衣裙</a></span>
        </div></div>
    <div class="i_car">
        <div class="car_t">购物车 [ <span> ${fn:length(xCartList)} </span> ]</div>
        <div class="car_bg">
            <c:if test="${uid==null}">
                <!--Begin 购物车未登录 Begin-->
                <div class="un_login">还未登录！<a href="<%= request.getContextPath()%>/user/Login.html" style="color:#ff4e00;">马上登录</a> 查看购物车！</div>
                <!--End 购物车未登录 End-->
            </c:if>
            <c:if test="${uid!=null}">
            <!--Begin 购物车已登录 Begin-->
                <div class="un_login">已登录！查看购物车！</div>
            <ul class="cars"  style="width:283px;height:83px;overflow: scroll;">
                <c:forEach items="${xCartList}" var="car">
                    <li>
                        <div class="img"><a href="<%=request.getContextPath()%>/product?cid=${car.cid}"><img src="${car.commodity_pic}" width="58" height="58" /></a></div>
                        <div class="name"><a href="<%=request.getContextPath()%>/product?cid=${car.cid}">${car.commodity_name}</a></div>
                        <div class="price"><font color="#ff4e00">￥<span class="car-price">${car.price}</span></font> X<span class="car-count">${car.amount}</span></div>
                    </li>
                </c:forEach>
            </ul>
            <div class="price_sum">共计&nbsp; <font color="#ff4e00">￥</font><span class="car-money"></span></div>
            <div class="price_a"><a href="<%= request.getContextPath()%>/BuyCar">去购物车结算</a></div>
            <!--End 购物车已登录 End-->
            </c:if>
        </div>
    </div>
    <script type="text/javascript">
        var money=0;
        $('.cars li').each(function(index){
            var price=$(this).find(".car-price").text();
            var count=$(this).find(".car-count").text();
            money=money*1+price*1*count*1;
        });
        $('.car-money').text(money);
    </script>
</div>
</body>