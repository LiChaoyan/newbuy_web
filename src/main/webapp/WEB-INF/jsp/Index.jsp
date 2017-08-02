<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link type="text/css" rel="stylesheet" href="<%= request.getContextPath()%>//Css/style.css" />
    <link href="<%= request.getContextPath()%>/Images/icon.ico" rel="<%= request.getContextPath()%>/shortcut icon">
    <!--[if IE 6]>
    <script src="<%= request.getContextPath()%>/Scripts/iepng.js" type="text/javascript"></script>
        <script type="text/javascript">
           EvPNG.fix('div, ul, img, li, input, a'); 
        </script>
    <![endif]-->    
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/jquery-1.11.1.min_044d0927.js"></script>
	<script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/jquery.bxslider_e88acd1b.js"></script>
    
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/menu.js"></script>
        
	<script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/select.js"></script>
    
	<script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/lrscroll.js"></script>
    
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/iban.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/fban.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/f_ban.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/mban.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/bban.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/hban.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/tban.js"></script>
    
	<script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/lrscroll_1.js"></script>
    <script type="text/javascript">
        $(function() {
            $("#ul_menus").children("li").click(function(){ //鼠标悬浮菜单标签
                var index = $(this).index();//获取当前索引，从0开始
                var ord = index+1; //获取当前排序，从1开始
                $("#ul_menus").find("a").removeClass();//去除所有菜单的样式
                $(this).children("a").addClass("style_"+ord);//添加当前菜单样式
                $("#search_area").children("p").hide();//隐藏所有搜索框
                $("#search_area").children("p").eq(index).show();//显示当前菜单对应索引的搜索框
            })
        });


    </script>

    <style type="text/css">


        /*---------------首页（合作商品）---------------*/
        .like{
            width:1198px; height:300px; overflow:hidden; background-color:#FFF; border:1px solid #eaeaea; border-top:0;
        }
        .like #featureContainer1{
            width:1198px; height:300px; overflow:hidden;
        }
        .like #feature1{
            width:1198px; height:300px; overflow:hidden; position:relative;
        }
        .like #feature1 .button{
            width:1198px; position:absolute; left:0px; top:0px;
        }
        .like #feature1 .l_prev{
            width:32px; height:60px; overflow:hidden; background:url(../Images/b_left.png) no-repeat center top; display:block; text-indent:-9999px; float:left; position:absolute; left:0px; top:100px;
        }
        .like #feature1 .l_next{
            width:32px; height:60px; overflow:hidden; background:url(../Images/b_right.png) no-repeat center top; display:block; text-indent:-9999px; float:left; position:absolute; right:0px; top:100px;
        }
        .like .featureUL{
            width:2800px; height:300px; overflow:hidden; float:left; position:relative;
        }
        .like .featureBox{
            width:238px; height:300px; overflow:hidden; background:url(../Images/line.gif) no-repeat right 122px; float:left; border-left:1px solid #eaeaea; border-right:1px solid #eaeaea; position:relative;
        }
        .like #botton-scroll{
            width:1198px; height:300px; overflow:hidden; float:left; z-index:0;
        }
        .like #block1{
            width:1198px; height:300px; overflow:hidden; position:relative; z-index:0;
        }
        .like #block1 .box {
            width:238px; height:300px; overflow:hidden; margin:0 auto; position:relative;
        }
        .like #block1 .box .h_icon{
            width:50px; height:50px; overflow:hidden; position:absolute; left:10px; top:10px; z-index:100;
        }
        .like #block1 .box .imgbg{
            width:160px; height:136px; margin-top:5px;
        }
        .like #block1 .box .imgbg img{
            -webkit-transition:all .5s; -moz-transition:all .5s; -o-transform:all .5s; -ms-transform:all .5s; transition:all .5s;
        }
        .like #block1 .box .imgbg:hover img{
            -moz-transform:scale(1.1,1.1); -webkit-transform:scale(1.1,1.1); -o-transform:scale(1.1,1.1); -ms-transform:scale(1.1,1.1); transform:scale(1.1,1.1);
        }
        .like #block1 .box .name{
            overflow:hidden; color:#888888; font-size:12px; text-align:center; margin-top:10px;
        }
        .like #block1 .box .name h2{
            height:20px; line-height:20px; overflow:hidden; color:#555555; font-size:16px; text-align:center;
        }
        .like #block1 .box .name h2 a{
            color:#555555;
        }
        .like #block1 .box .name h2 a:hover{
            color:#555555; text-decoration:underline;
        }
        .like #block1 .box .name a{
            color:#888888;
        }
        .like #block1 .box .name a:hover{
            color:#888888; text-decoration:underline;
        }
        /*.like #block1 .box .price{
            height:30px; line-height:30px; overflow:hidden; color:#999999; text-align:center; text-transform:uppercase;
        }*/
        .like #block1 .box .price font{
            color:#ff4e00; font-size:14px;
        }
        .like #block1 .box .price span{
            font-size:20px;
        }

    </style>



    <title>店铺首页</title>

<meta name="keywords" content="小桥双线购项目购物商城" />
<meta name="description" content="线上线下商家加盟的商城" />
</head>
<body>  
<!--Begin Header Begin-->
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
            <span class="fl">你好，请<a href="Login.jsp">登录</a>&nbsp; <a href="Regist.jsp" style="color:#ff4e00;">免费注册</a>&nbsp;<!-- |&nbsp;<a href="#">我的订单</a>&nbsp; -->|</span>
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
    </div>
</div>
<div class="top">
    <div class="logo"><a href="Index.jsp"><img src="<%= request.getContextPath()%>/Picture/logo.png" /></a></div>
    <!-- 搜索框 -->
    <div class="search">
    <div class="searchbox">
        <ul id="ul_menus">
            <li><a href="#" class="style_1">商品</a></li>
            <li><a href="#">店铺</a></li>
        </ul>
        <form>
            <div class="search_area" id="search_area">
                <p style="display: block">
                    <input type="text" name="productname" value="" id="" class="input_1" placeholder="输入商品名称" />
                    <button onclick="Product()"  class="button_search_1">搜索</button>
                </p><p><input type="text" name="shopname" value="" id="" class="input_2" placeholder="输入店铺名称" />
                <button  onclick="Shop()" class="button_search_2">搜索</button></p>
            </div>
        </form>
        <script type="text/javascript">
            function Product() {
                form.action="CategoryList?productname=?&p=1";
                form.submit();
            }
            function Shop() {
                form.action="brand?shopname=?&p=1";
                form.submit();
            }
        </script>
        <!-- <div>
        <form>
            <p style="display: block;"><input type="text" value="" class="s_ipt input_1" /></p>
            <p><input type="submit" value="搜索" class="s_btn" /></p>
        </form> 
        </div>  -->                    
        <span class="fl" style="margin-left: 10px;"><a href="#">咖啡</a><a href="#">iphone 6S</a><a href="#">新鲜美食</a><a href="#">蛋糕</a><a href="#">日用品</a><a href="#">连衣裙</a></span>
    </div></div>
    <div class="i_car">
        <div class="car_t">购物车 [ <span>3</span> ]</div>
        <div class="car_bg">
            <!--Begin 购物车未登录 Begin-->
            <div class="un_login">还未登录！<a href="Login.jsp" style="color:#ff4e00;">马上登录</a> 查看购物车！</div>
            <!--End 购物车未登录 End-->
            <!--Begin 购物车已登录 Begin-->
            <ul class="cars">
                <li>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/car1.jpg" width="58" height="58" /></a></div>
                    <div class="name"><a href="#">法颂浪漫梦境50ML 香水女士持久清新淡香 送2ML小样3只</a></div>
                    <div class="price"><font color="#ff4e00">￥399</font> X1</div>
                </li>
                <!-- <li>
                    <div class="img"><a href="#"><img src="Picture/car2.jpg" width="58" height="58" /></a></div>
                    <div class="name"><a href="#">香奈儿（Chanel）邂逅活力淡香水50ml</a></div>
                    <div class="price"><font color="#ff4e00">￥399</font> X1</div>
                </li>
                <li>
                    <div class="img"><a href="#"><img src="Picture/car2.jpg" width="58" height="58" /></a></div>
                    <div class="name"><a href="#">香奈儿（Chanel）邂逅活力淡香水50ml</a></div>
                    <div class="price"><font color="#ff4e00">￥399</font> X1</div>
                </li> -->
            </ul>
            <div class="price_sum">共计&nbsp; <font color="#ff4e00">￥</font><span>1058</span></div>
            <div class="price_a"><a href="#">去购物车结算</a></div>
            <!--End 购物车已登录 End-->
        </div>
    </div>
</div>
<!--End Header End--> 
<!--Begin Menu Begin-->
<div class="menu_bg">
	<div class="menu">
    	<!--Begin 商品分类详情 Begin-->    
    	<div class="nav">
        	<div class="nav_t">全部商品分类</div>
            <div class="leftNav">
                <ul>
                    <%!  int pngnum=0; %>
                    <c:forEach items="${List}" var="BigCategory">
                        <%  pngnum++;%>
                        <li>
                            <div class="fj">
                                <span class="n_img"><span></span><img src="<%= request.getContextPath()%>/Picture/nav<%=pngnum%>.png"/></span>
                                <span class="fl">${BigCategory.big}</span>
                            </div>
                            <div class="zj" style="top:0px;">
                                <div class="zj_l">
                                    <c:forEach items="${BigCategory.smallCategoryList}" var="SmallCategory">
                                        <div class="zj_l_c">
                                            <h2>${SmallCategory.small}</h2>
                                            <c:forEach items="${SmallCategory.categoryList}" var="Category">
                                                <a href="<%=request.getContextPath()%>/CategoryList?cgid=${Category.cgid}&p=1">${Category.secend}</a>|
                                            </c:forEach>
                                        </div>
                                    </c:forEach>
                                </div>
                                <div class="zj_r">
                                    <a href="#"><img src="<%= request.getContextPath()%>/Picture/n_img1.jpg" width="236" height="200" /></a>
                                    <a href="#"><img src="<%= request.getContextPath()%>/Picture/n_img2.jpg" width="236" height="200" /></a>
                                </div>
                            </div>
                        </li>
                    </c:forEach>
                </ul>            
            </div>
        </div>  
        <!--End 商品分类详情 End-->                                                     
    	<ul class="menu_r">                                                                                                                                               
        	<li><a href="Index.jsp">首页</a></li>
            <li><a href="Food.html">美食</a></li>
            <li><a href="Fresh.html">生鲜</a></li>
            <li><a href="HomeDecoration.html">家居</a></li>
            <li><a href="SuitDress.html">女装</a></li>
            <li><a href="MakeUp.html">美妆</a></li>
            <li><a href="Digital.html">数码</a></li>
            <li><a href="GroupBuying.html">团购</a></li>
        </ul>
        <div class="m_ad">活动资讯&nbsp;|&nbsp;|&nbsp;旺铺推荐</div>
    </div>
</div>
<!--End Menu End--> 
<div class="i_bg bg_color">
	<div class="i_ban_bg">
		<!--Begin Banner Begin-->
    	<div class="banner">    	
            <div class="top_slide_wrap">
                <ul class="slide_box bxslider">
                    <li><img src="<%= request.getContextPath()%>/Picture/ban3.jpg" width="740" height="401" /></li>
                    <li><img src="<%= request.getContextPath()%>/Picture/ban2.jpg" width="740" height="401" /></li>
                    <li><img src="<%= request.getContextPath()%>/Picture/ban1.jpg" width="740" height="401" /></li>
                </ul>	
                <div class="op_btns clearfix">
                    <a href="#" class="op_btn op_prev"><span></span></a>
                    <a href="#" class="op_btn op_next"><span></span></a>
                </div>        
            </div>
        </div>
        <script type="text/javascript">
        //var jq = jQuery.noConflict();
        (function(){
            $(".bxslider").bxSlider({
                auto:true,
                prevSelector:jq(".top_slide_wrap .op_prev")[0],nextSelector:jq(".top_slide_wrap .op_next")[0]
            });
        })();
        </script>
        <!--End Banner End-->
        <div class="inews">
        	<div class="news_t">
            	<span class="fr"><a href="#">更多 ></a></span>活动资讯
            </div>
            <ul>
            	<li><span>[ 特惠 ]</span><a href="#">直销好货 · 海量新款！</a></li>
            	<li><span>[ 公告 ]</span><a href="#">好奇宝贝成长新品上市</a></li>
            	<li><span>[ 特惠 ]</span><a href="#">大牌闪购 · 抢！</a></li>
            	<!-- <li><span>[ 公告 ]</span><a href="#">发福利 买车就抢千元油卡</a></li>
            	<li><span>[ 公告 ]</span><a href="#">家电低至五折</a></li> -->
            </ul>
            <div class="charge_t news_t"><span class="fr"><a href="#">更多 ></a></span>
            	旺铺推荐<div class="ch_t_icon"></div>
            </div>
            <form>
            <div class="hot">
                <img src="<%= request.getContextPath()%>/Picture/hot1.png">
                <img src="<%= request.getContextPath()%>/Picture/hot2.png">
                <img src="<%= request.getContextPath()%>/Picture/hot3.png">
            </div>
            <!-- <table border="0" style="width:205px; margin-top:10px;" cellspacing="0" cellpadding="0">
              <tr height="35">
                <td width="33">号码</td>
                <td><input type="text" value="" class="c_ipt" /></td>
              </tr>
              <tr height="35">
                <td>面值</td>
                <td>
                	<select class="jj" name="city">
                      <option value="0" selected="selected">100元</option>
                      <option value="1">50元</option>
                      <option value="2">30元</option>
                      <option value="3">20元</option>
                      <option value="4">10元</option>
                    </select>
                    <span style="color:#ff4e00; font-size:14px;">￥99.5</span>
                </td>
              </tr>
              <tr height="35">
                <td colspan="2"><input type="submit" value="立即充值" class="c_btn" /></td>
              </tr>
            </table> -->
            </form>
        </div>
    </div>
    <!--Begin 热门商品 Begin-->
    <div class="content mar_10">
    	<div class="h_l_img">
        	<div class="img"><img src="<%= request.getContextPath()%>/Picture/l_img.jpg" width="188" height="188" /></div>
            <div class="pri_bg">
                <span class="price fl">￥53.00</span>
                <span class="fr">16R</span>
            </div>
        </div>
        <div class="hot_pro">        	
        	<div id="featureContainer">
                <div id="feature">
                    <div id="block">
                        <div id="botton-scroll">
                            <ul class="featureUL">
                                <li class="featureBox">
                                    <div class="box">
                                    	<div class="h_icon"><img src="<%= request.getContextPath()%>/Picture/hot.png" width="50" height="50" /></div>
                                        <div class="imgbg">
                                        	<a href="#"><img src="<%= request.getContextPath()%>/Picture/hot1.jpg" width="160" height="136" /></a>
                                        </div>                                        
                                        <div class="name">
                                        	<a href="#">
                                            <h2>德国进口</h2>
                                            德亚全脂纯牛奶200ml*48盒
                                            </a>
                                        </div>
                                        <div class="price">
                                            <font>￥<span>189</span></font> &nbsp; 26R
                                        </div>
                                    </div>
                                </li>
                                <li class="featureBox">
                                    <div class="box">
                                        <div class="h_icon"><img src="<%= request.getContextPath()%>/Picture/hot.png" width="50" height="50" /></div>
                                        <div class="imgbg">
                                        	<a href="#"><img src="<%= request.getContextPath()%>/Picture/hot2.jpg" width="160" height="136" /></a>
                                        </div>                                        
                                        <div class="name">
                                        	<a href="#">
                                            <h2>iphone 6S</h2>
                                            Apple/苹果 iPhone 6s Plus公开版
                                            </a>
                                        </div>
                                        <div class="price">
                                            <font>￥<span>5288</span></font> &nbsp; 25R
                                        </div>
                                    </div>
                                </li>
                                <li class="featureBox">
                                    <div class="box">
                                        <div class="h_icon"><img src="<%= request.getContextPath()%>/Picture/hot.png" width="50" height="50" /></div>
                                        <div class="imgbg">
                                        	<a href="#"><img src="<%= request.getContextPath()%>/Picture/hot3.jpg" width="160" height="136" /></a>
                                        </div>                                        
                                        <div class="name">
                                        	<a href="#">
                                            <h2>倩碧特惠组合套装</h2>
                                            倩碧补水组合套装8折促销
                                            </a>
                                        </div>
                                        <div class="price">
                                            <font>￥<span>368</span></font> &nbsp; 18R
                                        </div>
                                    </div>
                                </li>
                                <li class="featureBox">
                                    <div class="box">
                                        <div class="h_icon"><img src="<%= request.getContextPath()%>/Picture/hot.png" width="50" height="50" /></div>
                                        <div class="imgbg">
                                        	<a href="#"><img src="<%= request.getContextPath()%>/Picture/hot4.jpg" width="160" height="136" /></a>
                                        </div>                                        
                                        <div class="name">
                                        	<a href="#">
                                            <h2>品利特级橄榄油</h2>
                                            750ml*4瓶装组合 西班牙原装进口
                                            </a>
                                        </div>
                                        <div class="price">
                                            <font>￥<span>280</span></font> &nbsp; 30R
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <a class="h_prev" href="javascript:void();">Previous</a>
                    <a class="h_next" href="javascript:void();">Next</a>
                </div>
            </div>
        </div>
    </div>
    <!--Begin 限时特卖 Begin-->
    <div class="i_t mar_10">
    	<span class="fl">限时特卖</span>
        <span class="i_mores fr"><a href="#">更多特卖</a></span>
    </div>
    <div class="content">
    	<div class="i_sell">
            <div id="imgPlay">
                <ul class="imgs" id="actor">
                    <li><a href="#"><img src="<%= request.getContextPath()%>/Picture/tm_r.jpg" width="211" height="357" /></a></li>
                    <li><a href="#"><img src="<%= request.getContextPath()%>/Picture/tm_r.jpg" width="211" height="357" /></a></li>
                    <li><a href="#"><img src="<%= request.getContextPath()%>/Picture/tm_r.jpg" width="211" height="357" /></a></li>
                </ul>
                <div class="previ">上一张</div>
                <div class="nexti">下一张</div>
            </div>        
        </div>
        <div class="sell_right">
        	<div class="sell_1">
            	<div class="s_img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/tm_1.jpg" width="185" height="155" /></a></div>
            	<div class="s_price">￥<span>89</span></div>
                <div class="s_name">
                	<h2><a href="#">沙宣洗发水</a></h2>
                    倒计时：<span>1200</span> 时 <span>30</span> 分 <span>28</span> 秒
                </div>
            </div>
            <div class="sell_2">
            	<div class="s_img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/tm_2.jpg" width="185" height="155" /></a></div>
            	<div class="s_price">￥<span>289</span></div>
                <div class="s_name">
                	<h2><a href="#">德芙巧克力</a></h2>
                    倒计时：<span>1200</span> 时 <span>30</span> 分 <span>28</span> 秒
                </div>
            </div>
            <div class="sell_b1">
            	<div class="sb_img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/tm_b1.jpg" width="242" height="356" /></a></div>
            	<div class="s_price">￥<span>289</span></div>
                <div class="s_name">
                	<h2><a href="#">东北大米</a></h2>
                    倒计时：<span>1200</span> 时 <span>30</span> 分 <span>28</span> 秒
                </div>
            </div>
            <div class="sell_3">
            	<div class="s_img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/tm_3.jpg" width="185" height="155" /></a></div>
            	<div class="s_price">￥<span>289</span></div>
                <div class="s_name">
                	<h2><a href="#">迪奥香水</a></h2>
                    倒计时：<span>1200</span> 时 <span>30</span> 分 <span>28</span> 秒
                </div>
            </div>
            <div class="sell_4">
            	<div class="s_img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/tm_4.jpg" width="185" height="155" /></a></div>
            	<div class="s_price">￥<span>289</span></div>
                <div class="s_name">
                	<h2><a href="#">美妆</a></h2>
                    倒计时：<span>1200</span> 时 <span>30</span> 分 <span>28</span> 秒
                </div>
            </div>
            <div class="sell_b2">
            	<div class="sb_img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/tm_b2.jpg" width="242" height="356" /></a></div>
            	<div class="s_price">￥<span>289</span></div>
                <div class="s_name">
                	<h2><a href="#">美妆</a></h2>
                    倒计时：<span>1200</span> 时 <span>30</span> 分 <span>28</span> 秒
                </div>
            </div>
        </div>
    </div>
    <!--End 限时特卖 End-->
    <div class="content mar_20">
    	<img src="<%= request.getContextPath()%>/Picture/mban_1.jpg" width="1200" height="110" />
    </div>
	<!--Begin 进口 生鲜 Begin-->
    <div class="i_t mar_10">
    	<span class="floor_num">1F</span>
    	<span class="fl">进口 <b>·</b> 生鲜</span>                
        <span class="i_mores fr"><a href="#">更多</a></span>
    </div>
    <div class="content">
    	<div class="fresh_left">
        	<div class="fre_ban">
            	<div id="imgPlay1">
                    <ul class="imgs" id="actor1">
                        <li><a href="#"><img src="<%= request.getContextPath()%>/Picture/fre_r.jpg" width="211" height="286" /></a></li>
                        <li><a href="#"><img src="<%= request.getContextPath()%>/Picture/fre_r.jpg" width="211" height="286" /></a></li>
                        <li><a href="#"><img src="<%= request.getContextPath()%>/Picture/fre_r.jpg" width="211" height="286" /></a></li>
                    </ul>
                    <div class="prevf">上一张</div>
                    <div class="nextf">下一张</div> 
                </div>   
            </div>
            <div class="fresh_txt">
            	<div class="fresh_txt_c">
                	<a href="#">进口水果</a><a href="#">奇异果</a><a href="#">西柚</a><a href="#">海鲜水产</a><a href="#">品质牛肉</a><a href="#">奶粉</a><a href="#">鲜活禽蛋</a><a href="#">进口酒</a><a href="#">进口奶粉</a><a href="#">鲜活禽蛋</a>
                </div>
            </div>
        </div>
        <div class="fresh_mid">
        	<ul>
            	<li>
                	<div class="name"><a href="#">新鲜美味  进口美食</a></div>
                    <div class="price">
                    	<font>￥<span>198.00</span></font> &nbsp; 26R
                    </div>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/fre_1.jpg" width="185" height="155" /></a></div>
                </li>
                <li>
                	<div class="name"><a href="#">新鲜美味  进口美食</a></div>
                    <div class="price">
                    	<font>￥<span>198.00</span></font> &nbsp; 26R
                    </div>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/fre_2.jpg" width="185" height="155" /></a></div>
                </li>
                <li>
                	<div class="name"><a href="#">新鲜美味  进口美食</a></div>
                    <div class="price">
                    	<font>￥<span>198.00</span></font> &nbsp; 26R
                    </div>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/fre_3.jpg" width="185" height="155" /></a></div>
                </li>
                <li>
                	<div class="name"><a href="#">新鲜美味  进口美食</a></div>
                    <div class="price">
                    	<font>￥<span>198.00</span></font> &nbsp; 26R
                    </div>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/fre_4.jpg" width="185" height="155" /></a></div>
                </li>
                <li>
                	<div class="name"><a href="#">新鲜美味  进口美食</a></div>
                    <div class="price">
                    	<font>￥<span>198.00</span></font> &nbsp; 26R
                    </div>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/fre_5.jpg" width="185" height="155" /></a></div>
                </li>
                <li>
                	<div class="name"><a href="#">新鲜美味  进口美食</a></div>
                    <div class="price">
                    	<font>￥<span>198.00</span></font> &nbsp; 26R
                    </div>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/fre_6.jpg" width="185" height="155" /></a></div>
                </li>
            </ul>
        </div>
        <div class="fresh_right">
        	<ul>
            	<li><a href="#"><img src="<%= request.getContextPath()%>/Picture/fre_b1.jpg" width="260" height="220" /></a></li>
                <li><a href="#"><img src="<%= request.getContextPath()%>/Picture/fre_b2.jpg" width="260" height="220" /></a></li>
            </ul>
        </div>
    </div>    
    <!--End 进口 生鲜 End-->
    <!--Begin 食品饮料 Begin-->
    <div class="i_t mar_10">
    	<span class="floor_num">2F</span>
    	<span class="fl">食品饮料</span>
        <span class="i_mores fr"><a href="#">更多</a></span>                                
        <!-- <span class="i_mores fr"><a href="#">咖啡</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">休闲零食</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">饼干糕点</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">冲饮谷物</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">营养保健</a></span> -->
    </div>
    <div class="content">
    	<div class="food_left">
        	<div class="food_ban">
            	<div id="imgPlay2">
                    <ul class="imgs" id="actor2">
                        <li><a href="#"><img src="<%= request.getContextPath()%>/Picture/food_r.jpg" width="211" height="286" /></a></li>
                        <li><a href="#"><img src="<%= request.getContextPath()%>/Picture/food_r.jpg" width="211" height="286" /></a></li>
                        <li><a href="#"><img src="<%= request.getContextPath()%>/Picture/food_r.jpg" width="211" height="286" /></a></li>
                    </ul>
                    <div class="prev_f">上一张</div>
                    <div class="next_f">下一张</div> 
                </div>   
            </div>
            <div class="fresh_txt">
            	<div class="fresh_txt_c">
                	<a href="#">饼干糕点</a><a href="#">休闲零食</a><a href="#">饮料果汁</a><a href="#">牛奶乳品</a><a href="#">冲饮谷物</a><a href="#">营养保健</a><a href="#">冲饮谷物</a><a href="#">营养保健</a>
                </div>
            </div>
        </div>
        <div class="fresh_mid">
        	<ul>
            	<li>
                	<div class="name"><a href="#">莫斯利安酸奶</a></div>
                    <div class="price">
                    	<font>￥<span>96.00</span></font> &nbsp; 25R
                    </div>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/food_1.jpg" width="185" height="155" /></a></div>
                </li>
                <li>
                	<div class="name"><a href="#">莫斯利安酸奶</a></div>
                    <div class="price">
                    	<font>￥<span>96.00</span></font> &nbsp; 25R
                    </div>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/food_2.jpg" width="185" height="155" /></a></div>
                </li>
                <li>
                	<div class="name"><a href="#">莫斯利安酸奶</a></div>
                    <div class="price">
                    	<font>￥<span>96.00</span></font> &nbsp; 25R
                    </div>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/food_3.jpg" width="185" height="155" /></a></div>
                </li>
                <li>
                	<div class="name"><a href="#">莫斯利安酸奶</a></div>
                    <div class="price">
                    	<font>￥<span>96.00</span></font> &nbsp; 25R
                    </div>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/food_4.jpg" width="185" height="155" /></a></div>
                </li>
                <li>
                	<div class="name"><a href="#">莫斯利安酸奶</a></div>
                    <div class="price">
                    	<font>￥<span>96.00</span></font> &nbsp; 25R
                    </div>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/food_5.jpg" width="185" height="155" /></a></div>
                </li>
                <li>
                	<div class="name"><a href="#">莫斯利安酸奶</a></div>
                    <div class="price">
                    	<font>￥<span>96.00</span></font> &nbsp; 25R
                    </div>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/food_6.jpg" width="185" height="155" /></a></div>
                </li>
            </ul>
        </div>
        <div class="fresh_right">
        	<ul>
            	<li><a href="#"><img src="<%= request.getContextPath()%>/Picture/food_b1.jpg" width="260" height="220" /></a></li>
                <li><a href="#"><img src="<%= request.getContextPath()%>/Picture/food_b2.jpg" width="260" height="220" /></a></li>
            </ul>
        </div>
    </div>    
    <!--End 食品饮料 End-->
    <!--Begin 个人美妆 Begin-->
    <div class="i_t mar_10">
    	<span class="floor_num">3F</span>
    	<span class="fl">个人美妆</span>                                
        <span class="i_mores fr"><a href="#">更多</a></span>
        <!-- <span class="i_mores fr"><a href="#">洗发护发</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">面膜</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">洗面奶</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">香水</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">沐浴露</a></span>                 -->
    </div>
    <div class="content">
    	<div class="make_left">
        	<div class="make_ban">
            	<div id="imgPlay3">
                    <ul class="imgs" id="actor3">
                        <li><a href="#"><img src="<%= request.getContextPath()%>/Picture/make_r.jpg" width="211" height="286" /></a></li>
                        <li><a href="#"><img src="<%= request.getContextPath()%>/Picture/make_r.jpg" width="211" height="286" /></a></li>
                        <li><a href="#"><img src="<%= request.getContextPath()%>/Picture/make_r.jpg" width="211" height="286" /></a></li>
                    </ul>
                    <div class="prev_m">上一张</div>
                    <div class="next_m">下一张</div> 
                </div>   
            </div>
            <div class="fresh_txt">
            	<div class="fresh_txt_c">
                	<a href="#">洗发护发</a><a href="#">牙刷牙膏</a><a href="#">面膜</a><a href="#">补水面膜</a><a href="#">香水</a><a href="#">面霜</a><a href="#">洗面奶</a><a href="#">脱毛膏</a><a href="#">沐浴露</a>
                </div>
            </div>
        </div>
        <div class="fresh_mid">
        	<ul>
            	<li>
                	<div class="name"><a href="#">美宝莲粉饼</a></div>
                    <div class="price">
                    	<font>￥<span>260.00</span></font> &nbsp; 16R
                    </div>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/make_1.jpg" width="185" height="155" /></a></div>
                </li>
                <li>
                	<div class="name"><a href="#">美宝莲粉饼</a></div>
                    <div class="price">
                    	<font>￥<span>260.00</span></font> &nbsp; 16R
                    </div>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/make_2.jpg" width="185" height="155" /></a></div>
                </li>
                <li>
                	<div class="name"><a href="#">美宝莲粉饼</a></div>
                    <div class="price">
                    	<font>￥<span>260.00</span></font> &nbsp; 16R
                    </div>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/make_3.jpg" width="185" height="155" /></a></div>
                </li>
                <li>
                	<div class="name"><a href="#">美宝莲粉饼</a></div>
                    <div class="price">
                    	<font>￥<span>260.00</span></font> &nbsp; 16R
                    </div>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/make_4.jpg" width="185" height="155" /></a></div>
                </li>
                <li>
                	<div class="name"><a href="#">美宝莲粉饼</a></div>
                    <div class="price">
                    	<font>￥<span>260.00</span></font> &nbsp; 16R
                    </div>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/make_5.jpg" width="185" height="155" /></a></div>
                </li>
                <li>
                	<div class="name"><a href="#">美宝莲粉饼</a></div>
                    <div class="price">
                    	<font>￥<span>260.00</span></font> &nbsp; 16R
                    </div>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/make_6.jpg" width="185" height="155" /></a></div>
                </li>
            </ul>
        </div>
        <div class="fresh_right">
        	<ul>
            	<li><a href="#"><img src="<%= request.getContextPath()%>/Picture/make_b1.jpg" width="260" height="220" /></a></li>
                <li><a href="#"><img src="<%= request.getContextPath()%>/Picture/make_b2.jpg" width="260" height="220" /></a></li>
            </ul>
        </div>
    </div>    
    <!--End 个人美妆 End-->
    <div class="content mar_20">
    	<img src="<%= request.getContextPath()%>/Picture/mban_1.jpg" width="1200" height="110" />
    </div>
    <!--Begin 母婴玩具 Begin-->
    <div class="i_t mar_10">
    	<span class="floor_num">4F</span>
    	<span class="fl">母婴玩具</span>                                
        <span class="i_mores fr"><a href="#">更多</a></span>
        <!-- <span class="i_mores fr"><a href="#">营养品</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">孕妈背带裤</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">儿童玩具</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">婴儿床</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">喂奶器</a></span>                                -->
    </div>
    <div class="content">
    	<div class="baby_left">
        	<div class="baby_ban">
            	<div id="imgPlay4">
                    <ul class="imgs" id="actor4">
                        <li><a href="#"><img src="<%= request.getContextPath()%>/Picture/baby_r.jpg" width="211" height="286" /></a></li>
                        <li><a href="#"><img src="<%= request.getContextPath()%>/Picture/baby_r.jpg" width="211" height="286" /></a></li>
                        <li><a href="#"><img src="<%= request.getContextPath()%>/Picture/baby_r.jpg" width="211" height="286" /></a></li>
                    </ul>
                    <div class="prev_b">上一张</div>
                    <div class="next_b">下一张</div> 
                </div>   
            </div>
            <div class="fresh_txt">
            	<div class="fresh_txt_c">
                	<a href="#">孕妈必备</a><a href="#">儿童玩具</a><a href="#">重装童鞋</a><a href="#">辅助食品</a><a href="#">奶粉</a><a href="#">鲜活禽蛋</a><a href="#">维生素</a><a href="#">重装童鞋</a><a href="#">辅助食品</a>
                </div>
            </div>
        </div>
        <div class="fresh_mid">
        	<ul>
            	<li>
                	<div class="name"><a href="#">儿童玩具  变形金刚</a></div>
                    <div class="price">
                    	<font>￥<span>260.00</span></font> &nbsp; 20R
                    </div>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/baby_1.jpg" width="185" height="155" /></a></div>
                </li>
                <li>
                	<div class="name"><a href="#">儿童玩具  变形金刚</a></div>
                    <div class="price">
                    	<font>￥<span>260.00</span></font> &nbsp; 20R
                    </div>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/baby_2.jpg" width="185" height="155" /></a></div>
                </li>
                <li>
                	<div class="name"><a href="#">儿童玩具  变形金刚</a></div>
                    <div class="price">
                    	<font>￥<span>260.00</span></font> &nbsp; 20R
                    </div>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/baby_3.jpg" width="185" height="155" /></a></div>
                </li>
                <li>
                	<div class="name"><a href="#">儿童玩具  变形金刚</a></div>
                    <div class="price">
                    	<font>￥<span>260.00</span></font> &nbsp; 20R
                    </div>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/baby_4.jpg" width="185" height="155" /></a></div>
                </li>
                <li>
                	<div class="name"><a href="#">儿童玩具  变形金刚</a></div>
                    <div class="price">
                    	<font>￥<span>260.00</span></font> &nbsp; 20R
                    </div>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/baby_5.jpg" width="185" height="155" /></a></div>
                </li>
                <li>
                	<div class="name"><a href="#">儿童玩具  变形金刚</a></div>
                    <div class="price">
                    	<font>￥<span>260.00</span></font> &nbsp; 20R
                    </div>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/baby_6.jpg" width="185" height="155" /></a></div>
                </li>
            </ul>
        </div>
        <div class="fresh_right">
        	<ul>
            	<li><a href="#"><img src="<%= request.getContextPath()%>/Picture/baby_b1.jpg" width="260" height="220" /></a></li>
                <li><a href="#"><img src="<%= request.getContextPath()%>/Picture/baby_b2.jpg" width="260" height="220" /></a></li>
            </ul>
        </div>
    </div>    
    <!--End 母婴玩具 End-->
    <!--Begin 家居生活 Begin-->
    <div class="i_t mar_10">
    	<span class="floor_num">5F</span>
    	<span class="fl">家居生活</span>                                
        <span class="i_mores fr"><a href="#">更多</a></span>
        <!-- <span class="i_mores fr"><a href="#">床上用品</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">家纺布艺</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">餐具</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">沙发</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">汽车用品</a></span>                                               -->
    </div>
    <div class="content">
    	<div class="home_left">
        	<div class="home_ban">
            	<div id="imgPlay5">
                    <ul class="imgs" id="actor5">
                        <li><a href="#"><img src="<%= request.getContextPath()%>/Picture/home_r.jpg" width="211" height="286" /></a></li>
                        <li><a href="#"><img src="<%= request.getContextPath()%>/Picture/home_r.jpg" width="211" height="286" /></a></li>
                        <li><a href="#"><img src="<%= request.getContextPath()%>/Picture/home_r.jpg" width="211" height="286" /></a></li>
                    </ul>
                    <div class="prev_h">上一张</div>
                    <div class="next_h">下一张</div> 
                </div>   
            </div>
            <div class="fresh_txt">
            	<div class="fresh_txt_c">
                	<a href="#">床上用品</a><a href="#">家纺布艺</a><a href="#">餐具水具</a><a href="#">锅具厨具</a><a href="#">沙发</a><a href="#">书柜</a><a href="#">狗粮</a><a href="#">家装建材</a><a href="#">汽车用品</a>
                </div>
            </div>
        </div>
        <div class="fresh_mid">
        	<ul>
            	<li>
                	<div class="name"><a href="#">品质蓝色沙发</a></div>
                    <div class="price">
                    	<font>￥<span>2160.00</span></font> &nbsp; 50R
                    </div>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/home_1.jpg" width="185" height="155" /></a></div>
                </li>
                <li>
                	<div class="name"><a href="#">品质蓝色沙发</a></div>
                    <div class="price">
                    	<font>￥<span>2160.00</span></font> &nbsp; 50R
                    </div>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/home_2.jpg" width="185" height="155" /></a></div>
                </li>
                <li>
                	<div class="name"><a href="#">品质蓝色沙发</a></div>
                    <div class="price">
                    	<font>￥<span>2160.00</span></font> &nbsp; 50R
                    </div>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/home_3.jpg" width="185" height="155" /></a></div>
                </li>
                <li>
                	<div class="name"><a href="#">品质蓝色沙发</a></div>
                    <div class="price">
                    	<font>￥<span>2160.00</span></font> &nbsp; 50R
                    </div>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/home_4.jpg" width="185" height="155" /></a></div>
                </li>
                <li>
                	<div class="name"><a href="#">品质蓝色沙发</a></div>
                    <div class="price">
                    	<font>￥<span>2160.00</span></font> &nbsp; 50R
                    </div>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/home_5.jpg" width="185" height="155" /></a></div>
                </li>
                <li>
                	<div class="name"><a href="#">品质蓝色沙发</a></div>
                    <div class="price">
                    	<font>￥<span>2160.00</span></font> &nbsp; 50R
                    </div>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/home_6.jpg" width="185" height="155" /></a></div>
                </li>
            </ul>
        </div>
        <div class="fresh_right">
        	<ul>
            	<li><a href="#"><img src="<%= request.getContextPath()%>/Picture/home_b1.jpg" width="260" height="220" /></a></li>
                <li><a href="#"><img src="<%= request.getContextPath()%>/Picture/home_b2.jpg" width="260" height="220" /></a></li>
            </ul>
        </div>
    </div>    
    <!--End 家居生活 End-->
    <!--Begin 数码家电 Begin-->
    <div class="i_t mar_10">
    	<span class="floor_num">6F</span>
    	<span class="fl">数码家电</span>                                
        <span class="i_mores fr"><a href="#">更多</a></span>
        <!-- <span class="i_mores fr"><a href="#">手机</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">苹果</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">华为手机</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">洗衣机</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">数码配件</a></span>                                                -->
    </div>
    <div class="content">
    	<div class="tel_left">
        	<div class="tel_ban">
            	<div id="imgPlay6">
                    <ul class="imgs" id="actor6">
                        <li><a href="#"><img src="<%= request.getContextPath()%>/Picture/tel_r.jpg" width="211" height="286" /></a></li>
                        <li><a href="#"><img src="<%= request.getContextPath()%>/Picture/tel_r.jpg" width="211" height="286" /></a></li>
                        <li><a href="#"><img src="<%= request.getContextPath()%>/Picture/tel_r.jpg" width="211" height="286" /></a></li>
                    </ul>
                    <div class="prev_t">上一张</div>
                    <div class="next_t">下一张</div> 
                </div>   
            </div>
            <div class="fresh_txt">
            	<div class="fresh_txt_c">
                	<a href="#">手机</a><a href="#">平板电脑</a><a href="#">空调</a><a href="#">合约机</a><a href="#">电风扇</a><a href="#">数码配件</a><a href="#">洗衣机</a><a href="#">电视</a><a href="#">充电器</a><a href="#">耳线</a>
                </div>
            </div>
        </div>
        <div class="fresh_mid">
        	<ul>
            	<li>
                	<div class="name"><a href="#">乐视高清电视</a></div>
                    <div class="price">
                    	<font>￥<span>2160.00</span></font> &nbsp; 25R
                    </div>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/tel_1.jpg" width="185" height="155" /></a></div>
                </li>
                <li>
                	<div class="name"><a href="#">乐视高清电视</a></div>
                    <div class="price">
                    	<font>￥<span>2160.00</span></font> &nbsp; 25R
                    </div>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/tel_2.jpg" width="185" height="155" /></a></div>
                </li>
                <li>
                	<div class="name"><a href="#">乐视高清电视</a></div>
                    <div class="price">
                    	<font>￥<span>2160.00</span></font> &nbsp; 25R
                    </div>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/tel_3.jpg" width="185" height="155" /></a></div>
                </li>
                <li>
                	<div class="name"><a href="#">乐视高清电视</a></div>
                    <div class="price">
                    	<font>￥<span>2160.00</span></font> &nbsp; 25R
                    </div>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/tel_4.jpg" width="185" height="155" /></a></div>
                </li>
                <li>
                	<div class="name"><a href="#">乐视高清电视</a></div>
                    <div class="price">
                    	<font>￥<span>2160.00</span></font> &nbsp; 25R
                    </div>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/tel_5.jpg" width="185" height="155" /></a></div>
                </li>
                <li>
                	<div class="name"><a href="#">乐视高清电视</a></div>
                    <div class="price">
                    	<font>￥<span>2160.00</span></font> &nbsp; 25R
                    </div>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/tel_6.jpg" width="185" height="155" /></a></div>
                </li>
            </ul>
        </div>
        <div class="fresh_right">
        	<ul>
            	<li><a href="#"><img src="<%= request.getContextPath()%>/Picture/tel_b1.jpg" width="260" height="220" /></a></li>
                <li><a href="#"><img src="<%= request.getContextPath()%>/Picture/tel_b2.jpg" width="260" height="220" /></a></li>
            </ul>
        </div>
    </div>    
    <!--End 数码家电 End-->
    <!--Begin 猜你喜欢 Begin-->
    <div class="i_t mar_10">
        <span class="fl">加盟商家</span>
        <span class="i_mores fr"><a href="#">更多</a></span>
    </div>
    <div class="like">
        <div id="featureContainer1">
            <div id="feature1">
                <div id="block1">
                    <div id="botton-scroll1">
                        <ul class="featureUL">
<<<<<<< HEAD
                            <c:forEach items="${partshops}" var="partshop">
                                <li class="featureBox">
                                    <div class="box">
                                        <div class="imgbg">
                                            <a href="#"><img src="${partshop.productlogo}" width="160" height="136" /></a>
                                        </div>
                                        <div class="name">
                                            <a href="#">
                                                <h2>${partshop.productname}</h2>
                                            </a>
                                            <div class="price">
                                                <font>￥<span>${partshop.price}</span></font> &nbsp; &nbsp;&nbsp;销量：${partshop.salesvolu}<br>

                                            </div>
                                            <span><a href=""><img src="Images/xing.png" style="width: 15px;height: 15px;">${partshop.shopname}&nbsp;&nbsp;</a><img src="Images/location.png">${partshop.cityname}</span>
                                            <p>合作数量：${partshop.count} &nbsp;&nbsp;&nbsp;预合作数量：${partshop.intentcount}</p>
                                        </div>

                                        <!--    <div class="price">
                                               主营:食品生鲜、美发护肤、洗化百货等
                                           </div> -->
                                    </div>
                                </li>
                            </c:forEach>
=======
                            <li class="featureBox">
                                <div class="box">
                                    <div class="imgbg">
                                        <a href="#"><img src="<%= request.getContextPath()%>/Picture/shop_1.jpg" width="160" height="136" /></a>
                                    </div>
                                    <div class="name">
                                        <a href="#">
                                            <h2>我是商品名称我是商品名称</h2>
                                        </a>
                                        <div class="price">
                                            <font>￥<span>2160.0</span></font> &nbsp; &nbsp;&nbsp;销量：15555<br>

                                        </div>
                                        <span><a href=""><img src="<%= request.getContextPath()%>/Images/xing.png" style="width: 15px;height: 15px;">YOUYI百货商行&nbsp;&nbsp;</a><img src="<%= request.getContextPath()%>/Images/location.png">北京</span>
                                        <p>合作数量：11111 &nbsp;&nbsp;&nbsp;预合作数量：11111</p>
                                    </div>
                                </div>
                            </li>
                            <li class="featureBox">
                                <div class="box">
                                    <div class="imgbg">
                                        <a href="#"><img src="<%= request.getContextPath()%>/Picture/shop_3.jpg" width="160" height="136" /></a>
                                    </div>                                        
                                    <div class="name">
                                        <a href="#">
                                        <h2>YOUYI百货商行&nbsp;<img src="<%= request.getContextPath()%>/Images/xing.png" style="width: 15px;height: 15px;"><img src="<%= request.getContextPath()%>/Images/xing.png" style="width: 15px;height: 15px;"><img src="<%= request.getContextPath()%>/Images/xing.png" style="width: 15px;height: 15px;"></h2>
                                        <span>总销量:12138件商品&nbsp;&nbsp;&nbsp;<img src="<%= request.getContextPath()%>/Images/location.png">北京</span>
                                        </a>
                                    </div>
                                    <div class="price">
                                        主营:食品生鲜、美发护肤、洗化百货等
                                    </div>
                                </div>
                            </li><li class="featureBox">
                                <div class="box">
                                    <div class="imgbg">
                                        <a href="#"><img src="<%= request.getContextPath()%>/Picture/shop_4.jpg" width="160" height="136" /></a>
                                    </div>                                        
                                    <div class="name">
                                        <a href="#">
                                        <h2>YOUYI百货商行&nbsp;<img src="<%= request.getContextPath()%>/Images/xing.png" style="width: 15px;height: 15px;"><img src="<%= request.getContextPath()%>/Images/xing.png" style="width: 15px;height: 15px;"><img src="<%= request.getContextPath()%>/Images/xing.png" style="width: 15px;height: 15px;"></h2>
                                        <span>总销量:12138件商品&nbsp;&nbsp;&nbsp;<img src="<%= request.getContextPath()%>/Images/location.png">北京</span>
                                        </a>
                                    </div>
                                    <div class="price">
                                        主营:食品生鲜、美发护肤、洗化百货等
                                    </div>
                                </div>
                            </li><li class="featureBox">
                                <div class="box">
                                    <div class="imgbg">
                                        <a href="#"><img src="<%= request.getContextPath()%>/Picture/shop_3.jpg" width="160" height="136" /></a>
                                    </div>                                        
                                    <div class="name">
                                        <a href="#">
                                        <h2>YOUYI百货商行&nbsp;<img src="<%= request.getContextPath()%>/Images/xing.png" style="width: 15px;height: 15px;"><img src="<%= request.getContextPath()%>/Images/xing.png" style="width: 15px;height: 15px;"><img src="<%= request.getContextPath()%>/Images/xing.png" style="width: 15px;height: 15px;"></h2>
                                        <span>总销量:12138件商品&nbsp;&nbsp;&nbsp;<img src="<%= request.getContextPath()%>/Images/location.png">北京</span>
                                        </a>
                                    </div>
                                    <div class="price">
                                        主营:食品生鲜、美发护肤、洗化百货等
                                    </div>
                                </div>
                            </li><li class="featureBox">
                                <div class="box">
                                    <div class="imgbg">
                                        <a href="#"><img src="<%= request.getContextPath()%>/Picture/shop_2.jpg" width="160" height="136" /></a>
                                    </div>                                        
                                    <div class="name">
                                        <a href="#">
                                        <h2>YOUYI百货商行&nbsp;<img src="<%= request.getContextPath()%>/Images/xing.png" style="width: 15px;height: 15px;"><img src="<%= request.getContextPath()%>/Images/xing.png" style="width: 15px;height: 15px;"><img src="<%= request.getContextPath()%>/Images/xing.png" style="width: 15px;height: 15px;"></h2>
                                        <span>总销量:12138件商品&nbsp;&nbsp;&nbsp;<img src="<%= request.getContextPath()%>/Images/location.png">北京</span>
                                        </a>
                                    </div>
                                    <div class="price">
                                        主营:食品生鲜、美发护肤、洗化百货等
                                    </div>
                                </div>
                            </li>
>>>>>>> wordlu-master

                        </ul>
                    </div>
                </div>
                <a class="l_prev" href="javascript:void();">Previous</a>
                <a class="l_next" href="javascript:void();">Next</a>
            </div>
        </div>
    </div>

    <!--End 猜你喜欢 End-->
    
    <!--Begin Footer Begin -->
    <div class="b_btm_bg b_btm_c">
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
            <!-- <dd><a href="#">隐私声明</a></dd>
            <dd><a href="#">分享说明</a></dd> -->
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
        	<!-- 备案/许可证编号：蜀ICP备12009302号-1-www.dingguagua.com   Copyright © 2015-2018 尤洪商城网 All Rights Reserved. 复制必究 , Technical Support: Dgg Group <br /> -->
            <img src="<%= request.getContextPath()%>/Picture/b_1.gif" width="98" height="33" /><img src="<%= request.getContextPath()%>/Picture/b_2.gif" width="98" height="33" /><img src="<%= request.getContextPath()%>/Picture/b_3.gif" width="98" height="33" /><img src="<%= request.getContextPath()%>/Picture/b_4.gif" width="98" height="33" /><img src="<%= request.getContextPath()%>/Picture/b_5.gif" width="98" height="33" /><img src="<%= request.getContextPath()%>/Picture/b_6.gif" width="98" height="33" />
        </div>    	
    </div>
    <!--End Footer End -->    
</div>

</body>


<!--[if IE 6]>
<script src="<%= request.getContextPath()%>/Scripts/zh_cn.js"></script>
<![endif]-->
</html>