﻿<!DOCTYPE html>
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
.Order_form_style{ margin:20px 0px;}
.Order_form_style .Order_form_filter{ height:110px; margin-bottom:20px;}
.Order_form_style .Order_form_filter a{ 
  float:left; 
  display:block;
  margin:5px;
  width:132px;
  line-height:100px; 
  height:100px; 
  background-color:#fc795b; 
  color:#FFF; 
  font-size:16px; 
  text-align:center;
   -webkit-border-radius:3px;
  -moz-border-radius:3px;
  border-radius:3px;
}
.Order_Operation{ height:50px; padding:0px 10px; line-height:50px; margin:10px 0px; border:1px solid #ddd;}
.Order_Operation .confirm_Order,
.Order_Operation .search_order{ 
    margin-left:10px;
  height:32px;
  color:#888888; 
  border:1px solid #ddd; 
  cursor:pointer;
}
.Order_Operation .right_search{ float:right; height:50px; line-height:50px;}
.Order_Operation .add_Ordertext{ height:30px; border:1px solid #ddd; padding:0px 5px; margin:9px 0px; width:300px; }
:link, :visited, ins { text-decoration: none; }
blockquote, q { quotes: none; }
blockquote:before, blockquote:after, q:before, q:after { content: ''; content: none; }
a{ color: #333}
div {display: block;}
a:hover{ color:#fc795b}

.Order_Operation {
    height: 50px;
    padding: 0px 10px;
    line-height: 50px;
    margin: 10px 0px;
    border: 1px solid #ddd;
}
.Order_Operation .confirm_Order, .Order_Operation .search_order {
    margin-left: 10px;
    height: 32px;
    color: #888888;
    border: 1px solid #ddd;
    cursor: pointer;
}
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
.Order_Operation{ height:50px; padding:0px 10px; line-height:50px; margin:10px 0px; border:1px solid #ddd;}
.Order_Operation .confirm_Order,
.Order_Operation .search_order{ 
    margin-left:10px;
    height:32px;
    color:#888888; 
    border:1px solid #ddd; 
    cursor:pointer;
}
.Order_Operation .right_search{ float:right; height:50px; line-height:50px;}
.Order_Operation .add_Ordertext{ height:30px; border:1px solid #ddd; padding:0px 5px; margin:9px 0px; width:300px; }
/***********************发货管理样式属性***************************/
.Delivery_style{ margin:20px 0px;}
.Delivery_style .hd{}
.Delivery_style .hd ul{ height:50px; line-height:49px; border-bottom:1px solid #ddd;}
.Delivery_style .hd li{ float:left; border:1px solid #ddd; padding:0px 20px; font-size:16px; margin-right:20px;-moz-border-radius:5px 5px 0px 0px; -webkit-border-radius:5px 5px 0px 0px;  border-radius:5px 5px 0px 0px; background-color:#fc795b; color:#FFF; cursor:pointer;}
.Delivery_style .hd li.on{ background-color:#FFF; color:#333; border-bottom:1px solid #fff;}
.Delivery_style .bd{ padding:15px 0px;}
.add_address_style .Note b{ color:#F60}
.add_address_style table.add_content{ margin:20px 0px;}
.add_address_style table.add_content tr{ height:40px;}
.add_address_style table.add_content .label{ width:100px; line-height:30px; font-size:14px;}
.add_address_style table.add_content .label i{ color:#F30}
.add_address_style table.add_content .addtext{ height:26px; border:1px solid #ddd; padding:0px 10px; margin:0px 5px;}
.add_address_style table.add_content select{ height:26px; border:1px solid #ddd; color:#888888; margin:0px 5px;}
.add_address_style table.add_content textarea{ width:800px; height:200px; border:1px solid #ddd;margin:5px;}
.add_address_style table.add_content .save_addressbtn,
.Freight_template .AddTemplate_btn{   
    margin-left:10px;
    height:32px;
    color:#ffffff; 
    cursor:pointer;
}
.add_address_style .display_address{ width:100%; line-height:30px;}
.add_address_style .display_address .label_name{ background-color:#ededed; text-align:center; height:30px;}
.add_address_style .display_address td{ border-bottom:1px  dashed #ddd; text-align:center}
.add_address_style .display_address td a{ margin:0px 5px; color:#F30}


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
            <div class="user_style clearfix">
  <div class="right_style">
  <div class="title_style"><em></em>订单管理</div> 
   <div class="Order_form_style">
      <div class="Order_form_filter">
       <a href="<%= request.getContextPath()%>/Order_My" class="on">全部订单（23）</a>
       <a href="<%= request.getContextPath()%>/Order_Unpay" class="">待付款（2）</a>
       <a href="<%= request.getContextPath()%>/Order_Undeliver" class="">待发货（3）</a>
       <a href="<%= request.getContextPath()%>/Order_Unreceive" class="">待收货（5）</a>
       <a href="<%= request.getContextPath()%>/Order_finished" class="">已完成（1）</a>
       <a href="#" class="">退货/退款（0）</a>
      </div>
      <div class="Order_Operation">
     <div class="left"> <label><input name="" type="checkbox" value=""  class="checkbox"/>全选</label> <input name="" type="submit" value="批量确认收货"  class="confirm_Order"/>
     <div class="right_search"><input name="" type="text"  class="add_Ordertext" placeholder="请输入产品标题或订单号进行搜索"/><input name="" type="submit" value="搜索订单"  class="search_order"/></div></div>
      </div>
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
         <tr class="Order_info"><td colspan="6" class="Order_form_time"><input name="" type="checkbox" value=""  class="checkbox"/>下单时间：2015-12-3 &nbsp;|&nbsp; 订单号：445454654654654 &nbsp;|&nbsp;<a href="<%= request.getContextPath()%>/Order_wuliu">当前物流： [郑州市]快件已到达 新郑市龙湖支局</a><em></em></td></tr>
           <tr class="Order_Details">
           <td colspan="3">
           <table class="Order_product_style">
           <tbody>
           <tr>
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
            </tbody>
            </table>
           </td>   
           <td class="split_line">100</td>
           <td class="split_line"><p style="color:#F30">已发货</p></td>
           <td class="operating">
             <a href="#">查看订单</a>
             <a href="<%= request.getContextPath()%>/Order_wuliu">查看物流</a>
             <a href="#">联系客服</a>
             <a href="#">延迟收货</a>
           </td>
           </tr>
           </tbody>
            <tbody>       
           <tr class="Order_info on"><td colspan="6" class="Order_form_time"><input name="" type="checkbox" value=""  class="checkbox"/>下单时间：2015-12-3 &nbsp;|&nbsp; 订单号：445454654654654 &nbsp;|&nbsp;<a href="<%= request.getContextPath()%>/Order_wuliu">当前物流： [郑州市]快件已到达 新郑市龙湖支局</a></td></tr>
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
           <tr>
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
           <td class="split_line"><p style="color:#F30">交易成功</p><p style="color:#999">已评论</p></td>
           <td class="operating">
             <a href="#">查看订单</a>
             <a href="<%= request.getContextPath()%>/Order_wuliu">查看物流</a>
             <a href="#">申请售后</a>
             <a href="#">删除</a>            
           </td>
           </tr>
            </tbody>
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
             <tbody>       
           <tr class="Order_info"><td colspan="6" class="Order_form_time"><input name="" type="checkbox" value=""  class="checkbox"/>下单时间：2015-12-3 &nbsp;|&nbsp; 订单号：445454654654654 &nbsp;|&nbsp;<a href="<%= request.getContextPath()%>/Order_wuliu">当前物流： [郑州市]快件已到达 新郑市龙湖支局</a></td></tr>
           <tr class="Order_Details">
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
           <td class="split_line">等待卖家发货</td>
           <td class="operating">
                <a href="#">查看详细</a>
                 <a href="#">提醒发货</a>
                  <a href="#">取消订单</a>
             <a href="#">删除</a>
           </td>
           </tr>
           </tbody>    

           <tbody>       
           <tr class="Order_info"><td colspan="6" class="Order_form_time"><input name="" type="checkbox" value=""  class="checkbox"/>下单时间：2015-12-3</td></tr>
           <tr class="Order_Details">
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
           <td class="split_line">等待买家付款</td>
           <td class="operating">
                <a href="#">查看详细</a>
                 <a href="#">付款</a>
                  <a href="#">取消订单</a>
             <a href="#">删除</a>
           </td>
           </tr>
           </tbody>    
             <tbody>       
           <tr class="Order_info"><td colspan="6" class="Order_form_time"><input tabindex="13" type="checkbox" id="flat-checkbox-1">下单时间：2015-12-3 &nbsp;|&nbsp; 订单号：445454654654654 &nbsp;|&nbsp;<a href="<%= request.getContextPath()%>/Order_wuliu">当前物流： [郑州市]快件已到达 新郑市龙湖支局</a></td></tr>
           <tr class="Order_Details">
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
           <td class="split_line"><p style="color:#F33">已签收</p><p style="color:#CCC">买家未评价</p></td>
           <td class="operating">
                <a href="#">查看详细</a>
                <a href="#">在线客服</a>
                <a href="#" class="Refund_btn">评价商品</a>
             
           </td>
           </tr>
           </tbody>            
         </table>
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