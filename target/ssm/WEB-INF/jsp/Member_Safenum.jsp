<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link type="text/css" rel="stylesheet" href="<%= request.getContextPath()%>/Css/style.css" />
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/menu.js"></script>
        
	<script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/select.js"></script>
        
    
<title>修改密码</title>
<meta name="keywords" content="小桥双线购项目购物商城" />
<meta name="description" content="线上线下商家加盟的商城" />

<style type="text/css">
.m_des{
overflow:hidden; margin-top:10px; padding-bottom:30px; margin-bottom:0px; border-top:1px dotted #b6b6b6;border-bottom:1px dotted #b6b6b6;
}
.m_des .head td:hover {
    cursor: pointer;
    
}
.m_right{
    width:970px; height:auto !important;/* min-height:737px;*/ height:737px; background-color:#FFF; float:right; display:inline; margin:5px; padding-bottom:50px; -webkit-box-shadow:0 0 5px #e0e0e0; -moz-box-shadow:0 0 5px #e0e0e0; box-shadow:0 0 5px #e0e0e0;
}
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
            <jsp:include page="/public_jsp/Member_left.jsp"></jsp:include>
        </div>
		<div class="m_right">
            <p></p> 
            <div class="mem_tit">
                <a href="<%= request.getContextPath()%>/Member_Safehead">&nbsp;&nbsp;头像/昵称修改&nbsp;&nbsp;</a>
                <a href="<%= request.getContextPath()%>/Member_Safetel">&nbsp;&nbsp;手机号修改&nbsp;&nbsp;</a>
                <a href="<%= request.getContextPath()%>/Member_Safenum">&nbsp;&nbsp;密码修改&nbsp;&nbsp;</a>
                <a href="<%= request.getContextPath()%>/Member_Safeplace">&nbsp;&nbsp;收货地址管理&nbsp;&nbsp;</a>
            </div>
            <div class="m_des">
                <form>
                <table border="0" style="width:880px;"  cellspacing="0" cellpadding="0">
                  <tr height="45">
                    <td width="80" align="right">原密码 &nbsp; &nbsp;</td>
                    <td><input type="password" value="" class="add_ipt" style="width:180px;" />&nbsp; <font color="#ff4e00">*</font></td>
                  </tr>
                  <tr height="45">
                    <td align="right">新密码 &nbsp; &nbsp;</td>
                    <td><input type="password" value="" class="add_ipt" style="width:180px;" />&nbsp; <font color="#ff4e00">*</font></td>
                    <td align="right">确认密码 &nbsp; &nbsp;</td>
                    <td><input type="password" value="" class="add_ipt" style="width:180px;" />&nbsp; <font color="#ff4e00">*</font></td>
                  </tr>
                  <tr height="45">
                   
                  </tr>
                   <tr height="45">
                    &nbsp;
                  </tr>
                </table>
                <input type="submit" value="确认修改" class="btn_tj" style="margin-top: 5px;" />
                </form>
            </div>




            
        </div>
    </div>
	<!--End 用户中心 End--> 
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