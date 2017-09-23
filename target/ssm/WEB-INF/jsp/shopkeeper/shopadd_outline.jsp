<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>添加线下商店</title>
    <style type="text/css">
        body {
            margin: 0;
            display: block;
            background: #e7e8eb
        }

        .header {
            padding: 0;
            margin: 0;
        }

        .header_bg {

            height: 26px;
            background-color: #242735;
            line-height: 12px;
            font-size: 12px;
        }

        .header_info {
            height: 12px;
            padding: 7px;
            margin: 0 auto;
            width: 990px;
            position: relative;

        }

        .li_text {
            list-style: none;
            color: #aaabaf;
            position: absolute;
            right: 0px;
            margin: 0px;
            padding: 0px;
        }

        .li_text li {
            float: left;
            border-right: 2px solid #aaabaf;
            padding: 0 8px;
        }

        .li_text li a {
            color: #aaabaf;
            text-decoration: none;
        }

        #container {
            width: 755px;
            height: 900px;
            margin: 50px auto;
            border: 1px solid #ccc;
            padding: 3em;
            border-radius: 3px;
            box-shadow: 0 0 2px rgba(0, 0, 0, .2);
        }

        .ideal-form {
            font-size: 15px;
            font-family: sans-serif;
            line-height: 22.5px;
            background: #fff;
        }

        .ideal-form .ideal-wrap:first-child {
            margin-top: 0;
        }

        .row {

        }

        .tittle_wrap {
            border-bottom: 1px solid #e7e7e7;
            padding: 0px;
            margin-top: -20px;
            color: #242735;

        }

        /*.banner-container {
            width: 990px;
            margin: 0 auto;
            height: 30px;
            padding: 10px 0;
            background-color: #fff;
            border: 1px solid #000;
        }*/
        .banner .logo {
            margin-right: 10px;
            width: 88px;
            height: 30px;
            float: left;
            background: url(<%= request.getContextPath()%>/Picture/logo.png) no-repeat;
            background-size: 88px 30px;
        }

        .aaa {
            width: 52%;
            margin-left: 24%
        }

        .aaa input {
            width: 240px;
            font-size: 14px;
            line-height: 18px;
            height: 18px;
            padding: 11px 8px 11px 15px;
            border: 1px solid #ddd;
            margin: 10px 0;
        }

        .aaa label {
            margin: 0 10px;
        }

        .ui-btn {
            background-color: #ff380f;
            border-color: #ff380f;
            color: #fff;
            width: 20%;
            margin-left: 40%;
            height: 40px;
            margin-top: 30PX;
            /*margin-left: 150px;*/
        }

        #hidebox {
            height: 250px;
            width: 300px;
            background-color: red;
            position: absolute;
            margin-top: -290px;
            margin-left: 263px;
            display: none;
        }

        .showimgdiv {
            overflow: scroll;
            width: 100%;
            height: 300px;
            border: 1px solid #ddd;
            background: #fff;
            box-shadow: 2px 2px 4px #aaa;

        }

        .upload_btn {
            padding: 10px;
            width: 60px;
            height: 15px;
            margin: 0 auto;
            text-align: center;
            position: relative;
            z-index: 5;
            cursor: pointer;
            background: none repeat scroll 0 0 #00B7EE;
            border-radius: 3px;
            color: #fff;
            font-size: 14px;
            margin-left: 10px;
            transition: background 0.2s;
            -moz-transition: background 0.2s;
            -webkit-transition: background 0.2s;
            -o-transition: background 0.2s;
        }

        .upload_btn:hover {
            background: none repeat scroll 0 0 #00A2D4;
        }

        .inputimg {
            height: 0px;
            position: absolute;
            top: 0;
            left: 0;
            z-index: 11;

            opacity: 0;
            filter: Alpha(opacity=0);
        }

        .range_bg:hover .range {
            display: block;
        }

        .range {
            width: 250px;
            height: 300px;
            overflow-y: scroll;
            background-color: #fff;
            border: 1px solid #cdcdcd;
            margin-top: -10px;
            padding: 5px 5px;
            margin-left: 80px;
            display: none;
        }

        .range input {
            margin: 0px 5px;
        }
    </style>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {

            $(".c_h span").click(function () {
                var value1 = $(".c_h span:hover").text();  //获取点击内容
                // alert(value1);
                $("#city_s").val(value1);   //给input赋值
            });

            $("#ran").click(function () {
                var str = "";
                $('[name=items]:checkbox:checked').each(function () {
                    str = str + $(this).val() + ',';
                    $("#range").val(str);
                });
                // alert(str);
            })

        });
    </script>
    <script type="text/javascript"
            src="http://api.map.baidu.com/api?v=2.0&ak=9qUUlXZM2vM9p2vLAqq2rd69ZQuZn7SF"></script>
</head>

<body>
<div class="header">
    <%--<div class="header_bg">--%>
    <%--<div class="header_info">--%>
    <%--<ul class="li_text">--%>
    <%--<ul class="li_text">--%>
    <%--<li id="a">您好，${sessionScope.boss.name} —— <a href="<%= request.getContextPath()%>/boss/logout">退出</a></li>--%>
    <%--<li><a href="#">卖家中心</a></li>--%>
    <%--<li><a href="#">商城首页</a></li>--%>
    <%--<li><a href="<%= request.getContextPath()%>/boss/shopadd_online">添加线上店</a></li>--%>
    <%--</ul>--%>
    <%--</ul>--%>
    <%--</div>--%>
    <%--</div>--%>
    <div class="banner" style="background-color: #fff;">
        <div class="banner_container"
             style="width: 850px;margin: 0 auto;height: 30px;padding: 10px 0;background-color: #fff;">
            <a href="" class="logo" target="_blank"></a>
            <div style="border-left: 1px solid #000;margin-left: 10px;color:black;font-size: 20px;">&nbsp;|&nbsp;&nbsp;添加店铺</div>
        </div>
    </div>
</div>
<div class="row">
    <div id="container" class="ideal-form">
        <div class="tittle_wrap">
            <h2>添加实体店铺</h2>
        </div>
        <form role="form" action="<%=request.getContextPath()%>/boss/shop/outling/sub" method="post"
              enctype="multipart/form-data" onsubmit="return validate()">
            <div class="aaa">

                <label>店铺名称</label><input type="text" placeholder="请输入营业执照上的名称" name="shopname"><br>
                <%--<label>店铺经理</label><input type="text" placeholder="请输入店铺经理姓名" name="" ><br>--%>
                <label>联系方式</label><input type="text" placeholder="请输入店铺联系方式" name="shopcall"><br>
                <label>营业执照</label><input type="file" placeholder="请选择添加营业执照附件" multiple name="permit"><br>
                <label>店铺logo</label><input type="file" placeholder="请选择添加店铺logo" multiple name="logo">
                <label>选择您的所在地区</label>
                <table style="width: 255px;">
                    <tbody>
                    <tr>
                        <td><select id="privince">
                            <c:forEach items="${provinces}" var="province">
                                <option value="${province.pid}">${province.province}</option>
                            </c:forEach>
                        </select></td>
                        <td>

                            <select id="city" style="display: none">
                            </select>
                        </td>
                        <td>
                            <select id="district" style="display: none">
                            </select>
                        </td>
                        <td><select id="town" name="city" style="display: none"></select></td>
                    </tr>
                    </tbody>
                </table>


                <div class="range_bg">
                    <label>经营范围</label><input type="text" placeholder="-请选择-" name="scope" id="range"><br>
                    <div class="range">
                        <input type="checkbox" style="width: 30px;" name="items" value="文化传播">文化传播
                        <p><input type="checkbox" style="width: 30px;" name="items" value="房地产中介">房地产中介</p>
                        <p><input type="checkbox" style="width: 30px;" name="items" value="教育发展">教育发展</p>
                        <p><input type="checkbox" style="width: 30px;" name="items" value="商务咨询服务">商务咨询服务</p>
                        <p><input type="checkbox" style="width: 30px;" name="items" value="餐饮管理">餐饮管理</p>
                        <p><input type="checkbox" style="width: 30px;" name="items" value="知识产权咨询服务">知识产权咨询服务</p>
                        <p><input type="checkbox" style="width: 30px;" name="items" value="计算机、网络、数码、信息、电脑科技类">计算机、网络、数码、信息、电脑科技类
                        </p>
                        <p><input type="checkbox" style="width: 30px;" name="items" value="进出口类">进出口类</p>
                        <p><input type="checkbox" style="width: 30px;" name="items" value="电子商务">电子商务</p>
                        <p><input type="checkbox" style="width: 30px;" name="items" value="广告传媒">广告传媒</p>

                        <input type="button" style="width: 30%;margin-left: 35%;" id="ran" value="确定"/>
                    </div>
                </div>

                <div class="main-div">
                    <%--<form method="post" action="" name="theForm" enctype="multipart/form-data" onsubmit="return validate()">--%>
                    <table cellspacing="1" cellpadding="3" width="100%">
                        <tr>
                            <td class="label">&nbsp;&nbsp;&nbsp;&nbsp;地&nbsp;&nbsp;&nbsp;&nbsp;址&nbsp;</td>
                            <td>
                                <input type='text' value='' name='sever_add' id='sever_add' readonly>
                            </td>
                            <td><input type='button' value='点击显示地图' id='open'
                                       style="height: 40px;width: 100px;padding: 11px 8px;"></td>
                        </tr>
                        <tr>
                            <td><input type="hidden" name="lng" id="lng" value=""/>
                            </td>
                        </tr>
                        <tr>
                            <td><input type="hidden" name="lat" id="lat" value=""/>
                            </td>
                        </tr>
                    </table>
                    <%--</form>--%>
                </div>


                <div id='allmap'
                     style='width: 50%; height: 50%; position: absolute;margin-left:-11%;display: none'></div>

                <div class="" onclick="addFile()" style="float: left;">
                    <label>证件图片</label><input id="tip" type="text" value="点击上传图片，可上传多张">
                </div>
                <br>
                <input class="inputimg" name="file" type="file" id="fileElem1" multiple accept="image/*"
                       onchange="handleFiles(this)">
                <input class="inputimg" name="file" type="file" id="fileElem2" multiple accept="image/*"
                       onchange="handleFiles(this)">
                <input class="inputimg" name="file" type="file" id="fileElem3" multiple accept="image/*"
                       onchange="handleFiles(this)">
                <input class="inputimg" name="file" type="file" id="fileElem4" multiple accept="image/*"
                       onchange="handleFiles(this)">
                <input class="inputimg" name="file" type="file" id="fileElem5" multiple accept="image/*"
                       onchange="handleFiles(this)">
            </div>
            <div class="showimgdiv" id="fileList" style="display: block;"></div>
            <div style="width: auto">  <button type="submit" value="确认提交" style="color: #3fbf79"></button></div>

        </form>
    </div>
</div>

<script type="text/javascript">
    //添加文件最多个数
    var step = 0;

    function addFile() {
        var imgInputs = document.getElementsByName('file');
        if (step >= imgInputs.length) {
            alert("不能添加文件超过5个");
        }
        for (var i = 0; i < imgInputs.length; i++) {
            if (step == i) {
                step++;
                return imgInputs[i].click();
            }
        }
    }


</script>

<script type="text/javascript">
    function validate() {
        var sever_add = document.getElementsByName('sever_add')[0].value;
        if (isNull(sever_add)) {
            alert('请选择地址');
            return false;
        }
        return true;
    }

    //判断是否是空
    function isNull(a) {
        return (a == '' || typeof(a) == 'undefined' || a == null) ? true : false;
    }

    document.getElementById('open').onclick = function () {
        if (document.getElementById('allmap').style.display == 'none') {
            document.getElementById('allmap').style.display = 'block';
        } else {
            document.getElementById('allmap').style.display = 'none';
        }
    }

    var map = new BMap.Map("allmap");
    var geoc = new BMap.Geocoder();   //地址解析对象
    var markersArray = [];
    var geolocation = new BMap.Geolocation();


    var point = new BMap.Point(116.331398, 39.897445);
    map.centerAndZoom(point, 12); // 中心点
    geolocation.getCurrentPosition(function (r) {
        if (this.getStatus() == BMAP_STATUS_SUCCESS) {
            var mk = new BMap.Marker(r.point);
            map.addOverlay(mk);
            map.panTo(r.point);
            map.enableScrollWheelZoom(true);
        }
        else {
            alert('failed' + this.getStatus());
        }
    }, {enableHighAccuracy: true})
    map.addEventListener("click", showInfo);


    //清除标识
    function clearOverlays() {
        if (markersArray) {
            for (i in markersArray) {
                map.removeOverlay(markersArray[i])
            }
        }
    }

    //地图上标注
    function addMarker(point) {
        var marker = new BMap.Marker(point);
        markersArray.push(marker);
        clearOverlays();
        map.addOverlay(marker);
    }

    //点击地图时间处理
    function showInfo(e) {
        document.getElementById('lng').value = e.point.lng;
        document.getElementById('lat').value = e.point.lat;
        geoc.getLocation(e.point, function (rs) {
            var addComp = rs.addressComponents;
            var address = addComp.province + addComp.city + addComp.district + addComp.street + addComp.streetNumber;
            if (confirm("确定要地址是" + address + "?")) {
                document.getElementById('allmap').style.display = 'none';
                document.getElementById('sever_add').value = address;
            }
        });
        addMarker(e.point);

        function showthebox() {
            // document.getElementById("hidebox").style.display="block";
            alert("111");
        }

        // document.getElementById("showbox").onclick("showthebox(this)");
    }
</script>
<script>
    window.URL = window.URL || window.webkitURL;
    var fileElem = document.getElementById("fileElem"),
        fileList = document.getElementById("fileList");
    var tip = document.getElementById("tip");

    function handleFiles(obj) {
        if (fileList.childNodes.length >= 6) {
            alert("最多只能上传6张图片哦！");
            return;
        }
        var files = obj.files,
            img = new Image();
        var div = document.createElement("div");//创建一个DIV
        div.style.width = "100px";
        div.style.height = "100px";
        div.style.border = "1px solid #111";
        div.style.margin = "2px";
        div.style.float = "left";
        div.style.boxShadow = " 2px 2px 4px #aaa";
        var imgdelete = new Image();
        imgdelete.style.width = "20px";
        imgdelete.style.height = "20px";
        /*imgdelete.style.border="1px solid #ccc";*/
        imgdelete.style.marginLeft = "78px";
        imgdelete.style.position = "absolute";
        imgdelete.style.index = "99";
        imgdelete.src = "img/delete_b.png";
        imgdelete.style.cursor = "pointer";
        imgdelete.onclick = function () {
            fileList.removeChild(div);
            tip.value = fileList.childNodes.length;
        }
        div.onmousemove = function () {
            imgdelete.src = "img/delete.png";
        }
        div.onmouseout = function () {
            imgdelete.src = "img/delete_b.png";
        }
        div.appendChild(imgdelete);
        // div.innerHTML="this is a div";//设置div里面的内容varcreateDiv=document.createElement("div");
        /*div.onclick = function(){alert(this.innerHTML)}*///添加点击事件
        /*createDiv.title="thisisanewdiv.";
         createDiv.id="newDivId";
         createDiv.class="newDivClass";
         createDiv.innerHTML="Testcreateadivelement!";
         document.body.appendChild(createDiv);
         varcreateDiv=document.createElement("div");
         createDiv.style.background="pink";
         createDiv.style.border="1pxsolidred";
         createDiv.style.width="50px";
         createDiv.style.height="50px";
         createDiv.innerHTML="Testcreateadivelement!";*/
        if (window.URL) {
            //File API
//			  alert(files[0].name + "," + files[0].size + " bytes");
            img.src = window.URL.createObjectURL(files[0]); //����һ��object URL����������ı���·��
            img.style.width = "100px";
            img.style.height = "100px";
            img.onload = function (e) {
                window.URL.revokeObjectURL(this.src); //ͼƬ���غ��ͷ�object URL
            }
            div.appendChild(img);
            fileList.appendChild(div);
            tip.value = fileList.childNodes.length;
        } else if (window.FileReader) {
            //opera��֧��createObjectURL/revokeObjectURL������������FileReader����������
            var reader = new FileReader();
            reader.readAsDataURL(files[0]);
            reader.onload = function (e) {
//				alert(files[0].name + "," +e.total + " bytes");
                img.src = this.result;
                img.style.width = "100px";
                img.style.height = "100px";
                div.appendChild(img);
                fileList.appendChild(div);
                tip.value = fileList.childNodes.length;
            }
        } else {
            //ie
            obj.select();
            obj.blur();
            var nfile = document.selection.createRange().text;
            var browserVersion = window.navigator.userAgent.toUpperCase();
            img.style.width = "100px";
            img.style.height = "100px";
            if (browserVersion.indexOf("MSIE 8") > -1) {
                img.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod='scale',src='" + document.selection.createRange().text + "')";
                img.src = nfile;
            } else
                img.src = nfile;
            img.onload = function () {
            }
            div.appendChild(img);
            fileList.appendChild(div);
            tip.value = fileList.childNodes.length;
            //fileList.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod='image',src='"+nfile+"')";
        }
    }
</script>

<script type="text/javascript">
    <c:if test="${!empty error_msg}">alert("${error_msg}");
    </c:if>


    $("#privince").change(function () {
        $.ajax({
            url: "${pageContext.request.contextPath }/boss/findCity.form",
            data: 'pid=' + $("#privince").val(),
            type: 'post',
            success: function (result) {
                $("#city option").remove();//清空原来的选项
                $("#city").css("display", "block");
                $("#district").css("display", "none");
                $("#town").css("display", "none");
                //  alert(result);
                result = eval(result);
                for (var i = 0; i < result.length; i++) {
                    $("#city").append("<option  value='" + result[i].cid + "'> " + result[i].cityname + "</option>")
                }
            }
        });
    });
    $("#city").change(function () {
        $.ajax({
            url: "${pageContext.request.contextPath }/boss/findDistrict.form",
            data: 'cid=' + $("#city").val(),
            type: 'post',
            success: function (result) {
                $("#district option").remove();//清空原来的选项
                $("#district").css("display", "block");
                $("#town").css("display", "none");
                //  alert(result);
                result = eval(result);

                if (result.length == 1) {
                    $("#district").attr("name", "city");
                }
                for (var i = 0; i < result.length; i++) {
                    $("#district").append("<option  value='" + result[i].did + "'> " + result[i].districtname + "</option>")
                }
            }
        });
    });

    $("#district").change(function () {
        $.ajax({
            url: "${pageContext.request.contextPath }/boss/findTowns.form",
            data: 'did=' + $("#district").val(),
            type: 'post',
            success: function (result) {
                $("#town option").remove();//清空原来的选项
                $("#town").css("display", "block");
                //  alert(result);
                result = eval(result);
                for (var i = 0; i < result.length; i++) {
                    $("#town").append("<option  value='" + result[i].tid + "'> " + result[i].townsname + "</option>")
                }
            }
        });
    });
</script>

</body>
</html>