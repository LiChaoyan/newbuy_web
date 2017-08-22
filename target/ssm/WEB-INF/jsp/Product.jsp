<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link type="text/css" rel="stylesheet" href="<%= request.getContextPath()%>/Css/style.css" />
    <%--<script type="text/javascript"src="<%= request.getContextPath()%>/Scripts/jquery-1.8.2.min.js"></script>--%>
    <%--<script type="text/javascript"src="<%= request.getContextPath()%>/Scripts/menu.js"></script>    --%>
            
	<%--<script type="text/javascript"src="<%= request.getContextPath()%>/Scripts/lrscroll_1.js"></script>   --%>
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/jquery-1.11.1.min.js"></script>
    <%--<script type="text/javascript"src="<%= request.getContextPath()%>/Scripts/jquery.1.4.2-min.js"></script>--%>
    <%--<script type="text/javascript"src="<%= request.getContextPath()%>/Scripts/n_nav.js"></script>--%>


    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/n_nav.js"></script>
    
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/Css/shopshow.css" />
    
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/shade.js"></script>   <!-- 控制弹窗 -->
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/jquery.1.4.2-min.js"></script>

    <!--星级评价1.4的jquery就行-->
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/back/assets/xingji/demo/css/application.css">
    <script type="text/javascript" src="<%=request.getContextPath()%>/back/assets/xingji/lib/jquery.raty.js"></script>
    <!--评价分页-->
    <link href="<%=request.getContextPath()%>/back/assets/pages/css/page.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="<%=request.getContextPath()%>/back/assets/pages/js/page.js"></script>

    <title>商品详情</title>
<style type="text/css">
.preview1{width:400px; height:465px;}
/* bigImg1 */
.bigImg1{position:relative; float:left; width:400px; height:400px; overflow:hidden;}
.bigImg1 #midimg1{width:400px; height:400px;}
.bigImg1 #winSelector1{width:235px; height:210px;}
#winSelector1{position:absolute; cursor:crosshair; filter:alpha(opacity=15); -moz-opacity:0.15; opacity:0.15; background-color:#000; border:1px solid #fff;}
/* bigView1 */
#bigView1{position:absolute;border: 1px solid #959595; overflow: hidden; z-index:999;}
#bigView1 img{position:absolute;}

.conbox{ display:none; padding:20px;}
.pro_con {
    border-right-width: 1px;
    border-bottom-width: 1px;
    border-left-width: 1px;
    border-right-style: solid;
    border-bottom-style: solid;
    border-left-style: solid;
    border-right-color: #E8E8E8;
    border-bottom-color: #E8E8E8;
    border-left-color: #E8E8E8;
    padding-bottom: 30px;
}

.pro_tab {
    overflow: hidden;
    border: 1px solid #E8E8E8;
}
.pro_tab ul {
    display: block;
}
.pro_tab ul li {
    float: left;
    height: 45px;
    width: 140px;
    line-height: 45px;
    text-align: center;
    border-right-width: 1px;
    border-right-style: solid;
    border-right-color: #E8E8E8;
    background-color: #F9F7F8;
    display: block;
    margin-bottom: -3px;
}

.pro_tab .cur {
    border-top-width: 3px;
    border-top-style: solid;
    border-top-color: #ff4e00;
    background-color: #FFF;
    color: #ff4e00;
    font-weight: bold;
}
.ping {
    height: 30px;
    width: 30px;
    margin-right: 10px;
}
    /*宝贝分类*/
.box{ width:208px; height: auto; border: solid 1px #cccccc;}
.Collapsing{ width: 100%;padding:0; margin:0; height: 30px; line-height: 30px; cursor: pointer; border-bottom: 1px solid white; text-align: center; background-repeat: no-repeat;  background-position: center right no-repeat; background-image: url(<%=request.getContextPath()%>/back/assets/dpfl/images/pro_left.png); background-color: #949090; color: #fff; }
.coll_body{display: none; }
.coll_body a{display:block; margin:10px; text-align: center; background: #f5f4f4;}
.coll_body h4{ width: 100%; height: 30px; line-height: 30px; cursor: pointer; border-bottom: 1px solid white; text-align: center; background-repeat:  no-repeat;  background-position: center right no-repeat; background-image: url(<%=request.getContextPath()%>/back/assets/dpfl/images/pro_left.png); background-color: #BDBDBD; color: #fff; }
.boxcurrent{background-image:url(<%=request.getContextPath()%>/back/assets/dpfl/images/pro_down.png);}
 /*多省略号代替出来的文字以*/
 .slh-text {
     overflow: hidden; /*内容超出后隐藏*/
     text-overflow: ellipsis; /* 超出内容显示为省略号*/
     white-space: nowrap; /*文本不进行换行*/
 }
</style>
<script type="text/javascript">
    $(document).ready(function(){
    // 图片上下滚动
    var count = $("#imageMenu li").length - 5; /* 显示 6 个 li标签内容 */
    var interval = $("#imageMenu li:first").width();
    var curIndex = 0;
    $('.scrollbutton').click(function(){
        if( $(this).hasClass('disabled') ) return false;
        if ($(this).hasClass('smallImgUp')) --curIndex;
        else ++curIndex;
        $('.scrollbutton').removeClass('disabled');
        if (curIndex == 0) $('.smallImgUp').addClass('disabled');
        if (curIndex == count-1) $('.smallImgDown').addClass('disabled');
        $("#imageMenu ul").stop(false, true).animate({"marginLeft" : -curIndex*interval + "px"}, 600);
    }); 
    // 解决 ie6 select框 问题
    $.fn.decorateIframe = function(options) {
        if ($.browser.msie && $.browser.version < 7) {
            var opts = $.extend({}, $.fn.decorateIframe.defaults, options);
            $(this).each(function() {
                var $myThis = $(this);
                //创建一个IFRAME
                var divIframe = $("<iframe />");
                divIframe.attr("id", opts.iframeId);
                divIframe.css("position", "absolute");
                divIframe.css("display", "none");
                divIframe.css("display", "block");
                divIframe.css("z-index", opts.iframeZIndex);
                divIframe.css("border");
                divIframe.css("top", "0");
                divIframe.css("left", "0");
                if (opts.width == 0) {
                    divIframe.css("width", $myThis.width() + parseInt($myThis.css("padding")) * 2 + "px");
                }
                if (opts.height == 0) {
                    divIframe.css("height", $myThis.height() + parseInt($myThis.css("padding")) * 2 + "px");
                }
                divIframe.css("filter", "mask(color=#fff)");
                $myThis.append(divIframe);
            });
        }
    }
    $.fn.decorateIframe.defaults = {
        iframeId: "decorateIframe1",
        iframeZIndex: -1,
        width: 0,
        height: 0
    }
    //放大镜视窗
    $("#bigView1").decorateIframe();
    //点击到中图
    var midChangeHandler = null;
    $("#imageMenu li img").bind("click", function(){
        if ($(this).attr("id") != "onlickImg") {
            midChange($(this).attr("src").replace("small", "mid"));
            $("#imageMenu li").removeAttr("id");
            $(this).parent().attr("id", "onlickImg");
        }
    }).bind("mouseover", function(){
        if ($(this).attr("id") != "onlickImg") {
            window.clearTimeout(midChangeHandler);
            midChange($(this).attr("src").replace("small", "mid"));
            $(this).css({ "border": "3px solid #959595" });
        }
    }).bind("mouseout", function(){
        if($(this).attr("id") != "onlickImg"){
            $(this).removeAttr("style");
            midChangeHandler = window.setTimeout(function(){
                midChange($("#onlickImg img").attr("src").replace("small", "mid"));
            }, 1000);
        }
    });
    function midChange(src) {
        $("#midimg1").attr("src", src).load(function() {
            changeViewImg();
        });
    }
    //大视窗看图
    function mouseover(e) {
        if ($("#winSelector1").css("display") == "none") {
            $("#winSelector1,#bigView1").show();
        }
        $("#winSelector1").css(fixedPosition(e));
        e.stopPropagation();
    }
    function mouseOut(e) {
        if ($("#winSelector1").css("display") != "none") {
            $("#winSelector1,#bigView1").hide();
        }
        e.stopPropagation();
    }
    $("#midimg1").mouseover(mouseover); //中图事件
    $("#midimg1,#winSelector1").mousemove(mouseover).mouseout(mouseOut); //选择器事件
    var $divWidth = $("#winSelector1").width(); //选择器宽度
    var $divHeight = $("#winSelector1").height(); //选择器高度
    var $imgWidth = $("#midimg1").width(); //中图宽度
    var $imgHeight = $("#midimg1").height(); //中图高度
    var $viewImgWidth = $viewImgHeight = $height = null; //IE加载后才能得到 大图宽度 大图高度 大图视窗高度
    function changeViewImg() {
        $("#bigView1 img").attr("src", $("#midimg1").attr("src").replace("mid", "big"));
    }
    changeViewImg();
    $("#bigView1").scrollLeft(0).scrollTop(0);
    function fixedPosition(e) {
        if (e == null) {
            return;
        }
        var $imgLeft = $("#midimg1").offset().left; //中图左边距
        var $imgTop = $("#midimg1").offset().top; //中图上边距
        X = e.pageX - $imgLeft - $divWidth / 2; //selector顶点坐标 X
        Y = e.pageY - $imgTop - $divHeight / 2; //selector顶点坐标 Y
        X = X < 0 ? 0 : X;
        Y = Y < 0 ? 0 : Y;
        X = X + $divWidth > $imgWidth ? $imgWidth - $divWidth : X;
        Y = Y + $divHeight > $imgHeight ? $imgHeight - $divHeight : Y;
        if ($viewImgWidth == null) {
            $viewImgWidth = $("#bigView1 img").outerWidth();
            $viewImgHeight = $("#bigView1 img").height();
            if ($viewImgWidth < 200 || $viewImgHeight < 200) {
                $viewImgWidth = $viewImgHeight = 800;
            }
            $height = $divHeight * $viewImgHeight / $imgHeight;
            $("#bigView1").width($divWidth * $viewImgWidth / $imgWidth);
            $("#bigView1").height($height);
        }
        var scrollX = X * $viewImgWidth / $imgWidth;
        var scrollY = Y * $viewImgHeight / $imgHeight;
        $("#bigView1 img").css({ "left": scrollX * -1, "top": scrollY * -1 });
        $("#bigView1").css({ "top": 230, "left": $(".preview1").offset().left + $(".preview1").width() + 15 });
        return { left: X, top: Y };
    }
});
    /*宝贝分类*/
    $(function(){
        $(".coll_body").eq(0).show();
        $(".Collapsing").click(function(){
            $(this).toggleClass("boxcurrent").siblings('.Collapsing').removeClass("boxcurrent");//切换图标
            $(this).next(".coll_body").slideToggle(500).siblings(".coll_body").slideUp(500);
        });
    });
</script>
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
            <span class="fl">你好，请<a href="<%= request.getContextPath()%>/Login.html">登录</a>&nbsp; <a href="<%= request.getContextPath()%>/Regist.html" style="color:#ff4e00;">免费注册</a>&nbsp;<!-- |&nbsp;<a href="<%= request.getContextPath()%>/#">我的订单</a>&nbsp; -->|</span>
            <span class="ss">
                <div class="ss_list">
                    <a href="<%= request.getContextPath()%>/#">我的</a>
                    <div class="ss_list_bg">
                        <div class="s_city_t"></div>
                        <div class="ss_list_c">
                            <ul>
                                <li><a href="<%= request.getContextPath()%>/#">我的订单</a></li>
                                <li><a href="<%= request.getContextPath()%>/#">我的消息</a></li>
                                <li><a href="<%= request.getContextPath()%>/#">我的收藏夹</a></li>
                            </ul>
                        </div>
                    </div>     
                </div>
                <div class="ss_list">
                    <a href="<%= request.getContextPath()%>/#">客户服务</a>
                    <div class="ss_list_bg">
                        <div class="s_city_t"></div>
                        <div class="ss_list_c">
                            <ul>
                                <li><a href="<%= request.getContextPath()%>/#">客户服务</a></li>
                                <li><a href="<%= request.getContextPath()%>/#">客户服务</a></li>
                                <li><a href="<%= request.getContextPath()%>/#">客户服务</a></li>
                            </ul>
                        </div>
                    </div>    
                </div>
                <div class="ss_list">
                    <a href="<%= request.getContextPath()%>/#">网站导航</a>
                    <div class="ss_list_bg">
                        <div class="s_city_t"></div>
                        <div class="ss_list_c">
                            <ul>
                                <li><a href="<%= request.getContextPath()%>/#">网站导航</a></li>
                                <li><a href="<%= request.getContextPath()%>/#">网站导航</a></li>
                                <li><a href="<%= request.getContextPath()%>/#">网站导航</a></li>
                            </ul>
                        </div>
                    </div>    
                </div>
            </span>

    </div>
</div>
<div class="top">
    <div class="logo"><a href="<%= request.getContextPath()%>/Index.html"><img src="<%= request.getContextPath()%>/Picture/logo.png" /></a></div>
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
        <%--<div class="search_area" id="search_area">
            <p style="display: block"><input type="text" value="" id="" class="input_1" placeholder="输入商品名称" /><button class="button_search_1">搜索</button></p>
            <p><input type="text" value="" id="" class="input_2" placeholder="输入店铺名称" /><button class="button_search_2">搜索</button></p>
        </div> --%>
        <span class="fl" style="margin-left: 10px;"><a href="<%= request.getContextPath()%>/#">咖啡</a><a href="<%= request.getContextPath()%>/#">iphone 6S</a><a href="<%= request.getContextPath()%>/#">新鲜美食</a><a href="<%= request.getContextPath()%>/#">蛋糕</a><a href="<%= request.getContextPath()%>/#">日用品</a><a href="<%= request.getContextPath()%>/#">连衣裙</a></span>
    </div></div>
    <div class="i_car">
        <div class="car_t">购物车 [ <span>3</span> ]</div>
        <div class="car_bg">
            <!--Begin 购物车未登录 Begin-->
            <div class="un_login">还未登录！<a href="<%= request.getContextPath()%>/Login.html" style="color:#ff4e00;">马上登录</a> 查看购物车！</div>
            <!--End 购物车未登录 End-->
            <!--Begin 购物车已登录 Begin-->
            <ul class="cars">
                <li>
                    <div class="img"><a href="<%= request.getContextPath()%>/#"><img src="<%= request.getContextPath()%>/Picture/car1.jpg" width="58" height="58" /></a></div>
                    <div class="name"><a href="<%= request.getContextPath()%>/#">法颂浪漫梦境50ML 香水女士持久清新淡香 送2ML小样3只</a></div>
                    <div class="price"><font color="#ff4e00">￥399</font> X1</div>
                </li>
            </ul>
            <div class="price_sum">共计&nbsp; <font color="#ff4e00">￥</font><span>1058</span></div>
            <div class="price_a"><a href="<%= request.getContextPath()%>/#">去购物车结算</a></div>
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
                    <li>
                    	<div class="fj">
                        	<span class="n_img"><span></span><img src="<%= request.getContextPath()%>/Picture/nav1.png" /></span>
                            <span class="fl">进口食品、生鲜</span>
                        </div>
                        <div class="zj">
                            <div class="zj_l">
                                <div class="zj_l_c">
                                    <h2>零食 / 糖果 / 巧克力</h2>
                                    <a href="<%= request.getContextPath()%>/#">坚果</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|<a href="<%= request.getContextPath()%>/#">牛肉干</a>|<a href="<%= request.getContextPath()%>/#">巧克力</a>|
                                    <a href="<%= request.getContextPath()%>/#">口香糖</a>|<a href="<%= request.getContextPath()%>/#">海苔</a>|<a href="<%= request.getContextPath()%>/#">鱼干</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|
                                    <a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|<a href="<%= request.getContextPath()%>/#">牛肉干</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|
                                </div>
                                <div class="zj_l_c">
                                    <h2>零食 / 糖果 / 巧克力</h2>
                                    <a href="<%= request.getContextPath()%>/#">坚果</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|<a href="<%= request.getContextPath()%>/#">牛肉干</a>|<a href="<%= request.getContextPath()%>/#">巧克力</a>|
                                    <a href="<%= request.getContextPath()%>/#">口香糖</a>|<a href="<%= request.getContextPath()%>/#">海苔</a>|<a href="<%= request.getContextPath()%>/#">鱼干</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|
                                    <a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|<a href="<%= request.getContextPath()%>/#">牛肉干</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|
                                </div>
                                <div class="zj_l_c">
                                    <h2>零食 / 糖果 / 巧克力</h2>
                                    <a href="<%= request.getContextPath()%>/#">坚果</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|<a href="<%= request.getContextPath()%>/#">牛肉干</a>|<a href="<%= request.getContextPath()%>/#">巧克力</a>|
                                    <a href="<%= request.getContextPath()%>/#">口香糖</a>|<a href="<%= request.getContextPath()%>/#">海苔</a>|<a href="<%= request.getContextPath()%>/#">鱼干</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|
                                    <a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|<a href="<%= request.getContextPath()%>/#">牛肉干</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|
                                </div>
                                <div class="zj_l_c">
                                    <h2>零食 / 糖果 / 巧克力</h2>
                                    <a href="<%= request.getContextPath()%>/#">坚果</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|<a href="<%= request.getContextPath()%>/#">牛肉干</a>|<a href="<%= request.getContextPath()%>/#">巧克力</a>|
                                    <a href="<%= request.getContextPath()%>/#">口香糖</a>|<a href="<%= request.getContextPath()%>/#">海苔</a>|<a href="<%= request.getContextPath()%>/#">鱼干</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|
                                    <a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|<a href="<%= request.getContextPath()%>/#">牛肉干</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|
                                </div>
                                <div class="zj_l_c">
                                    <h2>零食 / 糖果 / 巧克力</h2>
                                    <a href="<%= request.getContextPath()%>/#">坚果</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|<a href="<%= request.getContextPath()%>/#">牛肉干</a>|<a href="<%= request.getContextPath()%>/#">巧克力</a>|
                                    <a href="<%= request.getContextPath()%>/#">口香糖</a>|<a href="<%= request.getContextPath()%>/#">海苔</a>|<a href="<%= request.getContextPath()%>/#">鱼干</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|
                                    <a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|<a href="<%= request.getContextPath()%>/#">牛肉干</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|
                                </div>
                                <div class="zj_l_c">
                                    <h2>零食 / 糖果 / 巧克力</h2>
                                    <a href="<%= request.getContextPath()%>/#">坚果</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|<a href="<%= request.getContextPath()%>/#">牛肉干</a>|<a href="<%= request.getContextPath()%>/#">巧克力</a>|
                                    <a href="<%= request.getContextPath()%>/#">口香糖</a>|<a href="<%= request.getContextPath()%>/#">海苔</a>|<a href="<%= request.getContextPath()%>/#">鱼干</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|
                                    <a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|<a href="<%= request.getContextPath()%>/#">牛肉干</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|
                                </div>
                            </div>
                            <div class="zj_r">
                                <a href="<%= request.getContextPath()%>/#"><img src="<%= request.getContextPath()%>/Picture/n_img1.jpg" width="236" height="200" /></a>
                                <a href="<%= request.getContextPath()%>/#"><img src="<%= request.getContextPath()%>/Picture/n_img2.jpg" width="236" height="200" /></a>
                            </div>
                        </div>
                    </li>
                    <li>
                    	<div class="fj">
                        	<span class="n_img"><span></span><img src="<%= request.getContextPath()%>/Picture/nav2.png" /></span>
                            <span class="fl">食品、饮料、酒</span>
                        </div>
                        <div class="zj" style="top:-40px;">
                            <div class="zj_l">
                                <div class="zj_l_c">
                                    <h2>零食 / 糖果 / 巧克力2</h2>
                                    <a href="<%= request.getContextPath()%>/#">坚果</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|<a href="<%= request.getContextPath()%>/#">牛肉干</a>|<a href="<%= request.getContextPath()%>/#">巧克力</a>|
                                    <a href="<%= request.getContextPath()%>/#">口香糖</a>|<a href="<%= request.getContextPath()%>/#">海苔</a>|<a href="<%= request.getContextPath()%>/#">鱼干</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|
                                    <a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|<a href="<%= request.getContextPath()%>/#">牛肉干</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|
                                </div>
                                <div class="zj_l_c">
                                    <h2>零食 / 糖果 / 巧克力</h2>
                                    <a href="<%= request.getContextPath()%>/#">坚果</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|<a href="<%= request.getContextPath()%>/#">牛肉干</a>|<a href="<%= request.getContextPath()%>/#">巧克力</a>|
                                    <a href="<%= request.getContextPath()%>/#">口香糖</a>|<a href="<%= request.getContextPath()%>/#">海苔</a>|<a href="<%= request.getContextPath()%>/#">鱼干</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|
                                    <a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|<a href="<%= request.getContextPath()%>/#">牛肉干</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|
                                </div>
                            </div>
                            <div class="zj_r">
                                <a href="<%= request.getContextPath()%>/#"><img src="<%= request.getContextPath()%>/Picture/n_img1.jpg" width="236" height="200" /></a>
                                <a href="<%= request.getContextPath()%>/#"><img src="<%= request.getContextPath()%>/Picture/n_img2.jpg" width="236" height="200" /></a>
                            </div>
                        </div>
                    </li>
                    <li>
                    	<div class="fj">
                        	<span class="n_img"><span></span><img src="<%= request.getContextPath()%>/Picture/nav3.png" /></span>
                            <span class="fl">母婴、玩具、童装</span>
                        </div>
                        <div class="zj" style="top:-80px;">
                            <div class="zj_l">
                                <div class="zj_l_c">
                                    <h2>零食 / 糖果 / 巧克力3</h2>
                                    <a href="<%= request.getContextPath()%>/#">坚果</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|<a href="<%= request.getContextPath()%>/#">牛肉干</a>|<a href="<%= request.getContextPath()%>/#">巧克力</a>|
                                    <a href="<%= request.getContextPath()%>/#">口香糖</a>|<a href="<%= request.getContextPath()%>/#">海苔</a>|<a href="<%= request.getContextPath()%>/#">鱼干</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|
                                    <a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|<a href="<%= request.getContextPath()%>/#">牛肉干</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|
                                </div>
                            </div>
                            <div class="zj_r">
                                <a href="<%= request.getContextPath()%>/#"><img src="<%= request.getContextPath()%>/Picture/n_img1.jpg" width="236" height="200" /></a>
                                <a href="<%= request.getContextPath()%>/#"><img src="<%= request.getContextPath()%>/Picture/n_img2.jpg" width="236" height="200" /></a>
                            </div>
                        </div>
                    </li>
                    <li>
                    	<div class="fj">
                        	<span class="n_img"><span></span><img src="<%= request.getContextPath()%>/Picture/nav4.png" /></span>
                            <span class="fl">家居、家庭清洁、纸品</span>
                        </div>
                        <div class="zj" style="top:-120px;">
                            <div class="zj_l">
                                <div class="zj_l_c">
                                    <h2>零食 / 糖果 / 巧克力4</h2>
                                    <a href="<%= request.getContextPath()%>/#">坚果</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|<a href="<%= request.getContextPath()%>/#">牛肉干</a>|<a href="<%= request.getContextPath()%>/#">巧克力</a>|
                                    <a href="<%= request.getContextPath()%>/#">口香糖</a>|<a href="<%= request.getContextPath()%>/#">海苔</a>|<a href="<%= request.getContextPath()%>/#">鱼干</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|
                                    <a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|<a href="<%= request.getContextPath()%>/#">牛肉干</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|
                                </div>
                            </div>
                            <div class="zj_r">
                                <a href="<%= request.getContextPath()%>/#"><img src="<%= request.getContextPath()%>/Picture/n_img1.jpg" width="236" height="200" /></a>
                                <a href="<%= request.getContextPath()%>/#"><img src="<%= request.getContextPath()%>/Picture/n_img2.jpg" width="236" height="200" /></a>
                            </div>
                        </div>
                    </li>
                    <li>
                    	<div class="fj">
                        	<span class="n_img"><span></span><img src="<%= request.getContextPath()%>/Picture/nav5.png" /></span>
                            <span class="fl">美妆、个人护理、洗护</span>
                        </div>
                        <div class="zj" style="top:-160px;">
                            <div class="zj_l">
                                <div class="zj_l_c">
                                    <h2>零食 / 糖果 / 巧克力5</h2>
                                    <a href="<%= request.getContextPath()%>/#">坚果</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|<a href="<%= request.getContextPath()%>/#">牛肉干</a>|<a href="<%= request.getContextPath()%>/#">巧克力</a>|
                                    <a href="<%= request.getContextPath()%>/#">口香糖</a>|<a href="<%= request.getContextPath()%>/#">海苔</a>|<a href="<%= request.getContextPath()%>/#">鱼干</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|
                                    <a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|<a href="<%= request.getContextPath()%>/#">牛肉干</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|
                                </div>
                            </div>
                            <div class="zj_r">
                                <a href="<%= request.getContextPath()%>/#"><img src="<%= request.getContextPath()%>/Picture/n_img1.jpg" width="236" height="200" /></a>
                                <a href="<%= request.getContextPath()%>/#"><img src="<%= request.getContextPath()%>/Picture/n_img2.jpg" width="236" height="200" /></a>
                            </div>
                        </div>
                    </li>
                    <li>
                    	<div class="fj">
                        	<span class="n_img"><span></span><img src="<%= request.getContextPath()%>/Picture/nav6.png" /></span>
                            <span class="fl">女装、内衣、中老年</span>
                        </div>
                        <div class="zj" style="top:-200px;">
                            <div class="zj_l">
                                <div class="zj_l_c">
                                    <h2>零食 / 糖果 / 巧克力6</h2>
                                    <a href="<%= request.getContextPath()%>/#">坚果</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|<a href="<%= request.getContextPath()%>/#">牛肉干</a>|<a href="<%= request.getContextPath()%>/#">巧克力</a>|
                                    <a href="<%= request.getContextPath()%>/#">口香糖</a>|<a href="<%= request.getContextPath()%>/#">海苔</a>|<a href="<%= request.getContextPath()%>/#">鱼干</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|
                                    <a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|<a href="<%= request.getContextPath()%>/#">牛肉干</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|
                                </div>
                            </div>
                            <div class="zj_r">
                                <a href="<%= request.getContextPath()%>/#"><img src="<%= request.getContextPath()%>/Picture/n_img1.jpg" width="236" height="200" /></a>
                                <a href="<%= request.getContextPath()%>/#"><img src="<%= request.getContextPath()%>/Picture/n_img2.jpg" width="236" height="200" /></a>
                            </div>
                        </div>
                    </li>
                    <li>
                    	<div class="fj">
                        	<span class="n_img"><span></span><img src="<%= request.getContextPath()%>/Picture/nav7.png" /></span>
                            <span class="fl">鞋靴、箱包、腕表配饰</span>
                        </div>
                        <div class="zj" style="top:-240px;">
                            <div class="zj_l">
                                <div class="zj_l_c">
                                    <h2>零食 / 糖果 / 巧克力7</h2>
                                    <a href="<%= request.getContextPath()%>/#">坚果</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|<a href="<%= request.getContextPath()%>/#">牛肉干</a>|<a href="<%= request.getContextPath()%>/#">巧克力</a>|
                                    <a href="<%= request.getContextPath()%>/#">口香糖</a>|<a href="<%= request.getContextPath()%>/#">海苔</a>|<a href="<%= request.getContextPath()%>/#">鱼干</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|
                                    <a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|<a href="<%= request.getContextPath()%>/#">牛肉干</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|
                                </div>
                            </div>
                            <div class="zj_r">
                                <a href="<%= request.getContextPath()%>/#"><img src="<%= request.getContextPath()%>/Picture/n_img1.jpg" width="236" height="200" /></a>
                                <a href="<%= request.getContextPath()%>/#"><img src="<%= request.getContextPath()%>/Picture/n_img2.jpg" width="236" height="200" /></a>
                            </div>
                        </div>
                    </li>
                    <li>
                    	<div class="fj">
                        	<span class="n_img"><span></span><img src="<%= request.getContextPath()%>/Picture/nav8.png" /></span>
                            <span class="fl">男装、运动</span>
                        </div>
                        <div class="zj" style="top:-280px;">
                            <div class="zj_l">
                                <div class="zj_l_c">
                                    <h2>零食 / 糖果 / 巧克力8</h2>
                                    <a href="<%= request.getContextPath()%>/#">坚果</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|<a href="<%= request.getContextPath()%>/#">牛肉干</a>|<a href="<%= request.getContextPath()%>/#">巧克力</a>|
                                    <a href="<%= request.getContextPath()%>/#">口香糖</a>|<a href="<%= request.getContextPath()%>/#">海苔</a>|<a href="<%= request.getContextPath()%>/#">鱼干</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|
                                    <a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|<a href="<%= request.getContextPath()%>/#">牛肉干</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|
                                </div>
                            </div>
                            <div class="zj_r">
                                <a href="<%= request.getContextPath()%>/#"><img src="<%= request.getContextPath()%>/Picture/n_img1.jpg" width="236" height="200" /></a>
                                <a href="<%= request.getContextPath()%>/#"><img src="<%= request.getContextPath()%>/Picture/n_img2.jpg" width="236" height="200" /></a>
                            </div>
                        </div>
                    </li>
                    <li>
                    	<div class="fj">
                        	<span class="n_img"><span></span><img src="<%= request.getContextPath()%>/Picture/nav9.png" /></span>
                            <span class="fl">手机、小家电、电脑</span>
                        </div>
                        <div class="zj" style="top:-320px;">
                            <div class="zj_l">
                                <div class="zj_l_c">
                                    <h2>零食 / 糖果 / 巧克力9</h2>
                                    <a href="<%= request.getContextPath()%>/#">坚果</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|<a href="<%= request.getContextPath()%>/#">牛肉干</a>|<a href="<%= request.getContextPath()%>/#">巧克力</a>|
                                    <a href="<%= request.getContextPath()%>/#">口香糖</a>|<a href="<%= request.getContextPath()%>/#">海苔</a>|<a href="<%= request.getContextPath()%>/#">鱼干</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|
                                    <a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|<a href="<%= request.getContextPath()%>/#">牛肉干</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|
                                </div>
                            </div>
                            <div class="zj_r">
                                <a href="<%= request.getContextPath()%>/#"><img src="<%= request.getContextPath()%>/Picture/n_img1.jpg" width="236" height="200" /></a>
                                <a href="<%= request.getContextPath()%>/#"><img src="<%= request.getContextPath()%>/Picture/n_img2.jpg" width="236" height="200" /></a>
                            </div>
                        </div>
                    </li>                    
                    <li>
                    	<div class="fj">
                        	<span class="n_img"><span></span><img src="<%= request.getContextPath()%>/Picture/nav10.png" /></span>
                            <span class="fl">礼品、充值</span>
                        </div>
                        <div class="zj" style="top:-360px;">
                            <div class="zj_l">
                                <div class="zj_l_c">
                                    <h2>零食 / 糖果 / 巧克力10</h2>
                                    <a href="<%= request.getContextPath()%>/#">坚果</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|<a href="<%= request.getContextPath()%>/#">牛肉干</a>|<a href="<%= request.getContextPath()%>/#">巧克力</a>|
                                    <a href="<%= request.getContextPath()%>/#">口香糖</a>|<a href="<%= request.getContextPath()%>/#">海苔</a>|<a href="<%= request.getContextPath()%>/#">鱼干</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|
                                    <a href="<%= request.getContextPath()%>/#">蜜饯</a>|<a href="<%= request.getContextPath()%>/#">红枣</a>|<a href="<%= request.getContextPath()%>/#">牛肉干</a>|<a href="<%= request.getContextPath()%>/#">蜜饯</a>|
                                </div>
                            </div>
                            <div class="zj_r">
                                <a href="<%= request.getContextPath()%>/#"><img src="<%= request.getContextPath()%>/Picture/n_img1.jpg" width="236" height="200" /></a>
                                <a href="<%= request.getContextPath()%>/#"><img src="<%= request.getContextPath()%>/Picture/n_img2.jpg" width="236" height="200" /></a>
                            </div>
                        </div>
                    </li>                    	
                </ul>            
            </div>
        </div>  
        <!--End 商品分类详情 End-->                                                     
    	<ul class="menu_r">
        	<li><a href="<%= request.getContextPath()%>/index">首页</a></li>
            <li><a href="<%= request.getContextPath()%>/Food.html">美食</a></li>
            <li><a href="<%= request.getContextPath()%>/Fresh.html">生鲜</a></li>
            <li><a href="<%= request.getContextPath()%>/HomeDecoration.html">家居</a></li>
            <li><a href="<%= request.getContextPath()%>/SuitDress.html">女装</a></li>
            <li><a href="<%= request.getContextPath()%>/MakeUp.html">美妆</a></li>
            <li><a href="<%= request.getContextPath()%>/Digital.html">数码</a></li>
            <li><a href="<%= request.getContextPath()%>/GroupBuying.html">团购</a></li>
        </ul>
        <div class="m_ad">商品详情</div>
    </div>
</div>
<!--End Menu End--> 

<div class="i_bg">
	<div class="postion">
        <span class="fl">全部 > ${Product.big} > ${Product.small} > ${Product.secend} > <span title="${Product.productname}">${Product.productname}</span> </span>
    </div>    
    <div class="content">
        <div id="tsShopContainer">
            <div id="tsImgS">
                <div class="preview1">
                    <div id="vertical" class="bigImg1">
                        <img src="<%= request.getContextPath()%>/Picture/05.jpg" width="500" height="500" alt="" id="midimg1" />
                        <div style="display:none;" id="winSelector1"></div>
                    </div>
                <!--bigImg1 end-->   
                    <div id="bigView1" style="display:none;"><img width="800" height="800" alt=""src="<%= request.getContextPath()%>/" /></div>
                </div>
                <!--头部图片展示-->
                <%--<c:forEach items="${fn:split(Product.headershow,';')}" var="detail" begin="0" end="${fn:length(fn:split(Product.headershow,';'))}" varStatus="stat">
                    <img src="${detail}" width="746" height="425" /><br /><br />
                </c:forEach>--%>
            </div>
            <div id="tsPicContainer">
                
            </div>
        </div>
        
        <div class="pro_des">
            <div class="des_name">
                <p>${Product.productname}</p>
                “开业巨惠，北京专柜直供”，不光低价，“真”才靠谱！
            </div>
            <div class="des_price">
                本店价格：<b>￥${Product.price}</b><br />
                累计销量:<span>${Product.salesvolu}&nbsp;&nbsp;<img src="<%=request.getContextPath()%>/Images/location.png">${Product.cityname}</span>
            </div>
            <div class="des_choice">
            	<span class="fl">型号选择：</span>
                <ul>
                	<li class="checked">30ml<div class="ch_img"></div></li>
                    <li>50ml<div class="ch_img"></div></li>
                    <li>100ml<div class="ch_img"></div></li>
                </ul>
            </div>
            <div class="des_choice">
            	<span class="fl">颜色选择：</span>
                <ul>
                	<li class="checked">红色<div class="ch_img"></div></li>
                    <li class="">白色<div class="ch_img"></div></li>
                    <li>黑色<div class="ch_img"></div></li>
                </ul>
            </div>
            <div class="des_share">
            	<div class="d_sh">
                	分享
                    <div class="d_sh_bg">
                    	<a href="<%= request.getContextPath()%>/#"><img src="<%= request.getContextPath()%>/Picture/sh_1.gif" /></a>
                        <a href="<%= request.getContextPath()%>/#"><img src="<%= request.getContextPath()%>/Picture/sh_2.gif" /></a>
                        <a href="<%= request.getContextPath()%>/#"><img src="<%= request.getContextPath()%>/Picture/sh_3.gif" /></a>
                        <a href="<%= request.getContextPath()%>/#"><img src="<%= request.getContextPath()%>/Picture/sh_4.gif" /></a>
                        <a href="<%= request.getContextPath()%>/#"><img src="<%= request.getContextPath()%>/Picture/sh_5.gif" /></a>
                    </div>
                </div>
                <div class="d_care"><a>关注商品</a></div><!--onclick="ShowDiv('MyDiv','fade')"-->
            </div>
            <div class="des_join">
            	<div class="j_nums">
                	<input type="text" value="1" name="" class="n_ipt" />
                    <input type="button" value="" <%--onclick="addUpdate(jq(this))";--%> class="n_btn_1" />
                    <input type="button" value="" <%--onclick="jianUpdate(jq(this));"--%> class="n_btn_2" />
                </div>
                <span class="fl"><a ><img src="<%= request.getContextPath()%>/Picture/j_car.png" /></a></span>
                <!--onclick="ShowDiv_1('MyDiv1','fade1')"-->
            </div>            
        </div>
        <%--购物车--%>
        <script type="text/javascript">
            $(function() {
                /*参数选择*/

                $(".des_choice li").toggle(
                    function () {
                        $(this).addClass("checked").siblings().removeClass("checked");
                    },
                    function () {
                        $(this).removeClass("checked");
                    }
                );
                /*数量加减*/
                $(".n_btn_1").click(function(){
                    var num=$(this).parent().find(".n_ipt").val();
                    num=parseInt(num,10);
                    if(num>=0&&num<5){
                        num=num+1;
                        $(this).parent().find(".n_ipt").val(num);
                    }
                })
                $(".n_btn_2").click(function(){
                    var num=$(this).parent().find(".n_ipt").val();
                    if(num>=1){
                        num=num-1;
                        $(this).parent().find(".n_ipt").val(num);
                    }
                })
                /*点击添加*/
                $(".fl a").click(function(){
                    //判断参数是否添加
                    var cart_commodity_select="";
                    $(this).parents(".pro_des").find("li").each(function(){
                        if($(this).hasClass("checked")){
                            cart_commodity_select=cart_commodity_select+$(this).parents(".des_choice").find(".fl").text()+$(this).text()+",";
                        }
                    });
                    var cart_amount=$(this).parents(".pro_des").find(".n_ipt").val();//从页面获取
                    var cart_cid=${page.cid};
                    var cart_commodity_name="${Product.productname}";
                    var cart_commodity_pic="${Product.logo}";
                    cart_commodity_select;//从页面获取
                    var cart_shopname="${Product.shopname}";
                    var cart_sid=${Product.sid};
                    var cart_uid=1;
                    var cart_price=${Product.price};
                    var url = "<%=request.getContextPath()%>/addtocart";
                    if(cart_commodity_name!=null) {
                        var args = {"amount": cart_amount,"cid": cart_cid,"commodity_name": cart_commodity_name, "commodity_pic": cart_commodity_pic, "commodity_select":cart_commodity_select,"shopname": cart_shopname, "sid": cart_sid, "uid": cart_uid, "price": cart_price, "time": new Date()};
                        $.getJSON(url, args, function (data) {
                            var cart_zhong = data.num;
                            var cart_jian=data.jiannum;
                            var cart_money=data.money;
                            $(".cart_zhong").text(cart_zhong);
                            $(".cart_jian").text(cart_jian);
                            $(".cart_money").text(cart_money);
                            ShowDiv_1('MyDiv1', 'fade1');
                        });

                    }

                });

            });
        </script>
        <div class="s_brand">
            <div class="s_brand_img"><img src="${Product.shoplogo}"></div>
            <div class="s_brand_c"><a href="<%=request.getContextPath()%>/#"></a> <a href="">${Product.shopname}&nbsp;</a><span id="readOnly-shop"></span><br>
                <span>销量:${Product.salesvo}&nbsp;&nbsp;<img src="<%=request.getContextPath()%>/Images/location.png">${Product.cityname}</span>
            </div>
        </div>    
        
        
    </div>
    <div class="content mar_20">
    	<div class="l_history">
        	<div class="fav_t" style="height: 40px;font-size:20px;padding-left: 55px; ">用户还喜欢</div>
        	<ul>
                <c:forEach items="${hootList}" var="hoot">
                    <li>
                        <div class="img"><a href="<%=request.getContextPath()%>/product?cid=${hoot.cid}"><img src="${hoot.logo}" width="185" height="162" /></a></div>
                        <div class="name" title="${hoot.productname}"><a href="<%=request.getContextPath()%>/product?cid=${hoot.cid}">${hoot.productname}</a></div>
                        <div class="price">
                            <font>￥<span>${hoot.price}</span></font>
                        </div>
                    </li>
                </c:forEach>
        	</ul>
            <br/><br/>
            <div class="fav_t" style="height: 40px;font-size:20px;padding-left: 55px; ">宝贝分类</div>
            <div class="box">
                <c:forEach items="${ShopList}" var="BigCategory" varStatus="bigid" >
                <h3 class="Collapsing  boxcurrent">${BigCategory.big}</h3>
                <div class="coll_body">
                    <c:forEach items="${BigCategory.smallCategoryList}" var="SmallCategory" varStatus="samllid">
                    <h4 class="Collapsing">${SmallCategory.small}</h4>
                    <div class="coll_body">
                        <c:forEach items="${SmallCategory.categoryList}" var="Category" varStatus="secendid">
                        <a href="#">${Category.secend}</a>
                        </c:forEach>
                    </div>
                    </c:forEach>
                </div>
                </c:forEach>
            </div>
           <%-- <section class="ac-container">
                <c:forEach items="${ShopList}" var="BigCategory" varStatus="bigid" >
                    <div>
                        <input id="ac-${bigid.index}" name="accordion-1" type="checkbox" />
                        <label for="ac-${bigid.index}" style="padding-left: 5px">${BigCategory.big}</label>
                        <article class="ac-medium">
                            <c:forEach items="${BigCategory.smallCategoryList}" var="SmallCategory" varStatus="samllid">
                                <section class="ac-container">
                                    <div>
                                        <input id="ac-${bigid.index}${samllid.index}" name="accordion-1" type="checkbox" />
                                        <label for="ac-${bigid.index}${samllid.index}" >${SmallCategory.small}</label>
                                        <article class="ac-medium">
                                            <c:forEach items="${SmallCategory.categoryList}" var="Category" varStatus="secendid">
                                                <section class="ac-container">
                                                    <div>
                                                        <input id="ac-${bigid.index}${samllid.index}${secendid.index}" name="accordion-1" type="checkbox" />
                                                        <label style="padding-left: 35px" for="ac-${bigid.index}${samllid.index}${secendid.index}">${Category.secend}</label>
                                                    </div>
                                                </section>
                                            </c:forEach>
                                        </article>
                                    </div>
                                </section>
                            </c:forEach>
                        </article>
                    </div>
                </c:forEach>
            </section>--%>
        </div>
        <div class="l_list"> 
           <div class="des_border">
                <div class="des_tit">
                    <ul>
                        <li class="current">推荐搭配</li>
                    </ul>
                </div>
                <div class="team_list">
                    <div class="img"><a href="<%= request.getContextPath()%>/#"><img src="<%= request.getContextPath()%>/Picture/mat_1.jpg" width="160" height="140" /></a></div>
                    <div class="name"><a href="<%= request.getContextPath()%>/#">倩碧补水组合套装8折促销</a></div>
                    <div class="price">
                        <div class="checkbox"><input type="checkbox" name="zuhe" checked="checked" /></div>
                        <font>￥<span>768.00</span></font> &nbsp; 18R
                    </div>
                </div>
                <div class="team_icon"><img src="<%= request.getContextPath()%>/Picture/jia_b.gif" /></div>
                <div class="team_list">
                    <div class="img"><a href="<%= request.getContextPath()%>/#"><img src="<%= request.getContextPath()%>/Picture/mat_2.jpg" width="160" height="140" /></a></div>
                    <div class="name"><a href="<%= request.getContextPath()%>/#">香奈儿邂逅清新淡香水50ml</a></div>
                    <div class="price">
                        <div class="checkbox"><input type="checkbox" name="zuhe" /></div>
                        <font>￥<span>749.00</span></font> &nbsp; 18R
                    </div>
                </div>
                <div class="team_icon"><img src="<%= request.getContextPath()%>/Picture/jia_b.gif" /></div>
                <div class="team_list">
                    <div class="img"><a href="<%= request.getContextPath()%>/#"><img src="<%= request.getContextPath()%>/Picture/mat_3.jpg" width="160" height="140" /></a></div>
                    <div class="name"><a href="<%= request.getContextPath()%>/#">香奈儿邂逅清新淡香水50ml</a></div>
                    <div class="price">
                        <div class="checkbox"><input type="checkbox" name="zuhe" checked="checked" /></div>
                        <font>￥<span>749.00</span></font> &nbsp; 18R
                    </div>
                </div>
                <div class="team_icon"><img src="<%= request.getContextPath()%>/Picture/equl.gif" /></div>
                <div class="team_sum">
                    套餐价：￥<span>1517</span><br />
                    <input type="text" value="1" class="sum_ipt" /><br />
                    <a href="<%= request.getContextPath()%>/#"><img src="<%= request.getContextPath()%>/Picture/z_buy.gif" /></a> 
                </div>
                
            </div>

             <div class="pro_con margin-t55" style="overflow:hidden;">
                <div class="pro_tab">
                    <ul>
                        <li class="cur">产品介绍</li>
                        <li>规格及包装</li>
                        <li>评价</li>
                    </ul>
                </div>
                <div class="conlist">
                    <div class="conbox" style="display:block;">
                        <table border="0" align="center" style="width:745px; font-size:14px; font-family:'宋体';" cellspacing="0" cellpadding="0">
                      <tr>
                          <td width="206" height="412"><img src="${Product.logo}" width="206" height="412" /></td>
                          <td>
                              <span title="${Product.productname}">${Product.productname}</span><br />
                              <span>【商品规格】：5ml</span><br />
                              <span>【商品质地】：液体</span><br />
                              <span>【商品日期】：与专柜同步更新</span> <br />
                              <span>【商品产地】：法国</span><br />
                              <span>【商品包装】：无外盒 无塑封</span><br />
                              <span>【商品香调】：花束花香调</span><br />
                              <span>【适用人群】：适合女性（都市白领，性感，有女人味的成熟女性）<br />
                          </td>
                      </tr>
                    </table>

                        <p align="center">
                            <c:forEach items="${fn:split(Product.detailshow,';')}" var="detail" begin="0" end="${fn:length(fn:split(Product.detailshow,';'))}" varStatus="stat">
                               <div class="" style="width:746px; height:425px;"><img src="${detail}"/></div>
                            </c:forEach>

                        </p>
                    </div>
                    <div class="conbox">
                        <table border="0" align="center" style="width:100%; font-family:'宋体'; margin:10px auto;" cellspacing="0" cellpadding="0">
                          <tr>
                            <td title="${Product.productname}">商品名称：<span class="slh-text" style="width:300px;">${Product.productname}</span></td>
                            <td title="${Product.cid}">商品编号：${Product.cid}</td>
                            <td title="迪奥（Dior）">品牌： 迪奥（Dior）</td>
                          </tr>
                          <tr>
                            <td title="160.00g">商品毛重：160.00g</td>
                            <td title="法国">商品产地：法国</td>
                            <td title="果香调香型：淡香水/香露EDT">香调：果香调香型：淡香水/香露EDT</td>
                            <td >&nbsp;</td>
                          </tr>
                          <tr>
                            <td title="1ml-15ml">容量：1ml-15ml </td>
                            <td title="女士香水，Q版香水，组合套装">类型：女士香水，Q版香水，组合套装</td>
                            <td title="2015-09-06 09:19:09">上架时间：2015-09-06 09:19:09 </td>
                            <td >&nbsp;</td>
                          </tr>
                        </table>
                    
                    </div>
                    <div class="conbox">
                        <table border="0" class="jud_tab" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="175" class="jud_per">
                        <p>${page.gasslv}%</p>好评度
                    </td>
                    <td width="300">
                        <table border="0" style="width:100%;" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="90">好评<font color="#999999">（${page.gasslv}%）</font></td>
                            <td><img src="<%= request.getContextPath()%>/Picture/pl.gif" align="absmiddle" /></td>
                          </tr>
                          <tr>
                            <td>中评<font color="#999999">（${page.masslv}%）</font></td>
                            <td><img src="<%= request.getContextPath()%>/Picture/pl.gif" align="absmiddle" /></td>
                          </tr>
                          <tr>
                            <td>差评<font color="#999999">（${page.basslv}%）</font></td>
                            <td><img src="<%= request.getContextPath()%>/Picture/pl.gif" align="absmiddle" /></td>
                          </tr>
                        </table>
                    </td>
                    <td width="185" class="jud_bg">
                        购买过雅诗兰黛第六代特润精华露50ml的顾客，在收到商品才可以对该商品发表评论
                    </td>
                    <td class="jud_bg">您可对已购买商品进行评价<br /><a href="<%= request.getContextPath()%>/#"><img src="<%= request.getContextPath()%>/Picture/btn_jud.gif" /></a></td>
                  </tr>
                </table>
                

                <script type="text/javascript">
                    //实现异步刷新
                    $(function () {
                        //请求相册

                        $(".ping0").click(function () {
                                window.location.href= "<%=request.getContextPath()%>/product?cid=${page.cid}&ping=0&p=1";

                        });
                        $(".ping1").click(function () {
                            window.location.href= "<%=request.getContextPath()%>/product?cid=${page.cid}&ping=1&p=1";
                        });
                        $(".ping2").click(function () {
                            window.location.href= "<%=request.getContextPath()%>/product?cid=${page.cid}&ping=2&p=1";
                        });
                        $(".ping3").click(function () {
                            window.location.href= "<%=request.getContextPath()%>/product?cid=${page.cid}&ping=3&p=1";
                        });

                    })
                </script>
                        <div class="pro_con margin-t55" style="overflow:hidden;">
                            <div class="pro_tab">
                                <ul>
                                    <li class="cur">评价</li>
                                    <li>轮播图</li>
                                </ul>
                            </div>
                            <div class="conlist">
                                <div class="conbox" style="display:block;">
                                    <form border="0" class="jud_list" style="width:100%; margin-top:30px;" cellspacing="0" cellpadding="0">
                                        <input type="button" class="ping0" value="全部评价(${page.allassess}+)"/>
                                        <input type="button" class="ping1" value="好评(${page.gass}+)" />
                                        <input type="button" class="ping2" value="中评(${page.mass})" />
                                        <input type="button" class="ping3" value="差评(${page.bass})" />
                                    </form>
                                    <table class="content_Assess" border="0" class="jud_list" style="width:100%; margin-top:30px;" cellspacing="0" cellpadding="0">
                                        <c:forEach items="${AssessList}" var="assess">
                                            <tr valign="top">
                                                <td width="160"><img src="${assess.headerpic}" width="20" height="20" align="absmiddle" />&nbsp;${assess.username}<br />
                                                    <br/> <span class="assessreadOnly">${assess.grade}</span>
                                                </td>
                                                <td>
                                                        ${assess.hollrall} <br />
                                                        ${assess.detail}<br/>
                                                    <c:forEach items="${fn:split(assess.pics,';')}" var="pic" begin="0" end="${fn:length(fn:split(assess.pics,';'))}" varStatus="stat">
                                                        <a class="pic" href="${pic}"><img src="${pic}" class="ping"/></a>
                                                    </c:forEach>
                                                    <br/>
                                                    颜色分类：<font color="#999999">粉色</font>&nbsp;&nbsp;&nbsp;&nbsp;
                                                    型号：<font color="#999999">50ml</font>&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <font color="#999999">${assess.date}</font>
                                                    <hr style="border : 1px dashed #999999;" />
                                                    <span style="color: #FF4855">
                                                     <span class="boss-back">店主回复:</span><br>
                                                      ${assess.bossback}
                                                    </span>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </table>
                                    <script type="text/javascript">
                                        $(function(){
                                            var boss_back;
                                            if(${assess.bossback!=null}){
                                                boss_back=${assess.bossback};

                                            if(boss_back==null ||boss_back.length()<=0){
                                                $(".boss-back").hide();
                                            }
                                            }
                                        });
                                    </script>
                                    <%--
                                    <div class="pages">
                                        <a href="<%= request.getContextPath()%>/#" class="p_pre">上一页</a><a href="<%= request.getContextPath()%>/#" class="cur">1</a><a href="<%= request.getContextPath()%>/#">2</a><a href="<%= request.getContextPath()%>/#">3</a>...<a href="<%= request.getContextPath()%>/#">20</a><a href="<%= request.getContextPath()%>/#" class="p_pre">下一页</a>
                                    </div>
                                    --%>
                                    <div class="pages" style="font-size: 12px;">

                                        <ul class="page" maxshowpageitem="7" pagelistcount="${page.count}"  id="page"></ul>

                                    </div>
                                    <script type="text/javascript">
                                        function tt(dd){
                                            // alert(dd);
                                        }
                                        var GG = {
                                            "kk":function(mm){
                                                // console.log("hellos");
                                                window.location.href="product?cid=${page.cid}&p="+mm;
                                                //alert(mm);
                                            }
                                        }
                                        $("#page").initPage(${page.listsize},${page.p},GG.kk);

                                    </script>

                                </div>
                            <div class="conbox">

                                 <%@include file="backmanage/AssessTu.jsp"%>

                            </div>

                            </div>
                        <!-- 主要内容 -->

                </div>
                </div>
                </div>

        <!--星级插件展示-->
        <script type="text/javascript">
            $(document).ready(function(){
                $("#readOnly-shop").raty({ readOnly: true, score:${Product.slevel} });
                $('.assessreadOnly').each(function (index) {
                    var slevel=$(this).text();
                    $(this).raty({ readOnly: true, score:slevel });

                })

            });
        </script>
    
    <!--Begin 弹出层-收藏成功 Begin-->
    <div id="fade" class="black_overlay"></div>
    <div id="MyDiv" class="white_content">             
        <div class="white_d">
            <div class="notice_t">
                <span class="fr" style="margin-top:10px; cursor:pointer;" onclick="CloseDiv('MyDiv','fade')"><img src="<%= request.getContextPath()%>/Picture/close.gif" /></span>
            </div>
            <div class="notice_c">
           		
                <table border="0" align="center" style="margin-top:;" cellspacing="0" cellpadding="0">
                  <tr valign="top">
                    <td width="40"><img src="<%= request.getContextPath()%>/Picture/suc.png" /></td>
                    <td>
                    	<span style="color:#3e3e3e; font-size:18px; font-weight:bold;">您已成功收藏该商品</span><br />
                    	<a href="<%= request.getContextPath()%>/#">查看我的关注 >></a>
                    </td>
                  </tr>
                  <tr height="50" valign="bottom">
                  	<td>&nbsp;</td>
                    <td><a href="<%= request.getContextPath()%>/#" class="b_sure">确定</a></td>
                  </tr>
                </table>
                    
            </div>
        </div>
    </div>    
    <!--End 弹出层-收藏成功 End-->
    
    
    <!--Begin 弹出层-加入购物车 Begin-->
    <div id="fade1" class="black_overlay"></div>
    <div id="MyDiv1" class="white_content">             
        <div class="white_d">
            <div class="notice_t">
                <span class="fr" style="margin-top:10px; cursor:pointer;" onclick="CloseDiv_1('MyDiv1','fade1')"><img src="<%= request.getContextPath()%>/Picture/close.gif" /></span>
            </div>
            <div class="notice_c">
           		
                <table border="0" align="center" style="margin-top:;" cellspacing="0" cellpadding="0">
                  <tr valign="top">
                    <td width="40"><img src="<%= request.getContextPath()%>/Picture/suc.png" /></td>
                    <td>
                    	<span style="color:#3e3e3e; font-size:18px; font-weight:bold;">宝贝已成功添加到购物车</span><br />
                        购物车共有<span class="cart_zhong">1</span>种宝贝（<span class="cart_jian">3</span>件） &nbsp; &nbsp; 合计：<span class="cart_money">1120</span>元
                    </td>
                  </tr>
                  <tr height="50" valign="bottom">
                  	<td>&nbsp;</td>
                    <td><a href="<%= request.getContextPath()%>/BuyCar" class="b_sure">去购物车结算</a><a href="<%= request.getContextPath()%>/#" class="b_buy">继续购物</a></td>
                  </tr>
                </table>
                    
            </div>
        </div>
    </div>    
    <!--End 弹出层-加入购物车 End-->
    
    
    
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
            <dt><a href="<%= request.getContextPath()%>/#">新手上路</a></dt>
            <dd><a href="<%= request.getContextPath()%>/#">售后流程</a></dd>
            <dd><a href="<%= request.getContextPath()%>/#">购物流程</a></dd>
            <dd><a href="<%= request.getContextPath()%>/#">订购方式</a></dd>
            <!-- <dd><a href="<%= request.getContextPath()%>/#">隐私声明</a></dd>
            <dd><a href="<%= request.getContextPath()%>/#">分享说明</a></dd> -->
        </dl>
        <dl>
            <dt><a href="<%= request.getContextPath()%>/#">配送与支付</a></dt>
            <dd><a href="<%= request.getContextPath()%>/#">货到付款区域</a></dd>
            <dd><a href="<%= request.getContextPath()%>/#">配送支付查询</a></dd>
            <dd><a href="<%= request.getContextPath()%>/#">支付方式说明</a></dd>
        </dl>
        <dl>
            <dt><a href="<%= request.getContextPath()%>/#">会员中心</a></dt>
            <dd><a href="<%= request.getContextPath()%>/#">资金管理</a></dd>
            <dd><a href="<%= request.getContextPath()%>/#">我的收藏</a></dd>
            <dd><a href="<%= request.getContextPath()%>/#">我的订单</a></dd>
        </dl>
        <dl>
            <dt><a href="<%= request.getContextPath()%>/#">服务保证</a></dt>
            <dd><a href="<%= request.getContextPath()%>/#">退换货原则</a></dd>
            <dd><a href="<%= request.getContextPath()%>/#">售后服务保证</a></dd>
            <dd><a href="<%= request.getContextPath()%>/#">产品质量保证</a></dd>
        </dl>
        <dl>
            <dt><a href="<%= request.getContextPath()%>/#">联系我们</a></dt>
            <dd><a href="<%= request.getContextPath()%>/#">网站故障报告</a></dd>
            <dd><a href="<%= request.getContextPath()%>/#">购物咨询</a></dd>
            <dd><a href="<%= request.getContextPath()%>/#">投诉与建议</a></dd>
        </dl>
        <dl>
            <dt><a href="<%= request.getContextPath()%>/#">加入我们</a></dt>
            <dd><a href="<%= request.getContextPath()%>/#">线上商家联系</a></dd>
            <dd><a href="<%= request.getContextPath()%>/#">线下商家联系</a></dd>
            <dd><a href="<%= request.getContextPath()%>/#">资讯合作</a></dd>
        </dl>


    <div class="btmbg">
        <div class="btm">
            <img src="<%= request.getContextPath()%>/Picture/b_1.gif" width="98" height="33" /><img src="<%= request.getContextPath()%>/Picture/b_2.gif" width="98" height="33" /><img src="<%= request.getContextPath()%>/Picture/b_3.gif" width="98" height="33" /><img src="<%= request.getContextPath()%>/Picture/b_4.gif" width="98" height="33" /><img src="<%= request.getContextPath()%>/Picture/b_5.gif" width="98" height="33" /><img src="<%= request.getContextPath()%>/Picture/b_6.gif" width="98" height="33" />
        </div>      
    </div>
    <!--End Footer End -->    
</div>

</body>

<script src="<%= request.getContextPath()%>/Scripts/shopshow.js"></script>


</html>
