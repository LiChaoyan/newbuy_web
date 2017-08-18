<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link type="text/css" rel="stylesheet" href="<%= request.getContextPath()%>/Css/style.css" />

    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/jquery-1.11.1.min_044d0927.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/jquery-1.8.2.min.js"></script>

    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/n_nav.js"></script>

    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/lrscroll_1.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/menu.js"></script>

    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/n_nav.js"></script>
    <!--多条件筛选用的jquery-->
    <script src="http://code.jquery.com/jquery-1.8.3.min.js"></script>

    <!--动态分页-->
    <link href="<%=request.getContextPath()%>/back/assets/pages/css/page.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="<%=request.getContextPath()%>/back/assets/pages/js/page.js"></script>

    <!--多条件筛选-->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/back/assets/dtjsx/css/font-awesome.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/back/assets/dtjsx/css/reset.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/back/assets/dtjsx/css/dstyle.css">

    <title>商品搜索</title>
    <meta name="keywords" content="小桥双线购项目购物商城" />
    <meta name="description" content="线上线下商家加盟的商城" />


    <style>
        .page-split1,.page-split2{
            padding: 1px 6px;
            float: left;
            height: 23px;
            line-height: 23px;
        }
        <%----多条件筛选--%>

        .search-by dl dd.sl-multiple {
            width: 40px;
            padding: 0;
            text-align: center;
            cursor: pointer;
        }
        dd.sl-multiple {
            border: 1px #ddd solid
        }


    </style>

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
            <span class="fl">你好，请<a href="Login">登录</a>&nbsp; <a href="Regist" style="color:#ff4e00;">免费注册</a>&nbsp;<!-- |&nbsp;<a href="#">我的订单</a>&nbsp; -->|</span>
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
            <form>
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
                    form.action="CategoryList?productname=?";
                    form.submit();
                }
                function Shop() {
                    form.action="brand?shopname=?";
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
            <div class="un_login">还未登录！<a href="Login" style="color:#ff4e00;">马上登录</a> 查看购物车！</div>
            <!--End 购物车未登录 End-->
            <!--Begin 购物车已登录 Begin-->
            <ul class="cars">
                <li>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/car1.jpg" width="58" height="58" /></a></div>
                    <div class="name"><a href="#">法颂浪漫梦境50ML 香水女士持久清新淡香 送2ML小样3只</a></div>
                    <div class="price"><font color="#ff4e00">￥399</font> X1</div>
                </li>
                <!-- <li>
                    <div class="img"><a href="#"><img src=/Picture/car2.jpg" width="58" height="58" /></a></div>
                    <div class="name"><a href="#">香奈儿（Chanel）邂逅活力淡香水50ml</a></div>
                    <div class="price"><font color="#ff4e00">￥399</font> X1</div>
                </li>
                <li>
                    <div class="img"><a href="#"><img src="/Picture/car2.jpg" width="58" height="58" /></a></div>
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
            <div class="leftNav none">
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
        	<li><a href="Index">首页</a></li>
            <li><a href="Food">美食</a></li>
            <li><a href="Fresh">生鲜</a></li>
            <li><a href="HomeDecoration">家居</a></li>
            <li><a href="SuitDress">女装</a></li>
            <li><a href="MakeUp">美妆</a></li>
            <li><a href="Digital">数码</a></li>
            <li><a href="GroupBuying">团购</a></li>

        </ul>
        <div class="m_ad">全部搜索结果</div>
    </div>
</div>
<!--End Menu End-->
<div class="i_bg">

    <div class="postion">
        <span class="fl">全部分类 > 美妆个护 > 香水 > </span>
        <span class="n_ch">
            <span class="fl">品牌：<font>香奈儿</font></span>
            <a href="#"><img src="<%= request.getContextPath()%>/Picture/s_close.gif" /></a>
        </span>
    </div>
    <!--Begin 筛选条件 Begin-->
    <div class="content mar_10">
        <table border="0" class="choice" style="width:100%; font-family:'宋体'; margin:0 auto;" cellspacing="0" cellpadding="0">
            <tr valign="top">
                <td width="70">&nbsp; 品牌：</td>
                <td class="td_a"><a href="#" class="now">香奈儿（Chanel）</a><a href="#">迪奥（Dior）</a><a href="#">范思哲（VERSACE）</a><a href="#">菲拉格慕（Ferragamo）</a><a href="#">兰蔻（LANCOME）</a><a href="#">爱马仕（HERMES）</a><a href="#">卡文克莱（Calvin Klein）</a><a href="#">古驰（GUCCI）</a><a href="#">宝格丽（BVLGARI）</a><a href="#">阿迪达斯（Adidas）</a><a href="#">卡尔文·克莱恩（CK）</a><a href="#">凌仕（LYNX）</a><a href="#">大卫杜夫（Davidoff）</a><a href="#">安娜苏（Anna sui）</a><a href="#">阿玛尼（ARMANI）</a><a href="#">娇兰（Guerlain）</a></td>
            </tr>
            <tr valign="top">
                <td>&nbsp; 价格：</td>
                <td class="td_a"><a href="#">0-199</a><a href="#" class="now">200-399</a><a href="#">400-599</a><a href="#">600-899</a><a href="#">900-1299</a><a href="#">1300-1399</a><a href="#">1400以上</a></td>
            </tr>
            <tr>
                <td>&nbsp; 含量：</td>
                <td class="td_a"><a href="#">5ml以下</a><a href="#">5ml-10ml</a><a href="#">15ml</a><a href="#">20ml</a><a href="#">25ml</a><a href="#">30ml</a><a href="#">30ml以上</a></td>
            </tr>
            <tr>
                <td>&nbsp; 类型：</td>
                <td class="td_a"><a href="#">女士香水</a><a href="#">男士香水</a><a href="#">Q版香水</a><a href="#">组合套装</a><a href="#">香体走珠</a><a href="#">其它</a></td>
            <tr>
                <td>&nbsp; 香型：</td>
                <td class="td_a"><a href="#">浓香水</a><a href="#">香精Parfum香水</a><a href="#">淡香精EDP淡香水</a><a href="#">香露EDT</a><a href="#">古龙水</a><a href="#">其它</a></td>
            </tr>
        </table>
    </div>
    <!--End 筛选条件 End-->

    <div style="width:1200px; margin:0 auto;">
        <div class="clearfix">
            <p class="shaixuan-tj floatLeft clearfix">
                <c:if test="${page.productname!=null&&page.cgid==-1}">
                    <span><a href="/">全部分类</a></span>
                    <i class="icon-angle-right"></i>
                    <span><strong>${page.productname}</strong></span>
                    <i class="icon-angle-right"></i>
                </c:if>
                <c:if test="${page.big!=null}">
                    <span><a href="/">${page.big}</a></span>
                    <i class="icon-angle-right"></i>
                </c:if>
                <c:if test="${page.small!=null}">
                    <span><a href="/">${page.small}</a></span>
                    <i class="icon-angle-right"></i>
                </c:if>
                <c:if test="${page.secend!=null}">
                    <span><a href="/">${page.secend}</a></span>
                    <i class="icon-angle-right"></i>
                </c:if>


            </p>
            <p id="sxbtn" class="shaixuan-btn clearfix"><span><em>收起筛选</em><i class="icon-angle-up"></i></span></p>
        </div>

        <div id="page-search-store" class="mb10 border sxcon">
            <div class="search-by by-category relative">
                <%--  <dl class="relative clearfix">
                    <dt class="floatLeft"><a href="/">城市：</a></dt>
                     <dd class="floatLeft show-con">
                         <c:forEach items="${cityList}" var="city">
                             <a href="#" class="">${city.cityname}</a>
                         </c:forEach>
                     </dd>
                     <dd class="floatLeft sl-multiple"><h3><span>多选</span><i></i></h3></dd>
                     <dd class="floatLeft show-more"><h3 class="pointer clearfix"><span>更多</span><i class="icon-angle-down"></i></h3></dd>
                 </dl>--%>
                <dl class="relative clearfix">
                    <dt class="floatLeft"><a href="/">城市：</a></dt>
                    <dd class="floatLeft show-con">
                        <c:forEach items="${cityList}" var="city">
                            <input type="checkbox" value="${city.cityname}"><a class="">${city.cityname}</a></input>
                        </c:forEach>
                    </dd>
                    <dd class="floatLeft sl-multiple"><h3><span>多选</span><i></i></h3></dd>
                    <dd class="floatLeft"><input class="btn_sure" type="button" value="确定"/></dd>
                    <dd class="floatLeft"><input type="button" class="sl_cancel" value="取消"/></dd>
                    <dd class="floatLeft show-more"><h3 class="pointer clearfix"><span>更多</span><i class="icon-angle-down"></i></h3></dd>


                </dl>
                <dl class="relative clearfix" style="border-bottom:0">
                    <dt class="floatLeft"><a href="/">合作商品：</a></dt>
                    <dd class="floatLeft show-con">
                        <a href="#" class="" >是</a>
                        <a href="#" class="" >否</a>
                    </dd>
                    <dd class="floatLeft sl-multiple"><h3><span>多选</span><i></i></h3></dd>
                </dl>


            </div>
        </div>
    </div>

    <script>
        $(function(){
            //按钮取消
            $(".sl_cancel").click(function(event){
                THI = $(this).parents("dl").find("dd").first();
                THI.find("input").each(function(index){
                    $(this).removeAttr("checked");
                })
            });
            //多选确定按钮
            $(".btn_sure").click(function(event){
                THI = $(this).parents("dl").find("dd").first();
                var str="";
                var num=THI.find("input").size();
                var zhiclass;
                THI.find("input").each(function(index) {
                    if ($(this).is(':checked')) {
                        str += $(this).val() + ",";
                    }

                    if (index == num - 1) {
                        THIP = $(this).parents("dl");
                        zhiclass = $(this).parents("dd").siblings("dt").find("a").text();
                        zhicon = str;
                        tianjaneir = "<span class='crumb-select-item'><a href='/'><b>" + zhiclass + "</b><em>" + zhicon + "</em><i class='icon-remove'></i></a></span>"
                        $(".shaixuan-tj").children().last().after(tianjaneir);
                        THIP.css("display", "none");
                    }
                })

                if(zhiclass=="城市："){
                    if(${page.part==2}){
                        window.location.href="<%=request.getContextPath()%>/CategoryList?cgid=${page.cgid}&productname=${page.productname}&city="+str+"";
                    }else{
                        window.location.href="<%=request.getContextPath()%>/CategoryList?cgid=${page.cgid}&productname=${page.productname}&part=${page.part}&city="+str+"";
                    }

                }

            });

            $(".shaixuan-tj span.crumb-select-item").live('hover',function(event){
                if(event.type=='mouseenter'){
                    $(this).addClass("crumb-select-itemon");
                }else{
                    $(this).removeClass("crumb-select-itemon");
                }

            });
            $(".shaixuan-tj span.crumb-select-item").live('click', function(event){

                event.preventDefault();
                $(this).remove();
                var ttb=$(this).find("b").text();
                var TTR = $(this).find("em").text();
                $(".show-con").each(function(){
                    THIPP = $(this).parents("dl");
                    var zhiclass = $(this).parents("dl").find("dt").find("a").text();
                    if(ttb==zhiclass){
                        THIPP.css("display","block");
                        if(ttb=="城市："){
                            if(${page.part==2}){
                                window.location.href="<%=request.getContextPath()%>/CategoryList?cgid=${page.cgid}&productname=${page.productname}";
                            }else{
                                window.location.href="<%=request.getContextPath()%>/CategoryList?cgid=${page.cgid}&productname=${page.productname}&part=${page.part}";
                            }

                        }


                        if(ttb=="合作商品："){
                            if(${page.city==null}){
                                window.location.href="<%=request.getContextPath()%>/CategoryList?cgid=${page.cgid}&productname=${page.productname}";
                            }else{
                                window.location.href="<%=request.getContextPath()%>/CategoryList?cgid=${page.cgid}&productname=${page.productname}&city=${page.city}";
                            }

                        }

                    }

                    THI = $(this).parents("dl").find("dd").first();
                    THI.find("input").each(function(index){
                        $(this).removeAttr("checked");
                    })
                })

                $(".show-con a").each(function(){
                    var TT = $(this).text();
                    THI = $(this);
                    THIPP = $(this).parents("dl");
                    if(TTR==TT){
                        THI.removeClass("nzw12");
                        THIPP.css("display","block");
                    }
                    THII = $(this).parents("dl").find("dd").first();
                    THII.find("input").each(function(index){
                        $(this).removeAttr("checked");
                    })
                })
            });

            //单选效果，直接点击a
            $(".show-con a").click(function(event){
                event.preventDefault();
                THIP = $(this).parents("dl");
                if($(this).hasClass("nzw12")){
                }else{
                    $(this).addClass("nzw12");
                    var zhiclass = $(this).parents("dd").siblings("dt").find("a").text();
                    zhicon = $(this).text();
                    tianjaneir="<span class='crumb-select-item'><a href='/'><b>"+zhiclass+"</b><em>"+zhicon+"</em><i class='icon-remove'></i></a></span>"
                    $(".shaixuan-tj").children().last().after(tianjaneir);
                    THIP.css("display","none");

                    if(zhiclass=="城市："){
                        var city=zhicon;
                        if(${page.part==2}){
                            window.location.href="<%=request.getContextPath()%>/CategoryList?cgid=${page.cgid}&productname=${page.productname}&city="+city+"";
                        }else{
                            window.location.href="<%=request.getContextPath()%>/CategoryList?cgid=${page.cgid}&productname=${page.productname}&part=${page.part}&city="+city+"";
                        }
                    }

                    if(zhiclass=="合作商品："){
                        if(zhicon=="是"){
                            var part=1;
                        }else{
                            var part=0;
                        }
                        if(${page.city==null}){
                            window.location.href="<%=request.getContextPath()%>/CategoryList?cgid=${page.cgid}&productname=${page.productname}&part="+part+"";
                        }else{
                            window.location.href="<%=request.getContextPath()%>/CategoryList?cgid=${page.cgid}&productname=${page.productname}&city=${page.city}&part="+part+"";
                        }
                    }



                }
            });


            $(".show-more").click(function(event){
                event.preventDefault();
                var ticon = $(this).find("i");
                tspan = $(this).find("span");
                if($(this).hasClass("zk")){
                    $(this).siblings(".show-con").css("height","30px");
                    ticon.removeClass("icon-angle-up");
                    ticon.addClass("icon-angle-down");
                    tspan.html("更多");
                    $(this).removeClass("zk")
                }else{
                    $(this).siblings(".show-con").css("height","auto");
                    ticon.removeClass("icon-angle-down");
                    ticon.addClass("icon-angle-up");
                    tspan.html("收起");
                    $(this).addClass("zk")
                }
            });
            $("#sxbtn").click(function(event){
                event.preventDefault();
                var xicon = $(this).find("span i");
                xspan = $(this).find("span em");
                if($(this).hasClass("zkon")){
                    xspan.text("收起筛选");
                    xicon.removeClass("icon-angle-down");
                    xicon.addClass("icon-angle-up");
                    $(".sxcon").slideDown();
                    $(this).removeClass("zkon")
                }else{
                    xspan.text("查看筛选");
                    xicon.removeClass("icon-angle-up");
                    xicon.addClass("icon-angle-down");
                    $(".sxcon").slideUp();
                    $(this).addClass("zkon")
                }
            })


        })

    </script>
    <script type="text/javascript">
        // 刷新之后保存原有的筛选状态
        $(document).ready(function(){
            var s_city;
            var s_part;
            if(${page.city!=null}){
                s_city="${page.city}";
            }
            if(${page.part!=null&&page.part!=2}){
                s_part=${page.part};
            }
            //恢复已筛选多选效果
            $(".show-con").each(function(){
                var zhiclass = $(this).parents("dl").find("dt").find("a").text();
                if(s_city!=null&&(s_city.toString().indexOf(",")>0)&&(zhiclass=="城市：")){

                      var THIP = $(this).parents("dl");
                        tianjaneir = "<span class='crumb-select-item'><a href='/'><b>" + zhiclass + "</b><em>" + s_city + "</em><i class='icon-remove'></i></a></span>"
                        $(".shaixuan-tj").children().last().after(tianjaneir);
                        THIP.css("display", "none");

                }
            })

             $(".show-con a").each(function (index) {
                 THIP = $(this).parents("dl");
                 var zhiclass = $(this).parents("dd").siblings("dt").find("a").text();
                 var zhicon = $(this).text();
                 if(zhiclass=="城市："&&s_city!=null) {
                     if(s_city==zhicon){//单选效果恢复已筛选的状态
                         if ($(this).hasClass("nzw12")) {
                         } else {
                            $(this).addClass("nzw12");
                            tianjaneir = "<span class='crumb-select-item'><a href='/'><b>" + zhiclass + "</b><em>" + zhicon + "</em><i class='icon-remove'></i></a></span>"
                            $(".shaixuan-tj").children().last().after(tianjaneir);
                            THIP.css("display", "none");
                         }
                     }
                 }
                 if((zhicon=="是"&&s_part==1)||(zhicon=="否"&&s_part==0)){

                          tianjaneir = "<span class='crumb-select-item'><a href='/'><b>" + zhiclass + "</b><em>" + zhicon + "</em><i class='icon-remove'></i></a></span>"
                         $(".shaixuan-tj").children().last().after(tianjaneir);
                         THIP.css("display", "none");
                 }
             })

        });
    </script>
    <!--多条件筛选结束-->
    <div class="content mar_20">
        <div class="l_history">
            <div class="his_t">
                <span class="fl">浏览历史</span>
                <span class="fr"><a href="#">清空</a></span>
            </div>
            <ul>
                <li>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/his_1.jpg" width="185" height="162" /></a></div>
                    <div class="name"><a href="#">Dior/迪奥香水2件套装</a></div>
                    <div class="price">
                        <font>￥<span>368.00</span></font> &nbsp; 1000人付款
                    </div>
                </li>
                <li>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/his_2.jpg" width="185" height="162" /></a></div>
                    <div class="name"><a href="#">Dior/迪奥香水2件套装</a></div>
                    <div class="price">
                        <font>￥<span>768.00</span></font> &nbsp; 1000人付款
                    </div>
                </li>
                <li>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/his_3.jpg" width="185" height="162" /></a></div>
                    <div class="name"><a href="#">Dior/迪奥香水2件套装</a></div>
                    <div class="price">
                        <font>￥<span>680.00</span></font> &nbsp; 1000人付款
                    </div>
                </li>
                <li>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/his_4.jpg" width="185" height="162" /></a></div>
                    <div class="name"><a href="#">Dior/迪奥香水2件套装</a></div>
                    <div class="price">
                        <font>￥<span>368.00</span></font> &nbsp; 1000人付款
                    </div>
                </li>
                <li>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/his_5.jpg" width="185" height="162" /></a></div>
                    <div class="name"><a href="#">Dior/迪奥香水2件套装</a></div>
                    <div class="price">
                        <font>￥<span>368.00</span></font> &nbsp; 1000人付款
                    </div>
                </li>
            </ul>
        </div>
        <script type="text/javascript">
            $(document).ready(function(){

                //刷新后，保留now的状态
                var no_price=${page.price};
                var no_sales=${page.sales};
                var no_range=${page.range};
                var no_ases=${page.ases};
                var no_attention=${page.attention};
                var no_colligate=0;
                if((no_price==0||no_price==1)&&no_sales==1&&(no_range==0||no_range==1)&&no_ases==1&&no_attention==1){
                    no_colligate=1;
                }
                if((no_price==0||no_price==1)&&(no_colligate==0)){
                    $(".now").removeClass("now");
                    $(".no-price").addClass("now");
                }
                if(no_sales==1&&no_colligate==0){
                    $(".now").removeClass("now");
                    $(".no-sales").addClass("now");
                }
                if(no_attention==1&&no_colligate==0){
                    $(".now").removeClass("now");
                    $(".no-attention").addClass("now");
                }
                if(no_ases==1&&no_colligate==0){
                    $(".now").removeClass("now");
                    $(".no-ases").addClass("now");
                }
                if((no_range==0||no_range==1)&&(no_colligate==0)){
                    $(".now").removeClass("now");
                    $(".no-range").addClass("now");
                }
                if(no_colligate==1){
                    $(".now").removeClass("now");
                    $(".no-colligate").addClass("now");
                }

                $(".list_or a").click(function () {
                    $(".now").removeClass("now");
                    $(this).addClass("now");
                });

                $(".no-price").click(function () {
                    if(no_price==0){
                        window.location.href="<%=request.getContextPath()%>/CategoryList?cgid=${page.cgid}&productname=${page.productname}&city=${page.city}&part=${page.part}&price=1";
                    }else{
                        window.location.href="<%=request.getContextPath()%>/CategoryList?cgid=${page.cgid}&productname=${page.productname}&city=${page.city}&part=${page.part}&price=0";
                    }
                });
                $(".no-range").click(function () {
                    if(no_range==0){
                        window.location.href="<%=request.getContextPath()%>/CategoryList?cgid=${page.cgid}&productname=${page.productname}&city=${page.city}&part=${page.part}&range=1";
                    }else{
                        window.location.href="<%=request.getContextPath()%>/CategoryList?cgid=${page.cgid}&productname=${page.productname}&city=${page.city}&part=${page.part}&range=0";
                    }
                });
            });
        </script>
        <div class="l_list">
            <div class="list_t">
            	<span class="fl list_or">
                	<a href="<%=request.getContextPath()%>/CategoryList?cgid=${page.cgid}&productname=${page.productname}&city=${page.city}&part=${page.part}" class="no-mo now">默认</a>
                    <a href="<%=request.getContextPath()%>/CategoryList?cgid=${page.cgid}&productname=${page.productname}&city=${page.city}&part=${page.part}&sales=1" class="no-sales">销量</a>
                    <a href="#" class="no-price">
                    	<span class="fl">价格</span>
                        <span class="i_up">价格从低到高显示</span>
                        <span class="i_down">价格从高到低显示</span>
                    </a>
                    <a href="<%=request.getContextPath()%>/CategoryList?cgid=${page.cgid}&productname=${page.productname}&city=${page.city}&part=${page.part}&ases=1" class="no-ases">评价数</a>
                    <a href="<%=request.getContextPath()%>/CategoryList?cgid=${page.cgid}&productname=${page.productname}&city=${page.city}&part=${page.part}&attention=1" class="no-attention">关注度</a>
                    <a href="#" class="no-range">
                    	<span class="fl">距离</span>
                        <span class="i_up">距离从近到远显示</span>
                        <span class="i_down">距离远高到进显示</span>
                    </a>
                    <a href="<%=request.getContextPath()%>/CategoryList?cgid=${page.cgid}&productname=${page.productname}&city=${page.city}&part=${page.part}&colligate=1" class="no-colligate">综合</a>
                    <a href="#" class="no-new">新品</a>
                </span>
                <span class="fr">共发现${page.listsize}件</span>
            </div>
            <div class="list_c">

                <ul class="cate_list">
                    <c:forEach items="${CommodityShopArrayList}" var="CommodityShop">
                        <li>
                            <div class="img"><a href="#"><img src="${CommodityShop.logo}" width="210" height="185" /></a></div>
                            <div class="price">
                                <font>￥<span>${CommodityShop.price}</span></font> &nbsp; ${CommodityShop.salesvolu}人付款&nbsp;&nbsp;
                                <c:if test="${page.range!=2}">
                                    ${CommodityShop.juli}米
                                </c:if>
                                <c:if test="${page.attention==1}">
                                    ${CommodityShop.goodsatten}关注
                                </c:if>
                                <c:if test="${page.ases==1}">
                                    ${CommodityShop.asesnum}评论
                                </c:if>
                            </div>
                            <div class="name"><a href="#">${CommodityShop.productname}</a></div>
                            <div class="pre"><a class="fl">店铺：${CommodityShop.shopname}</a><div class="fr"><img src="<%= request.getContextPath()%>/Images/location.png">${CommodityShop.cityname}</div></div>
                            <div class="carbg">
                                <a href="#" class="ss">收藏</a>
                                <a href="#" class="j_car">加入购物车</a>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
                <div class="pages">

                    <ul class="page" maxshowpageitem="5" pagelistcount="${page.count}"  id="page"></ul>

                </div>

                <script type="text/javascript">
                    function tt(dd){
                        //alert(dd);
                    }
                    var GG = {
                        "kk":function(mm){
                            // alert(mm);
                            // console.log("hellos");
                            window.location.href="CategoryList?cgid=${page.cgid}&productname=${page.productname}&city=${page.city}&part=${page.part}&sales=${page.sales}&price=${page.price}&attention=${page.attention}&range=${page.range}&ases=${page.ases}&colligate=${page.colligate}&p="+mm;
                        }
                    }
                    $("#page").initPage(${page.listsize},${page.p},GG.kk);
                </script>
            </div>
        </div>
    </div>

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

        <!-- <div class="b_tel_bg">
            <a href="#" class="b_sh1">新浪微博</a>
            <a href="#" class="b_sh2">腾讯微博</a>
            <p>
            服务热线：<br />
            <span>400-123-4567</span>
            </p>
        </div>
        <div class="b_er">
            <div class="b_er_c"><img src="/Picture/er.gif" width="118" height="118" /></div>
            <img src="/Picture/ss.png" />
        </div>
    </div>     -->
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
<!--
本代码由js代码网网友上传，js代码网收集并编辑整理;
尊重他人劳动成果;
转载请保留js代码链接 - www.jsdaima.com-->
