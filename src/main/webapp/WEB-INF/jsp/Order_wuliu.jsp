<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link type="text/css" rel="stylesheet" href="<%= request.getContextPath()%>/Css/style.css" />

    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/menu.js"></script>    
        
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/select.js"></script>
    
<title>订单中心</title>
<style type="text/css">
.right_style{ width:930px; }
.user_style .right_style .title_style{ font-size:24px; border-bottom:1px solid #ddd; height:40px; line-height:40px;} 
.user_style .right_style .title_style em{ height:20px; width:10px; margin-top:10px; background-color:#fc795b; margin-right:10px; margin-left:10px; display:block; float:left;}

ul li{list-style: none;}
.track-rcol{width: 900px; border: 1px solid #eee;}
.track-list{margin: 20px; padding-left: 5px; position: relative;}
.track-list li{position: relative; padding: 9px 0 0 25px; line-height: 18px; border-left: 1px solid #d9d9d9; color: #999;margin-bottom: 20px;}
.track-list li.first{color: red; padding-top: 0; border-left-color: #fff;}
.track-list li .node-icon{position: absolute; left: -6px; top: 50%; width: 11px; height: 11px; background: url(Images/order-icons.png)  -21px -72px no-repeat;}
.track-list li.first .node-icon{background-position:0 -72px;}
.track-list li .time{margin-right: 20px; position: relative; top: 4px; display: inline-block; vertical-align: middle;font-size: 14px;font-weight: bold; }
.track-list li .txt{max-width: 600px; position: relative; top: 4px; display: inline-block; vertical-align: middle;font-size: 13px;}
.track-list li.first .time{margin-right: 20px; }
.track-list li.first .txt{max-width: 600px; }

.Order_form_style .Order_form_filter a.on{ background-color:#F63}
.Order_form_list{ border-bottom:1px solid #ddd; border-left:1px solid #ddd; border-right:1px solid #ddd}
.Order_form_list table{ width:100%; font-family:""}
.Order_form_list table thead td{ line-height:40px; height:40px; padding:0px; text-align:center; background: #ECECEC; border-top:1px solid #ddd}
.Order_form_list table thead td.list_name_title0{ width:400px;}
.Order_form_list table thead td.list_name_title1{ width:80px;}
.Order_form_list table thead td.list_name_title2{ width:80px;}
.Order_form_list table thead td.list_name_title4{ width:110px}
.Order_form_list table thead td.list_name_title5{ width:170px;}
.Order_form_list table thead td.list_name_title6{ width:158px;}
.Order_form_list table  td.Order_form_time{ border-top:1px solid #ddd; height:30px;     background: #f4f4f4;text-align:left; line-height:30px; padding:0px 10px; color: #333}
.Order_form_list table tr.Order_info.on em { background-position: 16px -57px;}
.Order_form_list table tr.Order_info.on{ height:30px}
.Order_form_list table tr.Order_info{ height:40px;}
.Order_form_list table  td{ padding:10px; position:relative; text-align:center}
.Order_form_list table  td.operating a{ line-height:30px; display:block}
.Order_form_list table  td.operating a.Delivery_btn{
    border:1px solid  #F33;
    -webkit-border-radius:3px;
    -moz-border-radius:3px;
    border-radius:3px;
    color:#FFF;
    padding:0px 5px;
    FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#F60,endColorStr=#F33); /*IE*/
    background:-ms-linear-gradient(top, #F60 ,#F33); /* IE10+ */
    background:-moz-linear-gradient(top,#F60,#F33);/*火狐*/
    background:-webkit-gradient(linear, 0% 0%, 0% 100%,from(#F60), to(#F33));/*谷歌*/
}
.Order_form_list table  td.operating a.Refund_btn{
    border:1px solid  #F60;
    -webkit-border-radius:3px;
    -moz-border-radius:3px;
    border-radius:3px;
    color:#FFF;
    padding:0px 5px;
    FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#F90,endColorStr=#F60); /*IE*/
    background:-ms-linear-gradient(top, #F90 ,#F60); /* IE10+ */
    background:-moz-linear-gradient(top,#F90,#F60);/*火狐*/
    background:-webkit-gradient(linear, 0% 0%, 0% 100%,from(#F90), to(#F60));/*谷歌*/

}
.Order_form_list table  td.split_line{ border-left:1px solid #ddd; border-right:1px solid #ddd; line-height:30px}
.Order_form_list table  td .product_name{  position:relative}
.Order_form_list table  td .specification{ position:absolute; bottom:-80px; left:90px; color:#999}
.Order_form_list table  td .product_name a{ display:block; float:left; margin-right:10px; color:#666;}
.Order_form_list table  td a.p_name{ position:absolute; left:90px; text-align:left; line-height:24px; }
.Order_form_list table  td .product_name a.product_img{ border:1px solid #ddd; width:82px; height:82px;}
.Order_form_list table  td .product_name a:hover{ color:#F60}
.Order_form_list table  td .Order_product_style tr{border-bottom:1px dotted #ddd;}



</style>
</head>
<body>  
<!--Begin Header Begin-->
<jsp:include page="/public_jsp/MemberTou.jsp"></jsp:include>
<!--End Header End--> 
<div class="i_bg bg_color">
    <!--Begin 用户中心 Begin -->
    <div class="m_content">
        <div class="m_left">
            <jsp:include page="/public_jsp/Order_left.jsp"></jsp:include>
        </div>
        <div class="m_right">
            <div class="user_style">
            <div class="right_style">
            <div class="title_style"><em></em>物流信息</div> 
                <div class="track-rcol">
                    <div class="track-list">
                        <ul>
                            <li class="first">
                                <i class="node-icon"></i>
                                <span class="time">2016-03-10 18:07:15</span>
                                <span class="txt">[郑州市]【新郑市龙湖支局】已妥投投递员董颖涛自取网点，感谢使用邮政快递包裹，期待再次为您服务</span>
                            </li>
                            <li>
                                <i class="node-icon"></i>
                                <span class="time">2016-03-10 18:07:15</span>
                                <span class="txt">[[郑州市]新郑市龙湖支局派件员：董颖涛 037169952169正在为您派件</span>
                            </li>
                            <li>
                                <i class="node-icon"></i>
                                <span class="time">2016-03-10 18:07:15</span>
                                <span class="txt">[郑州市]快件已到达 新郑市龙湖支局</span>
                            </li>
                            <li>
                                <i class="node-icon"></i>
                                <span class="time">2016-03-10 18:07:15</span>
                                <span class="txt">[郑州市]快件已从郑州汽转发出，准备发往郑州</span>
                            </li>
                            <li>
                                <i class="node-icon"></i>
                                <span class="time">2016-03-10 18:07:15</span>
                                <span class="txt">[郑州市]快件已到达 郑州汽转</span>
                            </li>
                            <li>
                                <i class="node-icon"></i>
                                <span class="time">2016-03-10 18:07:15</span>
                                <span class="txt">[襄阳市]快件已从襄阳中心发出，准备发往郑州</span>
                            </li>
                            <li>
                                <i class="node-icon"></i>
                                <span class="time">2016-03-10 18:07:15</span>
                                <span class="txt">[襄阳市]邮政快递包裹 襄阳大宗收寄中心收件员 已揽件</span>
                            </li>
                            <li>
                                <i class="node-icon"></i>
                                <span class="time">2016-03-10 18:07:15</span>
                                <span class="txt">包裹正在等待揽收,请您耐心等待</span>
                            </li>
                        </ul>
                    </div>
                    <div class="track-rcol">
                    <div class="track-list">
                        <div class="Order_form_style">
                        <div class="Order_form_list">
                        <table>
                            <thead>
                            <tr><td class="list_name_title0">商品</td>
                                <td class="list_name_title1">单价(元)</td>
                                <td class="list_name_title2">数量</td>
                                <td class="list_name_title4">实付款(元)</td>
                                <td class="list_name_title5">订单状态</td>
                                <td class="list_name_title6">操作</td>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="Order_info"><td colspan="6" class="Order_form_time"><input name="" type="checkbox" value=""  class="checkbox"/>下单时间：2015-12-3 &nbsp;|&nbsp; 订单号：445454654654654 &nbsp;|&nbsp;<a href="<%= request.getContextPath()%>/Order_wuliu">当前物流： [郑州市]快件已到达 新郑市龙湖支局</a></td></tr>
                            <tr class="Order_Details" >
                                <td colspan="3">
                                    <table class="Order_product_style">
                                        <tbody><tr>
                                            <td>
                                                <div class="product_name clearfix">
                                                    <a href="#" class="product_img"><img src="<%= request.getContextPath()%>/Picture/home_5.jpg" width="80px" height="80px"></a>
                                                    <a href="#" class="p_name">天然绿色多汁香甜无污染水蜜桃</a>
                                                    <p class="specification">礼盒装20个/盒</p>
                                                </div>
                                            </td>
                                            <td>5</td>
                                            <td>2</td>
                                        </tr>
                                        </tbody></table>
                                </td>
                                <td class="split_line">100</td>
                                <td class="split_line"><p style="color:#F33">已发货</p></td>
                                <td class="operating">
                                    <a href="#">查看订单</a>
                                    <a href="#">在线客服</a>
                                    <a href="#" class="Delivery_btn">确认收货</a>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        </div></div>
                    </div>
                    </div>

                </div>
            </div>
            </div>
            </div>


        </div>
    </div>
    <!--End 用户中心 End--> 
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