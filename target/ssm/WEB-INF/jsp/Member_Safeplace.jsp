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
                  <td style="font-family:'宋体';">男：<input type="radio" value="男" name="sex" class="add_ipt ad_sex" style="width:30px;"/>女：<input type="radio" name="sex" value="女" class="add_ipt ad_sex" style="width:30px;"/><span class="ad_sex_text">（必选）</span></td></td>
              </tr>
              <tr>
                <td align="right">手机号</td>
                <td style="font-family:'宋体';"><input type="text" placeholder="请输入手机号" class="add_ipt ad_phone" /><span class="ad_phone_text">（必填）</span></td>
                <td align="right">邮编</td>
                <td style="font-family:'宋体';"><input type="text" placeholder="请输入邮编，或输入000000" class="add_ipt ad_youbian" /><span class="ad_youbian_text"></span></td></td>
              </tr>
            </table>
            <p align="right">
                <a href="#" calss="add_cancel">取消</a>&nbsp; &nbsp; <a href="#" class="add_b yuan-in">确定</a>
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
                    <c:forEach items="${ShipAddress}" var="address">
                        <tr>
                            <td><span class="ad_name">${address.name}</span>&nbsp;&nbsp;<span class="td_mo">${address.statue}</span><input type="hidden" class="ad_said" value="${address.said}"/></td>
                            <td class="ad_phone">${address.phone}</td>
                            <td class="ad_sex">${address.sexword}</td>
                            <td class="ad_zip">${address.zip}</td>
                            <td><span class="ad_address">${address.address}</span>
                                <input type="hidden" class="h-province" value="${address.province}"/>
                                <input type="hidden" class="h-city" value="${address.city}"/>
                                <input type="hidden" class="h-district" value="${address.district}"/>
                                <input type="hidden" class="h-towns" value="${address.towns}"/>
                                <input type="hidden" class="h-community" value="${address.community}"/>
                            </td>
                            <td>
                                <a class="ad_smo">设为默认</a>
                                <a class="ad_dele">&nbsp;&nbsp;&nbsp;&nbsp;删除&nbsp;</a>
                                <a class="ad_bianji" <%--onclick="ShowDiv_1('MyDiv1','fade1')"--%> style="color:#ff4e00;">&nbsp;&nbsp;编辑</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            
            </div>
        </div>
</div>

    <!--Begin 弹出层-编辑收货地址 Begin-->
    <div id="fade1" class="black_overlay"></div>
    <div id="MyDiv1" class="white_content" style="width: 1000px;">
        <div class="white_d" style="width: 1000px;">
            <div class="notice_t" style="width: 950px;">
                <span class="fr" style="margin-top:10px; cursor:pointer;" onclick="CloseDiv_1('MyDiv1','fade1')"><img src="<%= request.getContextPath()%>/Picture/close.gif" /></span>
            </div>

          <div class="notice_c" style="width: 950px;">
            <h2>修改收货地址</h2>
            <table border="0" class="add_tab" style="width:930px;"  cellspacing="0" cellpadding="0">
             <tr>
                <td width="135" align="right">配送地区</td>
                <td colspan="3" style="font-family:'宋体';" class="tan">
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
                  <input type="text" name="" id="inp" value="河南省郑州市新郑市龙湖镇沙窝里村3排9号" class="add_ipt1 ad_address">
                  <!-- <button class="btn">确定</button> -->

                </td>
              </tr>
              <tr>
                <td align="right">收货人姓名</td>
                <td style="font-family:'宋体';"><input type="text" value="张三" class="add_ipt ad_name" /><span class="ad_name_text"></span><input type="hidden" class="ad_said" value=""/></td>
                <td align="right">性别</td>
                <td style="font-family:'宋体';">男：<input type="radio" name="sex" value="男" class="add_ipt ad_sex" style="width:30px;" />女：<input type="radio" name="sex" value="女" class="add_ipt ad_sex" style="width:30px;"/><span class="ad_sex_text"></span></td>
              </tr>
              <tr>
                <td align="right">手机号</td>
                <td style="font-family:'宋体';"><input type="text"  value="15144369875" class="add_ipt ad_phone" /><span class="ad_phone_text"></span></td>
                <td align="right">邮编</td>
                <td style="font-family:'宋体';"><input type="text"  value="000000" class="add_ipt ad_zip" /><span class="ad_zip_text"></span></td>
              </tr>
            </table>
            <p align="right">
                <a href="#" class="add_b tan-up">保存</a>
            </p>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        //默认地址
        $(".td_mo").each(function(index){
           var statue=$(this).text();
           if(statue=="1"){
               $(this).addClass("mo");
               $(this).text("(默认地址)");
               $(this).parents("tr").find(".ad_smo").text("");
           }else{
               $(this).text("");
           }
        });
        $(".ad_smo").click(function(){
            var yuanmo=$(this).parents(".order_tab").find(".mo");
            yuanmo.parents("tr").find(".ad_smo").text("设为默认");
            yuanmo.text("");
            yuanmo.removeClass("mo");


            var said=$(this).parents("tr").find(".ad_said").val();
            var url = "<%=request.getContextPath()%>/upmoaddress";
            var args = {"said": said,"time": new Date()};
            $.getJSON(url, args, function (data) {});
            //修改页面内的

            var xmo=$(this).parents("tr").find(".td_mo");
            xmo.text("(默认地址)");
            xmo.addClass("mo");
            $(this).parents("tr").find(".ad_smo").text("");

        });
        //验证
        $(".ad_name").blur(function(){
            var name=$(this).val();
            var FFF=$(this).parents("td").find(".ad_name_text");
            var testname = /^[\u4E00-\u9FA5A-Za-z]+$/;
            if(!testname.test(name)){
                FFF.text("只能输入中文和英文");
            }else{
                FFF.text("通过");
            }
        });
        $(".ad_phone").blur(function(){
            var phone=$(this).val();
            var FFF=$(this).parents("td").find(".ad_phone_text");
            var testphone=/^1[34578]\d{9}$/;
            if(!(testphone.test(phone))){
                FFF.text("手机号码有误");
            }else{
                FFF.text("通过");
            }
        });
        //性别选择
        $(".ad_sex").click(function(){
            var sex=$(this).val();
            var FFF=$(this).parents("td").find(".ad_sex_text");
                FFF.text("通过");
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
        $(".yuan-in").click(function(){

            var name_text=$(this).parents(".m_right").find(".ad_name_text").text();
            var sex_text=$(this).parents(".m_right").find(".ad_sex_text").text();
            var phone_text=$(this).parents(".m_right").find(".ad_phone_text").text();
            var youbian_text=$(this).parents(".m_right").find(".ad_youbian_text").text();

            var address=$("#inp").val();
            var name=$(this).parents(".m_right").find(".ad_name").val();
            var sex=$(this).parents(".m_right").find('input:radio[name="sex"]:checked').val();
            var phone=$(this).parents(".m_right").find(".ad_phone").val();
            var youbian;
            if(youbian_text=="通过"&&youbian_text==""){
                 youbian=$(this).parents(".m_right").find(".ad_youbian").val();
            }else{
                 youbian="";
            }

            if(address!=null){
                //alert(address);
               // alert(name_text+" "+sex_text+" "+phone_text)
                if(name_text=="通过"&&sex_text=="通过"&&phone_text=="通过"){
                    alert("hfeowfioewg");
                var url = "<%=request.getContextPath()%>/adaddress";
                var args = {"address": address,"name":name,"phone":phone,"sex":sex,"zip":youbian,"time": new Date()};
                $.getJSON(url, args, function (data) {});
                window.location.href="<%=request.getContextPath()%>/Member_Safeplace";
                }//if

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

            var t2=$(this).parents(".yuan").find(".address-city");
            var t3=$(this).parents(".yuan").find(".address-district");
            var t4=$(this).parents(".yuan").find(".address-towns");
            var t5=$(this).parents(".yuan").find(".address-community");

            if($(this).hasClass("address-province")){
                t2.css("display","inline");
                t3.css("display","inline");
                t4.css("display","inline");
                t5.css("display","inline");

                $(this).parents(".yuan").find(".address-city option:gt(0)").remove();
                $(this).parents(".yuan").find(".address-district option:gt(0)").remove();
                $(this).parents(".yuan").find(".address-towns option:gt(0)").remove();
                $(this).parents(".yuan").find(".address-community option:gt(0)").remove();
                var province_pid = $(this).val().toString();
                if (province_pid != 0) {
                    var url = "<%=request.getContextPath()%>/adcity";
                    var args = {"pid": province_pid, "time": new Date()};
                    $.getJSON(url, args, function (data) {
                            for (var i = 0; i < data.length; i++) {
                                var cityid=data[i].cityid;
                                var city = data[i].cityname;
                                $(".yuan .address-city").append("<option value ='" + cityid + "'>" + city + "</option>");
                            }
                        if(data.length==0){
                            t2.css("display","none");
                            t3.css("display","none");
                            t4.css("display","none");
                            t5.css("display","none");
                        }

                        }
                    );

                }
            }
            if($(this).hasClass("address-city")){
                t3.css("display","inline");
                t4.css("display","inline");
                t5.css("display","inline");

                $(this).parents(".yuan").find(".address-district option:gt(0)").remove();
                $(this).parents(".yuan").find(".address-towns option:gt(0)").remove();
                $(this).parents(".yuan").find(".address-community option:gt(0)").remove();
                var cityid = $(this).val().toString();
                if (cityid != 0) {
                    var url = "<%=request.getContextPath()%>/addistrict";
                    var args = {"cityid": cityid, "time": new Date()};
                    $.getJSON(url, args, function (data) {
                            for (var i = 0; i < data.length; i++) {
                                var did=data[i].did;
                                var districtname = data[i].districtname;
                                $(".yuan .address-district").append("<option value ='" + did + "'>" + districtname + "</option>");
                            }
                        if(data.length==0){
                            t3.css("display","none");
                            t4.css("display","none");
                            t5.css("display","none");
                        }
                        }
                    );

                }
            }
            if($(this).hasClass("address-district")){
                t4.css("display","inline");
                t5.css("display","inline");

                $(this).parents(".yuan").find(".address-towns option:gt(0)").remove();
                $(this).parents(".yuan").find(".address-community option:gt(0)").remove();
                var did = $(this).val().toString();
                if (did != 0) {
                    var url = "<%=request.getContextPath()%>/adtowns";
                    var args = {"did": did, "time": new Date()};
                    $.getJSON(url, args, function (data) {
                            for (var i = 0; i < data.length; i++) {
                                var tid=data[i].tid;
                                var townsname = data[i].townsname;
                                $(".yuan .address-towns").append("<option value ='" + tid + "'>" + townsname + "</option>");
                            }
                        if(data.length==0){
                            t4.css("display","none");
                            t5.css("display","none");
                        }

                        }
                    );

                }
            }
            if($(this).hasClass("address-towns")){
                t5.css("display","inline");
                $(this).parents(".yuan").find(".address-community option:gt(0)").remove();
                var tid = $(this).val().toString();
                if (tid != 0) {
                    var url = "<%=request.getContextPath()%>/adcommunity";
                    var args = {"tid": tid, "time": new Date()};
                    $.getJSON(url, args, function (data) {
                            for (var i = 0; i < data.length; i++) {
                                var cid=data[i].cid;
                                var communityname = data[i].communityname;
                                $(".yuan .address-community").append("<option value ='" + cid + "'>" + communityname + "</option>");
                            }
                            if(data.length==0){
                                    t5.css("display","none");
                            }
                        }
                    );

                }
            }

            var str = "";
            $(".yuan select option:selected").each(function () {
                if($(this).val()!=0){
                str += $(this).text() + " ";
                }
            });
            $('.yuan #inp').val(str);
        });

        //删除
        $(".ad_dele").click(function(){
            var said=$(this).parents("tr").find(".ad_said").val();
            var url = "<%=request.getContextPath()%>/deleaddress";
            var args = {"said": said, "time": new Date()};
            $.getJSON(url, args, function (data) {});
            //删除页面内的
            $(this).parents("tr").css("display","none");
        })

        $(".tan select").change(function () {

              var t2=$(this).parents(".tan").find(".address-city");
              var t3=$(this).parents(".tan").find(".address-district");
              var t4=$(this).parents(".tan").find(".address-towns");
              var t5=$(this).parents(".tan").find(".address-community");


              if($(this).hasClass("address-province")){
                  t2.css("display","inline");
                  t3.css("display","inline");
                  t4.css("display","inline");
                  t5.css("display","inline");

                  $(this).parents(".tan").find(".address-city option:gt(0)").remove();
                  $(this).parents(".tan").find(".address-district option:gt(0)").remove();
                  $(this).parents(".tan").find(".address-towns option:gt(0)").remove();
                  $(this).parents(".tan").find(".address-community option:gt(0)").remove();
                  var province_pid = $(this).val().toString();
                  if (province_pid != 0) {
                      var url = "<%=request.getContextPath()%>/adcity";
                      var args = {"pid": province_pid, "time": new Date()};
                      $.getJSON(url, args, function (data) {
                              for (var i = 0; i < data.length; i++) {
                                  var cityid=data[i].cityid;
                                  var city = data[i].cityname;
                                  $(".tan .address-city").append("<option value ='" + cityid + "'>" + city + "</option>");
                              }
                              if(data.length==0){
                                  t2.css("display","none");
                                  t3.css("display","none");
                                  t4.css("display","none");
                                  t5.css("display","none");
                              }

                          }
                      );

                  }
              }
              if($(this).hasClass("address-city")){
                  t3.css("display","inline");
                  t4.css("display","inline");
                  t5.css("display","inline");

                  $(this).parents(".tan").find(".address-district option:gt(0)").remove();
                  $(this).parents(".tan").find(".address-towns option:gt(0)").remove();
                  $(this).parents(".tan").find(".address-community option:gt(0)").remove();
                  var cityid = $(this).val().toString();
                  if (cityid != 0) {
                      var url = "<%=request.getContextPath()%>/addistrict";
                      var args = {"cityid": cityid, "time": new Date()};
                      $.getJSON(url, args, function (data) {
                              for (var i = 0; i < data.length; i++) {
                                  var did=data[i].did;
                                  var districtname = data[i].districtname;
                                  $(".tan .address-district").append("<option value ='" + did + "'>" + districtname + "</option>");
                              }
                              if(data.length==0){
                                  t3.css("display","none");
                                  t4.css("display","none");
                                  t5.css("display","none");
                              }
                          }
                      );

                  }
              }
              if($(this).hasClass("address-district")){
                  t4.css("display","inline");
                  t5.css("display","inline");

                  $(this).parents(".tan").find(".address-towns option:gt(0)").remove();
                  $(this).parents(".tan").find(".address-community option:gt(0)").remove();
                  var did = $(this).val().toString();
                  if (did != 0) {
                      var url = "<%=request.getContextPath()%>/adtowns";
                      var args = {"did": did, "time": new Date()};
                      $.getJSON(url, args, function (data) {
                              for (var i = 0; i < data.length; i++) {
                                  var tid=data[i].tid;
                                  var townsname = data[i].townsname;
                                  $(".tan .address-towns").append("<option value ='" + tid + "'>" + townsname + "</option>");
                              }
                              if(data.length==0){
                                  t4.css("display","none");
                                  t5.css("display","none");
                              }

                          }
                      );

                  }
              }
              if($(this).hasClass("address-towns")){
                  t5.css("display","inline");
                  $(this).parents(".tan").find(".address-community option:gt(0)").remove();
                  var tid = $(this).val().toString();
                  if (tid != 0) {
                      var url = "<%=request.getContextPath()%>/adcommunity";
                      var args = {"tid": tid, "time": new Date()};
                      $.getJSON(url, args, function (data) {
                              for (var i = 0; i < data.length; i++) {
                                  var cid=data[i].cid;
                                  var communityname = data[i].communityname;
                                  $(".tan .address-community").append("<option value ='" + cid + "'>" + communityname + "</option>");
                              }
                              if(data.length==0){
                                  t5.css("display","none");
                              }
                          }
                      );

                  }
              }

              var str = "";
          $(".tan select option:selected").each(function () {
                    str += $(this).text() + " ";
          });
          $('.tan #inp').val(str);
        })
        //编辑
        $(".ad_bianji").click(function(){

            var said=$(this).parents("tr").find(".ad_said").val();
            var name=$(this).parents("tr").find(".ad_name").text();
            var phone=$(this).parents("tr").find(".ad_phone").text();
            var zip=$(this).parents("tr").find(".ad_zip").text();
            var sex=$(this).parents("tr").find(".ad_sex").text();
            var address=$(this).parents("tr").find(".ad_address").text();

            $(".notice_c .ad_said").val(said);
            $('.tan #inp').val(address);
            $(".notice_c .ad_name").val(name);
            $(".notice_c .ad_phone").val(phone);
            $(".notice_c .ad_zip").val(zip);

            $(".notice_c input[name=sex][value='"+sex+"']").attr("checked",true);
            <%--$(".notice_c").find("input[@type=radio]").attr("checked",sex);--%>
            var province=$(this).parents("tr").find(".h-province").val();
            var city=$(this).parents("tr").find(".h-city").val();
            var district=$(this).parents("tr").find(".h-district").val();
            var towns=$(this).parents("tr").find(".h-towns").val();
            var community=$(this).parents("tr").find(".h-community").val();
            //1.

            //$(".tan .address-province option[text='"+province+"']").attr("selected", true);
            $(".tan .address-province option").each(function(){
                if($(this).text()==province){
                    var province_id=$(this).val();
                    $(".tan .address-province").val(province_id);
                }
            });
            var province_pid=$(".tan .address-province option:selected").val();
            if (province_pid != 0) {
                var url = "<%=request.getContextPath()%>/adcity";
                var args = {"pid": province_pid, "time": new Date()};
                $.getJSON(url, args, function (data) {
                        for (var i = 0; i < data.length; i++) {
                            var tcityid=data[i].cityid;
                            var tcity = data[i].cityname;
                            $(".address-city").append("<option value ='" + tcityid + "'>" + tcity + "</option>");
                        }
                    //2.

                    //$(".tan .address-city option[text='"+city+"']").attr("selected", true);
                    $(".tan .address-city option").each(function(){
                        if($(this).text()==city){
                            var cityid=$(this).val();
                            $(".tan .address-city").val(cityid);
                            //alert("选中 "+cityid);
                        }
                    });
                    var cityid=$(".tan .address-city option:selected").val();
                    if (cityid != 0) {
                        var url = "<%=request.getContextPath()%>/addistrict";
                        var args = {"cityid": cityid, "time": new Date()};
                        $.getJSON(url, args, function (data) {
                                for (var i = 0; i < data.length; i++) {
                                    var tdid = data[i].did;
                                    var tdistrictname = data[i].districtname;
                                    $(".address-district").append("<option value ='" + tdid + "'>" + tdistrictname + "</option>");
                                }
                            //3.
                            //$(".tan .address-district option[text='"+district+"']").attr("selected", true);
                            $(".tan .address-district option").each(function(){
                                if($(this).text()==district){
                                    var did=$(this).val();
                                    $(".tan .address-district").val(did);
                                }
                            });
                            var did=$(".tan .address-district option:selected").val();
                            if (did != 0) {
                                var url = "<%=request.getContextPath()%>/adtowns";
                                var args = {"did": did, "time": new Date()};
                                $.getJSON(url, args, function (data) {
                                        for (var i = 0; i < data.length; i++) {
                                            var ttid=data[i].tid;
                                            var ttownsname = data[i].townsname;
                                            $(".address-towns").append("<option value ='" + ttid + "'>" + ttownsname + "</option>");
                                        }
                                    //4.
                                    //$(".tan .address-towns option[text='"+towns+"']").attr("selected", true);
                                    $(".tan .address-towns option").each(function(){
                                        if($(this).text()==towns){
                                            var tid=$(this).val();
                                            $(".tan .address-towns").val(tid);
                                        }
                                    });
                                    var tid=$(".tan .address-towns option:selected").val();
                                    if (tid != 0) {
                                        var url = "<%=request.getContextPath()%>/adcommunity";
                                        var args = {"tid": tid, "time": new Date()};
                                        $.getJSON(url, args, function (data) {
                                                for (var i = 0; i < data.length; i++) {
                                                    var tcid=data[i].cid;
                                                    var tcommunityname = data[i].communityname;
                                                    $(".address-community").append("<option value ='" + tcid + "'>" + tcommunityname + "</option>");
                                                }
                                            //5.
                                            //$(".tan .address-community option[text='"+community+"']").attr("selected", true);
                                            $(".tan .address-community option").each(function(){
                                                if($(this).text()==community){
                                                    var cid=$(this).val();
                                                    $(".tan .address-community").val(cid);
                                                }
                                            });
                                            //var zui=$(".tan .address-community option:selected").text();
                                            }
                                        );

                                    }
                                    }
                                );

                            }
                            }
                        );

                    }
                    }
                );

            }

            //alert(province_pid+" "+cityid+" "+did+" "+tid+" "+zui);


            ShowDiv_1('MyDiv1','fade1');
        });

        //更新
        $(".tan-up").click(function(){

            var name_text=$(this).parents(".notice_c").find(".ad_name_text").text();
            var sex_text=$(this).parents(".notice_c").find(".ad_sex_text").text();
            var phone_text=$(this).parents(".notice_c").find(".ad_phone_text").text();
            var youbian_text=$(this).parents(".notice_c").find(".ad_youbian_text").text();

            var said=$(this).parents(".notice_c").find(".ad_said").val();
            var address=$(".tan #inp").val();
            var name=$(this).parents(".notice_c").find(".ad_name").val();
            var sex=$(this).parents(".notice_c").find('input:radio[name="sex"]:checked').val();
            var phone=$(this).parents(".notice_c").find(".ad_phone").val();
            var youbian;
            if(youbian_text=="通过"){
                youbian=$(this).parents(".notice_c").find(".ad_youbian").val();
            }else{
                youbian="";
            }

            if(address!=null){

                if((name_text=="通过"||name_text=="")&&(sex_text=="通过"||sex_text=="")&&(phone_text=="通过"||phone_text=="")){

                    var url = "<%=request.getContextPath()%>/upaddress";
                    var args = {"said":said,"address": address,"name":name,"phone":phone,"sex":sex,"zip":youbian,"time": new Date()};
                    $.getJSON(url, args, function (data) {});
                    //并展示到
                    window.location.href="<%=request.getContextPath()%>/Member_Safeplace";
                }//if

            }else{
                alert("请填写完整信息！");
            }
        });


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