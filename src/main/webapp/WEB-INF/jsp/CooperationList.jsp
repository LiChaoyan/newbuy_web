<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link type="text/css" rel="stylesheet" href="<%= request.getContextPath()%>/Css/style.css" />

    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/jquery-1.11.1.min_044d0927.js"></script>    
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/jquery-1.8.2.min.js"></script>
    <!-- <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/n_nav.js"></script>    -->

	<script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/lrscroll_1.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/menu.js"></script>    
    
    
	<!-- <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/n_nav.js"></script> -->

<title>商品搜索</title>
<meta name="keywords" content="小桥双线购项目购物商城" />
<meta name="description" content="线上线下商家加盟的商城" />
<style type="text/css">
.hover-show1{  
  position: absolute;/*注意这两个盒子要设置为绝对定位*/  
  width: 210px;  
  height: 185px;  
  background: #fff;  
  text-align: center;  
  color: #ff4e00;  
  opacity: 0;  
  margin-top: -180px;
  font-size: 14px;
  font-weight: bold;
} 
.big {
    font-size: 17px;
}
ul li .img img {
    position: absolute;
} 
.container-detailed:hover .hover-show1{  
  opacity: 0.8;  
}
</style>
</head>
<body>  
<!--Begin Header Begin-->
<jsp:include page="Carheader.jsp"></jsp:include>
<!--End Header End--> 
<!--Begin Menu Begin-->
<div class="menu_bg">
	<div class="menu">
        <jsp:include page="/public_jsp/fenlei.jsp"></jsp:include>
        <div class="m_ad">全部合作商品</div>
    </div>
</div>
<!--End Menu End--> 
<div class="i_bg">
	<div class="postion">
    	<span class="fl">全部分类 > 美妆个护 > 香水 > </span>
        <span class="n_ch">
            <span class="fl">品牌：<font>香奈儿</font></span>
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
    
    <div class="content mar_20">
    	<div class="l_history">
        	<div class="his_t">
            	<span class="fl">热门合作商品</span>
                <span class="fr"><a href="#">换一换</a></span>
            </div>
        	<ul>
            	<li>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/his_1.jpg" width="185" height="162" /></a></div>
                	<div class="name"><a href="#">Dior/迪奥香水2件套装</a></div>
                    <div class="price">
                    	<font>￥<span>368.00</span></font> &nbsp; 合作人数：11111
                    </div>
                </li>
                <li>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/his_2.jpg" width="185" height="162" /></a></div>
                	<div class="name"><a href="#">Dior/迪奥香水2件套装</a></div>
                    <div class="price">
                    	<font>￥<span>768.00</span></font> &nbsp; 合作人数：11111
                    </div>
                </li>
                <li>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/his_3.jpg" width="185" height="162" /></a></div>
                	<div class="name"><a href="#">Dior/迪奥香水2件套装</a></div>
                    <div class="price">
                    	<font>￥<span>680.00</span></font> &nbsp; 合作人数：11111
                    </div>
                </li>
                <li>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/his_4.jpg" width="185" height="162" /></a></div>
                	<div class="name"><a href="#">Dior/迪奥香水2件套装</a></div>
                    <div class="price">
                    	<font>￥<span>368.00</span></font> &nbsp;合作人数：11111
                    </div>
                </li>
                <li>
                    <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/his_5.jpg" width="185" height="162" /></a></div>
                	<div class="name"><a href="#">Dior/迪奥香水2件套装</a></div>
                    <div class="price">
                    	<font>￥<span>368.00</span></font> &nbsp; 合作人数：11111
                    </div>
                </li>
        	</ul>
        </div>
        <div class="l_list">
        	<div class="list_t">
            	<span class="fl list_or">
                	<a href="#" class="now">默认</a>
                    <a href="#">
                    	<span class="fl">按合作数</span>
                    </a>
                    <a href="#">
                    	<span class="fl">按意向数</span>                           
                    </a>
                    
                </span>
                <span class="fr">共发现120件</span>
            </div>
            <div class="list_c">
            	
                <ul class="cate_list">
                	<li>
                        <div class="container-detailed">
                    	<div class="img"><img src="<%= request.getContextPath()%>/Picture/per_1.jpg" width="210" height="185" /></div>
                        <div class="hover-show1">
                            <p class="big">合作人数：11111</p>  
                            <p>意向人数：11111</p>
                            <a href="#">查看商品</a>
                        </div>
                        </div>
                        <div class="price">
                            <font>￥<span>198.00</span></font> &nbsp; 推荐指数：100%
                        </div>
                        <div class="name"><a href="#">香奈儿邂逅清新淡香水50ml</a></div>
                        <div class="pre">
                        <a class="fl">店铺：香水之家</a><div class="fr"><img src="<%= request.getContextPath()%>/Images/location.png">北京</div></div>
                        <div class="price" style="color: #ff4e00">合作人数：11111&nbsp;&nbsp;意向人数：11111</div>
                    </li>
                    <li>
                        <div class="container-detailed">
                        <div class="img"><img src="<%= request.getContextPath()%>/Picture/per_1.jpg" width="210" height="185" /></div>
                        <div class="hover-show1">
                            <p class="big">合作人数：11111</p>  
                            <p>意向人数：11111</p>
                            <a href="#">查看商品</a>
                        </div>
                        </div>
                        <div class="price">
                            <font>￥<span>198.00</span></font> &nbsp; 推荐指数：100%
                        </div>
                        <div class="name"><a href="#">香奈儿邂逅清新淡香水50ml</a></div>
                        <div class="pre">
                        <a class="fl">店铺：香水之家</a><div class="fr"><img src="<%= request.getContextPath()%>/Images/location.png">北京</div></div>
                        <div class="price" style="color: #ff4e00">合作人数：11111&nbsp;&nbsp;意向人数：11111</div>
                    </li>
                    <li>
                        <div class="container-detailed">
                        <div class="img"><img src="<%= request.getContextPath()%>/Picture/per_1.jpg" width="210" height="185" /></div>
                        <div class="hover-show1">
                            <p class="big">合作人数：11111</p>  
                            <p>意向人数：11111</p>
                            <a href="#">查看商品</a>
                        </div>
                        </div>
                        <div class="price">
                            <font>￥<span>198.00</span></font> &nbsp; 推荐指数：100%
                        </div>
                        <div class="name"><a href="#">香奈儿邂逅清新淡香水50ml</a></div>
                        <div class="pre">
                        <a class="fl">店铺：香水之家</a><div class="fr"><img src="<%= request.getContextPath()%>/Images/location.png">北京</div></div>
                        <div class="price" style="color: #ff4e00">合作人数：11111&nbsp;&nbsp;意向人数：11111</div>
                    </li>
                    <li>
                        <div class="container-detailed">
                        <div class="img"><img src="<%= request.getContextPath()%>/Picture/per_1.jpg" width="210" height="185" /></div>
                        <div class="hover-show1">
                            <p class="big">合作人数：11111</p>  
                            <p>意向人数：11111</p>
                            <a href="#">查看商品</a>
                        </div>
                        </div>
                        <div class="price">
                            <font>￥<span>198.00</span></font> &nbsp; 推荐指数：100%
                        </div>
                        <div class="name"><a href="#">香奈儿邂逅清新淡香水50ml</a></div>
                        <div class="pre">
                        <a class="fl">店铺：香水之家</a><div class="fr"><img src="<%= request.getContextPath()%>/Images/location.png">北京</div></div>
                        <div class="price" style="color: #ff4e00">合作人数：11111&nbsp;&nbsp;意向人数：11111</div>
                    </li>
                    <li>
                        <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/per_1.jpg" width="210" height="185" /></a></div>
                        <div class="price">
                            <font>￥<span>198.00</span></font> &nbsp; 推荐指数：80%
                        </div>
                        <div class="name"><a href="#">香奈儿邂逅清新淡香水50ml</a></div>
                        <div class="pre">
                        <a class="fl">店铺：香水之家</a><div class="fr"><img src="<%= request.getContextPath()%>/Images/location.png">北京</div></div>
                        <div class="price" style="color: #ff4e00">合作人数：11111&nbsp;&nbsp;意向人数：11111</div>
                    </li>
                    <li>
                        <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/per_1.jpg" width="210" height="185" /></a></div>
                        <div class="price">
                            <font>￥<span>198.00</span></font> &nbsp; 推荐指数：10%
                        </div>
                        <div class="name"><a href="#">香奈儿邂逅清新淡香水50ml</a></div>
                        <div class="pre">
                        <a class="fl">店铺：香水之家</a><div class="fr"><img src="<%= request.getContextPath()%>/Images/location.png">北京</div></div>
                        <div class="price" style="color: #ff4e00">合作人数：11111&nbsp;&nbsp;意向人数：11111</div>
                    </li>
                    <li>
                        <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/per_1.jpg" width="210" height="185" /></a></div>
                        <div class="price">
                            <font>￥<span>198.00</span></font> &nbsp; 10000人付款
                        </div>
                        <div class="name"><a href="#">香奈儿邂逅清新淡香水50ml</a></div>
                        <div class="pre">
                        <a class="fl">店铺：香水之家</a><div class="fr"><img src="<%= request.getContextPath()%>/Images/location.png">北京</div></div>
                        <div class="price" style="color: #ff4e00">合作人数：11111&nbsp;&nbsp;意向人数：11111</div>
                    </li>
                    <li>
                        <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/per_1.jpg" width="210" height="185" /></a></div>
                        <div class="price">
                            <font>￥<span>198.00</span></font> &nbsp; 10000人付款
                        </div>
                        <div class="name"><a href="#">香奈儿邂逅清新淡香水50ml</a></div>
                        <div class="pre">
                        <a class="fl">店铺：香水之家</a><div class="fr"><img src="<%= request.getContextPath()%>/Images/location.png">北京</div></div>
                        <div class="price" style="color: #ff4e00">合作人数：11111&nbsp;&nbsp;意向人数：11111</div>
                    </li>
                    <li>
                        <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/per_1.jpg" width="210" height="185" /></a></div>
                        <div class="price">
                            <font>￥<span>198.00</span></font> &nbsp; 10000人付款
                        </div>
                        <div class="name"><a href="#">香奈儿邂逅清新淡香水50ml</a></div>
                        <div class="pre">
                        <a class="fl">店铺：香水之家</a><div class="fr"><img src="<%= request.getContextPath()%>/Images/location.png">北京</div></div>
                        <div class="price" style="color: #ff4e00">合作人数：11111&nbsp;&nbsp;意向人数：11111</div>
                    </li>
                    <li>
                        <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/per_1.jpg" width="210" height="185" /></a></div>
                        <div class="price">
                            <font>￥<span>198.00</span></font> &nbsp; 10000人付款
                        </div>
                        <div class="name"><a href="#">香奈儿邂逅清新淡香水50ml</a></div>
                        <div class="pre">
                        <a class="fl">店铺：香水之家</a><div class="fr"><img src="<%= request.getContextPath()%>/Images/location.png">北京</div></div>
                        <div class="price" style="color: #ff4e00">合作人数：11111&nbsp;&nbsp;意向人数：11111</div>
                    </li>
                    <li>
                        <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/per_1.jpg" width="210" height="185" /></a></div>
                        <div class="price">
                            <font>￥<span>198.00</span></font> &nbsp; 10000人付款
                        </div>
                        <div class="name"><a href="#">香奈儿邂逅清新淡香水50ml</a></div>
                        <div class="pre">
                        <a class="fl">店铺：香水之家</a><div class="fr"><img src="<%= request.getContextPath()%>/Images/location.png">北京</div></div>
                        <div class="price" style="color: #ff4e00">合作人数：11111&nbsp;&nbsp;意向人数：11111</div>
                    </li>
                    <li>
                        <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/per_1.jpg" width="210" height="185" /></a></div>
                        <div class="price">
                            <font>￥<span>198.00</span></font> &nbsp; 10000人付款
                        </div>
                        <div class="name"><a href="#">香奈儿邂逅清新淡香水50ml</a></div>
                        <div class="pre">
                        <a class="fl">店铺：香水之家</a><div class="fr"><img src="<%= request.getContextPath()%>/Images/location.png">北京</div></div>
                        <div class="price" style="color: #ff4e00">合作人数：11111&nbsp;&nbsp;意向人数：11111</div>
                    </li>
                    <li>
                        <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/per_1.jpg" width="210" height="185" /></a></div>
                        <div class="price">
                            <font>￥<span>198.00</span></font> &nbsp; 10000人付款
                        </div>
                        <div class="name"><a href="#">香奈儿邂逅清新淡香水50ml</a></div>
                        <div class="pre">
                        <a class="fl">店铺：香水之家</a><div class="fr"><img src="<%= request.getContextPath()%>/Images/location.png">北京</div></div>
                        <div class="price" style="color: #ff4e00">合作人数：11111&nbsp;&nbsp;意向人数：11111</div>
                    </li>
                    <li>
                        <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/per_1.jpg" width="210" height="185" /></a></div>
                        <div class="price">
                            <font>￥<span>198.00</span></font> &nbsp; 10000人付款
                        </div>
                        <div class="name"><a href="#">香奈儿邂逅清新淡香水50ml</a></div>
                        <div class="pre">
                        <a class="fl">店铺：香水之家</a><div class="fr"><img src="<%= request.getContextPath()%>/Images/location.png">北京</div></div>
                        <div class="price" style="color: #ff4e00">合作人数：11111&nbsp;&nbsp;意向人数：11111</div>
                    </li>
                    <li>
                        <div class="img"><a href="#"><img src="<%= request.getContextPath()%>/Picture/per_1.jpg" width="210" height="185" /></a></div>
                        <div class="price">
                            <font>￥<span>198.00</span></font> &nbsp; 10000人付款
                        </div>
                        <div class="name"><a href="#">香奈儿邂逅清新淡香水50ml</a></div>
                        <div class="pre">
                        <a class="fl">店铺：香水之家</a><div class="fr"><img src="<%= request.getContextPath()%>/Images/location.png">北京</div></div>
                        <div class="price" style="color: #ff4e00">合作人数：11111&nbsp;&nbsp;意向人数：11111</div>
                    </li>
                </ul>
                
                <div class="pages">
                	<a href="#" class="p_pre">上一页</a><a href="#" class="cur">1</a><a href="#">2</a><a href="#">3</a>...<a href="#">20</a><a href="#" class="p_pre">下一页</a>
                </div>
                
                
                
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


<!--[if IE 6]>
<script src="<%= request.getContextPath()%>/Scripts/zh_cn.js"></script>
<![endif]-->
</html>
