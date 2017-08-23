<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="com.xoqao.web.bean.Address.Address"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link type="text/css" rel="stylesheet" href="<%= request.getContextPath()%>/Css/style.css" />
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/menu.js"></script>

    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/select.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/jquery-1.11.0.min.js"></script>

    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/shade.js"></script>   <!-- 控制弹窗 -->
<title>收货地址管理</title>
<meta name="keywords" content="小桥双线购项目购物商城" />
<meta name="description" content="线上线下商家加盟的商城" />
<style type="text/css">
.m_des {
    overflow: hidden;
    margin-top: 10px;
    padding-bottom: 30px;
    margin-bottom: 0px;
    border-top: 1px dotted #b6b6b6;
    /*border-bottom: 1px dotted #b6b6b6;*/
}
.m_des .head td:hover {
    cursor: pointer;
}
.m_right {
    width: 970px;
    height: auto !important;/* min-height:737px;*/
    height: 737px;
    background-color: #FFF;
    float: right;
    display: inline;
    margin: 5px;
    padding-bottom: 50px;
    -webkit-box-shadow: 0 0 5px  #e0e0e0;
    -moz-box-shadow: 0 0 5px #e0e0e0;
    box-shadow: 0 0 5px #e0e0e0;
}
/*#inp {
    width: 300px;
    height: 30px;
    margin-top: 20px;
    color: #525252;
    font-size: 15px;
    border-color: #f2f2f2;
    padding-left: 10px;
}*/
#inp:focus {
    /*border-color: #fc795b;*/
    outline-color: #a2a2a2;
}
.sel {
   margin:50px;

}
.sel select {
    width: 100px;
    height:30px;
    color:#525252
}
.btn {
    height: 30px;
    line-height: 30px;
    width: 60px;
    margin-left: 10px;
}
select:hover {
    border-color: #fc795b;
    outline-color: #fc795b;
}

select:focus{
    border-color: #fc795b;
    outline-color: #fc795b;
}

option:hover{
    background-color:  #fc795b;
}
.opt {
    background-color:  #fc795b;
}
option {
    border:0px;
}
h2 {
    margin: 20px 30px;
}
.add_ipt1 {
    width: 530px;
    height: 23px;
    line-height: 23px\9;
    overflow: hidden;
    background-color: #f6f6f6;
    color: #555555;
    font-size: 12px;
    font-family: "宋体";
    padding: 0 10px;
    border: 1px solid #d9d9d9;
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
            <span class="fl">你好，请<a href="<%= request.getContextPath()%>/Login">登录</a>&nbsp; <a href="<%= request.getContextPath()%>/Regist" style="color:#ff4e00;">免费注册</a>&nbsp;<!-- |&nbsp;<a href="#">我的订单</a>&nbsp; -->|</span>
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
    </div>
</div>
<div class="m_top_bg">
    <div class="top">
        <div class="m_logo"><a href="<%= request.getContextPath()%>/index"><img src="<%= request.getContextPath()%>/Picture/logo1.png" /></a></div>
        <div class="m_search">
            <form>
                <input type="text" value="" class="m_ipt" />
                <input type="submit" value="搜索" class="m_btn" />
            </form>                      
            <span class="fl"><a href="#">咖啡</a><a href="#">iphone 6S</a><a href="#">新鲜美食</a><a href="#">蛋糕</a><a href="#">日用品</a><a href="#">连衣裙</a></span>
        </div>
    </div>
</div>
<!--End Header End--> 
<div class="i_bg bg_color">
    <!--Begin 用户中心 Begin -->
	<div class="m_content">
   		<div class="m_left">
            <div class="left_n">个人中心</div>
            <div class="left_m">
                <div class="left_m_t t_bg2">会员中心</div>
                <ul>
                    <li><a href="<%= request.getContextPath()%>/Member_User">个人信息</a></li>
                    <li><a href="<%= request.getContextPath()%>/Member_Safehead" class="now">修改个人信息</a></li>
                    <li><a href="<%= request.getContextPath()%>/Member_Collect">我的收藏</a></li>
                    <li><a href="<%= request.getContextPath()%>/Member_Msg">我的评价</a></li>
                </ul>
            </div>
            <div class="left_m">
                <div class="left_m_t t_bg1">订单中心</div>
                <ul>
                    <li><a href="<%= request.getContextPath()%>/Member_Order">我的订单</a></li>
                    <li><a href="<%= request.getContextPath()%>/Member_Address">收货地址</a></li>
                    <li><a href="#">我的购物车</a></li>
                    <li><a href="#">已买到的商品</a></li>
                </ul>
            </div>

            <div class="left_m">
                <div class="left_m_t t_bg3">账户中心</div>
                <ul>
                    <li><a href="<%= request.getContextPath()%>/Member_Safe">账户安全</a></li>
                    <li><a href="<%= request.getContextPath()%>/Member_Packet">我的红包</a></li>
                    <li><a href="<%= request.getContextPath()%>/Member_Money">资金管理</a></li>
                </ul>
            </div>
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

            <!-- 新增收货地址 -->
            <h2>新增收货地址</h2>
            <table border="0" class="add_tab" style="width:930px;"  cellspacing="0" cellpadding="0">
            <tr>
            </div>
             </tr>
             <tr>
                <td width="135" align="right">配送地区</td>
                <td colspan="3" style="font-family:'宋体';" class="yuan">
                    <select name="sweets" class="address-province">
                        <option value="0">省</option>
                        <c:forEach items="${Province}" var="province">
                            <option value="${province.pid}">${province.province}</option>
                        </c:forEach>
                    </select>
                    <select name="sweets" class="address-city">
                        <option value="0">市</option>
                    </select>
                    <select name="sweets" class="address-district">
                        <option value="0">地区</option>
                    </select>
                    <select name="sweets" class="address-towns">
                        <option value="0">乡镇</option>
                    </select>
                    <select name="sweets" class="address-community">
                        <option value="0">社区</option>
                    </select>(请将具体收货地址在下面的输入框补全)</br>
              <input type="text" name="" id="inp" value="收货地址为：" class="add_ipt1">
                </td>
              </tr>   
              <tr>
                <td align="right">收货人姓名</td>
                  <td style="font-family:'宋体';"><input type="text" placeholder="请输入姓名"  class="add_ipt ad_name" /><span class="ad_name_text">（必填）</span></td>
                <td align="right">性别</td>
                <td style="font-family:'宋体';"><input type="text" placeholder="请输入性别" class="add_ipt ad_sex" /><span class="ad_sex_text">（必填）</span></td></td>
              </tr>
              <tr>
                <td align="right">手机号</td>
                <td style="font-family:'宋体';"><input type="text" placeholder="请输入手机号" class="add_ipt ad_phone" /><span class="ad_phone_text">（必填）</span></td>
                <td align="right">邮编</td>
                <td style="font-family:'宋体';"><input type="text" placeholder="请输入邮编，或输入000000" class="add_ipt ad_youbian" /><span class="ad_youbian_text"></span></td></td>
              </tr>
            </table>
            <p align="right">
                <a href="#" calss="add_cancel">取消</a>&nbsp; &nbsp; <a href="#" class="add_b">确定</a>
            </p> 

            <!-- 已保存的收货地址展示 -->
            <h2>已保存的收货地址</h2>
                <table border="0" class="order_tab" style="width:930px; text-align:center; margin-bottom:30px;" cellspacing="0" cellpadding="0">
              <tr>                                                                                                                                                    
                <td width="130">收货人姓名</td>
                <td width="130">手机号</td>
                <td width="130">性别</td>
                <td width="130">邮编</td>
                <td width="320">详细地址</td>
                <td width="100"></td>
              </tr>
              <tr>
                <td>张三</td>
                <td>15133366666</td>
                <td>6908765</td>
                <td>000000</td>
                <td>河南省郑州市新郑市龙湖镇祥和路一号河南工程学院西区B01-333</td>
                <td><a href="#">删除&nbsp;&nbsp;</a><a onclick="ShowDiv_1('MyDiv1','fade1')" style="color:#ff4e00;">&nbsp;&nbsp;编辑</a></td>
              </tr>
              <tr>
                <td>李四</td>
                <td>15133366666</td>
                <td>6908765</td>
                <td>000000</td>
                <td>河南省郑州市新郑市龙湖镇祥和路一号河南工程学院西区B01-333</td>
                <td><a href="#">删除&nbsp;&nbsp;</a><a onclick="ShowDiv_1('MyDiv1','fade1')" style="color:#ff4e00;">&nbsp;&nbsp;编辑</a></td>
              </tr>
              <tr>
                <td>王五</td>
                <td>15133366666</td>
                <td>6908765</td>
                <td>000000</td>
                <td>河南省郑州市新郑市龙湖镇祥和路一号河南工程学院西区B01-333</td>
                <td><a href="#">删除&nbsp;&nbsp;</a><a onclick="ShowDiv_1('MyDiv1','fade1')"  style="color:#ff4e00;">&nbsp;&nbsp;编辑</a></td>
              </tr>
            </table>
            
            </div>
        </div>
    </div>

    <!--Begin 弹出层-编辑收货地址 Begin-->
    <div id="fade1" class="black_overlay"></div>
    <div id="MyDiv1" class="white_content">             
        <div class="white_d">
            <div class="notice_t">
                <span class="fr" style="margin-top:10px; cursor:pointer;" onclick="CloseDiv_1('MyDiv1','fade1')"><img src="<%= request.getContextPath()%>/Picture/close.gif" /></span>
            </div>

          <div class="notice_c">               
            <h2>修改收货地址</h2>
            <table border="0" class="add_tab" style="width:930px;"  cellspacing="0" cellpadding="0">
             <tr>
                <td width="135" align="right">配送地区</td>
                <td colspan="3" style="font-family:'宋体';" class="tan">
                  <select name="sweets">
                    <option>河南省</option>
                    <option>河北省</option>
                    <option>河南省</option>
                    <option>山东省</option>
                    <option>四川省</option>
                    <option>云南省</option>
                  </select>
                  <select name="sweets">
                    <option>郑州市</option>
                    <option>北京市</option>
                    <option>上海市</option>
                    <option>广州市</option>
                    <option>深圳市</option>
                    <option>天津市</option>
                  </select>
                  <select name="sweets">
                    <option>新郑市</option>
                    <option>新郑</option>
                    <option>金水区</option>
                    <option>高新区</option>
                    <option>丰润区</option>
                    <option>滦南</option>
                  </select>
                  <select name="sweets">
                    <option>龙湖镇</option>
                    <option>乡镇1</option>
                    <option>乡镇2</option>
                    <option>乡镇3</option>
                    <option>乡镇4</option>
                    <option>乡镇5</option>
                  </select>
                  <select name="sweets">
                    <option>沙窝里村</option>
                    <option>社区1</option>
                    <option>社区2</option>
                    <option>社区3</option>
                    <option>社区4</option>
                    <option>社区5</option>
                  </select>(请将具体收货地址在下面的输入框补全)</br>
              <input type="text" name="" id="inp" value="河南省郑州市新郑市龙湖镇沙窝里村3排9号" class="add_ipt1">
            <!-- <button class="btn">确定</button> -->
            
                </td>
              </tr>   
              <tr>
                <td align="right">收货人姓名</td>
                <td style="font-family:'宋体';"><input type="text" value="张三" class="add_ipt" /></td>
                <td align="right">性别</td>
                <td style="font-family:'宋体';"><input type="text" value="男" class="add_ipt" /></td>
              </tr>
              <tr>
                <td align="right">手机号</td>
                <td style="font-family:'宋体';"><input type="text" value="15144369875" class="add_ipt" /></td>
                <td align="right">邮编</td>
                <td style="font-family:'宋体';"><input type="text" value="000000" class="add_ipt" /></td>
              </tr>
            </table>
            <p align="right">
                <a href="#">取消</a>&nbsp; &nbsp; <a href="#" class="add_b">保存</a>
            </p>        
            </div>
        </div>
    </div>
    <script type="text/javascript">
        //验证
        $(".ad_name").blur(function(){
            var name=$(this).val();
            var FFF=$(this).parents("td").find(".ad_name_text");
            var testname = /^[\u4E00-\u9FA5A-Za-z]+$/;
            if(name=="请输入姓名"){
                FFF.text("姓名不可以为空！")
            }else if(!testname.test(name)){
                FFF.text("只能输入中文和英文");
            }else{
                FFF.text("通过");
            }
        });
        $(".ad_phone").blur(function(){
            var phone=$(this).val();
            var FFF=$(this).parents("td").find(".ad_phone_text");
            var testphone=/^1[34578]\d{9}$/;
            if(phone=="请输入手机号"){
                FFF.text("手机号不可以为空");
            }else if(!(testphone.test(phone))){
                FFF.text("手机号码有误");
            }else{
                FFF.text("通过");
            }
        });
        $(".ad_sex").blur(function(){
            var sex=$(this).val();
            var FFF=$(this).parents("td").find(".ad_sex_text");
            if(sex=="请输入性别"){
                FFF.text("性别不可以为空");
            }else if(sex=="男"||sex=="女"){
                FFF.text("通过");
            }else{
                FFF.text("请填写男或女");
            }
        });
        $(".ad_youbian").blur(function(){
            var youbian=$(this).val();
            var FFF=$(this).parents("td").find(".ad_youbian_text");
            var testyoubian= /^[1-9][0-9]{5}$/;
            if(!(testyoubian.test(youbian))){
                FFF.text("邮政编码格式不正确");
            }else{
                FFF.text("通过");
            }
        });
        //确定保存
        $(".add_b").click(function(){
            var address_text=$(this).parents(".m_right").find(".address-community option:selected").val();
            var name_text=$(this).parents(".m_right").find(".ad_name_text").val();
            var sex_text=$(this).parents(".m_right").find(".ad_sex_text").val();
            var phone_text=$(this).parents(".m_right").find(".ad_phone_text").val();
            var youbian_text=$(this).parents(".m_right").find(".ad_youbian_text").val();

            var address=$("#inp").val();
            var name=$(this).parents(".m_right").find(".ad_name").val();
            var sex=$(this).parents(".m_right").find(".ad_sex").val();
            var phone=$(this).parents(".m_right").find(".ad_phone").val();
            var youbian=$(this).parents(".m_right").find(".ad_youbian").val();
            if(address!=null){
                alert("dizhi:"+address);
                if(address!=null){
                if(sex=="男"){
                    sex=0;
                }else {
                    sex=1;
                }

                var url = "<%=request.getContextPath()%>/adaddress";
                var args = {"address": address,"name":name,"phone":phone,"sex":sex,"zip":youbian,"time": new Date()};
                $.getJSON(url, args, function (data) {
                        alert("地址回调函数");
                    }
                );
                }
                //并展示到
                var td1="<td>"+name+"</td>";
                var td2="<td>"+phone+"</td>";
                var td3="<td>"+sex+"</td>";
                var td4="<td>"+youbian+"</td>";
                var td5="<td>"+address+"</td>";
                var style_text="color:#ff4e00;";
                var td6="<td><a href='#'>删除&nbsp;&nbsp;</a><a onclick='ShowDiv_1('MyDiv1','fade1')' style='"+style_text+"'>&nbsp;&nbsp;编辑</a></td>";

                $(".order_tab").append("<tr class='td_new'></tr>");
                $(".td_new").append(td1,td2,td3,td4,td5,td6);

            }else{
                alert("请填写完整信息！");
            }

        });
        //取消按钮
        $(".add_cancel").click(function() {
            $("#inp").val("");
            $(this).parents(".m_right").find(".ad_name").val("");
            $(this).parents(".m_right").find(".ad_sex").val("");
            $(this).parents(".m_right").find(".ad_phone").val("");
            $(this).parents(".m_right").find(".ad_youbian").val("");
        });
        //地址获取
        $(".yuan select").change(function () {
          var str = "";
          $(".yuan select option:selected").each(function () {
                    str += $(this).text() + " ";
          });
          $('.yuan #inp').val(str);
            if($(this).hasClass("address-province")){
                var province_pid = $(this).val().toString();
                if (province_pid != 0) {
                    var url = "<%=request.getContextPath()%>/adcity";
                    var args = {"pid": province_pid, "time": new Date()};
                    $.getJSON(url, args, function (data) {
                            for (var i = 0; i < data.length; i++) {
                                var cityid=data[i].cityid;
                                var city = data[i].cityname;
                                $(".address-city").append("<option value ='" + cityid + "'>" + city + "</option>");
                            }
                        }
                    );

                }
            }
            if($(this).hasClass("address-city")){
                var cityid = $(this).val().toString();
                if (cityid != 0) {
                    var url = "<%=request.getContextPath()%>/addistrict";
                    var args = {"cityid": cityid, "time": new Date()};
                    $.getJSON(url, args, function (data) {
                            for (var i = 0; i < data.length; i++) {
                                var did=data[i].did;
                                var districtname = data[i].districtname;
                                $(".address-district").append("<option value ='" + did + "'>" + districtname + "</option>");
                            }
                        }
                    );

                }
            }
            if($(this).hasClass("address-district")){
                var did = $(this).val().toString();
                if (did != 0) {
                    var url = "<%=request.getContextPath()%>/adtowns";
                    var args = {"did": did, "time": new Date()};
                    $.getJSON(url, args, function (data) {
                            for (var i = 0; i < data.length; i++) {
                                var tid=data[i].tid;
                                var townsname = data[i].townsname;
                                $(".address-towns").append("<option value ='" + tid + "'>" + townsname + "</option>");
                            }
                        }
                    );

                }
            }
            if($(this).hasClass("address-towns")){
                var tid = $(this).val().toString();
                if (tid != 0) {
                    var url = "<%=request.getContextPath()%>/adcommunity";
                    var args = {"tid": tid, "time": new Date()};
                    $.getJSON(url, args, function (data) {
                            for (var i = 0; i < data.length; i++) {
                                var cid=data[i].cid;
                                var communityname = data[i].communityname;
                                $(".address-community").append("<option value ='" + cid + "'>" + communityname + "</option>");
                            }
                        }
                    );

                }
            }
        });

          $(".tan select").change(function () {
          var str = "";
          $(".tan select option:selected").each(function () {
                    str += $(this).text() + " ";
          });
          $('.tan #inp').val(str);
        })
      <%-- .onchange();--%>

    </script>
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