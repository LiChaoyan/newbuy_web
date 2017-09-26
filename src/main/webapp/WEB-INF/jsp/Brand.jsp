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
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/jquery-1.11.1.min_044d0927.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/n_nav.js"></script>

    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/lrscroll_1.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/menu.js"></script>

   <!--星级评价-->
    <link type="text/css" rel="stylesheet" href="<%= request.getContextPath()%>/back/assets/xingji/demo/css/application.css">
    <script type="text/javascript" src="<%= request.getContextPath()%>/back/assets/xingji/demo/js/jquery.min.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/back/assets/xingji/lib/jquery.raty.js"></script>
    <!--动态分页-->
    <link href="<%=request.getContextPath()%>/back/assets/pages/css/page.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="<%=request.getContextPath()%>/back/assets/pages/js/page.js"></script>


<title>店铺搜索</title>
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
        <div class="m_ad letter">全部加盟商家</div>
    </div>
</div>
<!--End Menu End--> 
<div class="i_bg">
    <div class="content mar_20">
        <div class="l_history">
            <div class="his_t">
                <span class="fl">浏览历史</span>
               <%-- <span class="fr"><a href="#">清空</a></span>--%>
            </div>
            <ul>
                <c:forEach items="${tjList}" var="tjPro">
                <li>
                    <div class="img"><a href="<%=request.getContextPath()%>/product?cid=${tjPro.cid}"><img src="${tjPro.logo}" width="185" height="162" /></a></div>
                    <div class="name" title="${tjPro.productname}"><a href="<%=request.getContextPath()%>/product?cid=${tjPro.cid}">${tjPro.productname}</a></div>
                    <div class="price">
                        <font>￥<span>${tjPro.price}</span></font> &nbsp; ${tjPro.salesvolu}人付款
                    </div>
                </li>
                </c:forEach>
            </ul>
        </div>
        <div class="l_list">
            <div class="list_t">
                <span class="fl list_or">
                    <a href="#" class="now">默认</a>
                    <a href="#">
                        <span class="fl">销量</span>                        
                        <span class="i_up">销量从低到高显示</span>
                        <span class="i_down">销量从高到低显示</span>                                                     
                    </a>
                    <a href="#">
                        <span class="fl">信用</span>                        
                        <span class="i_up">信用从低到高显示</span>
                        <span class="i_down">信用格从高到低显示</span>
                    </a>
                   <a href="#">
                        <span class="fl">好评</span>                        
                        <span class="i_up">好评率从低到高显示</span>
                        <span class="i_down">好评率从高到低显示</span>
                    </a>
                </span>
                <div class="brand_search fr">
            <span class="ss">
            <div class="ss_list">
                    <a href="#">所在地</a>
                    <div class="ss_list_bg">
                        <div class="s_city_t"></div>
                        <div class="ss_list_c">
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
                            <td class="c_h"><span>广东</span><span>广西</span></td>
                          </tr>
                          <tr>
                            <th>H</th>
                            <td class="c_h"><span>河北</span><span>河南</span></td>
                          </tr>
                          <tr>
                            <th>J</th>
                            <td class="c_h"><span>江苏</span><span>吉林</span></td>
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
                            <td class="c_h"><span>上海</span><span>山东</span></td>
                          </tr>
                          <tr>
                            <th>T</th>
                            <td class="c_h"><span>台湾</span><span>天津</span></td>
                          </tr>
                          <tr>
                            <th>X</th>
                            <td class="c_h"><span>西藏</span><span>香港</span></td>
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
                </div>
                <div class="ss_list">
                    <a href="#">店铺类型</a>
                    <div class="ss_list_bg">
                        <div class="s_city_t"></div>
                        <div class="ss_list_c">
                            <ul>
                                <li><a href="#">线上商铺</a></li>
                                <li><a href="#">线上商铺</a></li>
                                <!-- <li><a href="#">我的收藏夹</a></li> -->
                            </ul>
                        </div>
                    </div>     
                </div>
                <div class="ss_list">
                    <a href="#">指定筛选</a>
                    <div class="ss_list_bg">
                        <div class="s_city_t"></div>
                        <div class="ss_list_c">
                            <ul>
                                <li><a href="#">店铺名称</a></li>
                                <li><a href="#">旺旺名称</a></li>
                                <li><a href="#">不限</a></li>
                            </ul>
                        </div>
                    </div>    
                </div>
                
            </span>
        </div>
             <!-- 店铺筛选end -->

            </div>
            <div class="list_c">
                
                <ul class="cate_list">
                    <c:forEach items="${ShopList}" var="shop">
                        <li>
                            <div class="img"><a href="#"><img src="${shop.logo}" width="210" height="185"/></a></div>
                            <div class="shop">
                            <span class="name">${shop.shopname}&nbsp;
                                <span class="readOnly-demo">${shop.slevel}</span>
                                <span class="classify">主营:${shop.scope}</span>
                                <span><div class="fl">销量:${shop.salesvo}件商品</div>
                            <div class="fr"><img src="Images/location.png">${shop.cityname}</div></span>
                            </div>
                            <div class="carbg">
                                <a href="#" class="ss">收藏店铺</a>
                                <a href="#" class="j_car">进入店铺</a>
                            </div>
                        </li>
                    </c:forEach>
                </ul>

                <div class="pages">

                    <ul class="page" maxshowpageitem="7" pagelistcount="${page.count}"  id="page"></ul>

                </div>
                <script type="text/javascript">
                    function tt(dd){
                       // alert(dd);
                    }
                    var GG = {
                        "kk":function(mm){
                            // console.log("hellos");
                            window.location.href="brand?shopname=${page.shopname}&p="+mm;
                            //alert(mm);
                        }
                    }
                    $("#page").initPage(${page.listsize},${page.p},GG.kk);

                </script>
                <script type="text/javascript">
                    $(document).ready(function(){
                        $('.readOnly-demo').each(function (index) {
                            var slevel=$(this).text();
                            $(this).raty({ readOnly: true, score:slevel });

                        })

                    });
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
    <div class="btmbg">
        <div class="btm">
            <img src="<%= request.getContextPath()%>/Picture/b_1.gif" width="98" height="33" /><img src="<%= request.getContextPath()%>/Picture/b_2.gif" width="98" height="33" /><img src="<%= request.getContextPath()%>/Picture/b_3.gif" width="98" height="33" /><img src="<%= request.getContextPath()%>/Picture/b_4.gif" width="98" height="33" /><img src="<%= request.getContextPath()%>/Picture/b_5.gif" width="98" height="33" /><img src="<%= request.getContextPath()%>/Picture/b_6.gif" width="98" height="33" />
        </div>      
    </div>
    <!--End Footer End -->    
</div>
</body>
</html>
