<!DOCTYPE html>
<html>
<head>
    <title>添加线上商店</title>
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
        .li_text{
            list-style: none;
            color: #aaabaf;
            position: absolute;
            right: 0px;
            margin: 0px;
            padding: 0px;
        }
        .li_text li{
            float: left;
            border-right: 2px solid #aaabaf;
            padding: 0 8px;
        }
        .li_text li a{
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
            box-shadow: 0 0 2px rgba(0,0,0,.2);
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
        .row{

        }
        .tittle_wrap{
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
        .aaa input{
            width: 240px;
            font-size: 14px;
            line-height: 18px;
            height: 18px;
            padding: 11px 8px 11px 50px;
            border: 1px solid #ddd;
            margin: 10px 0;
        }
        .aaa label{
            margin: 0 10px;
        }

        .ui-btn{
            background-color: #ff380f;
            border-color: #ff380f;
            color: #fff;
            width: 20%;
            margin-left: 40%;
            height: 40px;
            margin-top: 30PX;
            /*margin-left: 150px;*/
        }
        #hidebox{
            height: 250px;
            width: 298px;
            background-color: red;
            position: absolute;
            margin-top:-290px;
            margin-left: 263px;
            display: none;
        }

    </style>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=9qUUlXZM2vM9p2vLAqq2rd69ZQuZn7SF"></script>
</head>

<body>
<div class="header">
    <div class="header_bg">
        <div class="header_info">
            <ul class="li_text">
                <li>您好，张璐 —— <a href="">退出</a></li>
                <li><a href="">卖家中心</a></li>
                <li><a href="">商城首页</a></li>
            </ul>
        </div>
    </div>
    <div class="banner" style="background-color: #fff;">
        <div class="banner_container" style="width: 850px;margin: 0 auto;height: 30px;padding: 10px 0;background-color: #fff;">
            <a href="" class="logo" target="_blank"></a>
            <div style="border-left: 1px solid #000;margin-left: 10px;color:black;font-size: 20px;">&nbsp;|&nbsp;&nbsp;添加店铺</div>

        </div>
    </div>
</div>
<div class="row">
    <div id="container" class="ideal-form">
        <div class="tittle_wrap">
            <h2>添加线上店铺</h2>
        </div>
        <div class="aaa">
            <label>店铺名称</label><input type="text" value="请输入营业执照上的名称" name=""><br>
            <label>店铺经理</label><input type="text" value="请输入店铺经理姓名" name="" ><br>
            <label>联系方式</label><input type="text" value="请输入手机号码/固定电话" name=""><br>
            <label>经营范围</label><input type="text" value="-请选择-" name=""  onfocus="showthebox(this.id)" id="fname"><br>

            <div class="main-div">
                <form method="post" action="" name="theForm" enctype="multipart/form-data" onsubmit="return validate()">
                    <table cellspacing="1" cellpadding="3" width="100%">
                        <tr>
                            <td class="label">&nbsp;&nbsp;&nbsp;&nbsp;地&nbsp;&nbsp;&nbsp;&nbsp;址&nbsp;</td>
                            <td>
                                <input type='text' value='' name='sever_add' id='sever_add' readonly>

                            </td>
                            <td> <input type='button' value='点击显示地图' id='open' style="height: 40px;width: 100px;padding: 11px 8px;"></td>
                        </tr>
                        <tr>
                            <td class="label">&nbsp;&nbsp;&nbsp;&nbsp;经&nbsp;&nbsp;&nbsp;&nbsp;度&nbsp;</td>
                            <td><input type="text" name="lng" id="lng" value=""/>
                            </td>
                        </tr>
                        <tr>
                            <td class="label">&nbsp;&nbsp;&nbsp;&nbsp;纬&nbsp;&nbsp;&nbsp;&nbsp;度&nbsp;</td>
                            <td><input type="text" name="lat" id="lat" value=""/>
                            </td>
                        </tr>

                    </table>
                </form>

            </div>
            <div id='allmap' style='width: 50%; height: 50%; position: absolute;margin-left:-11%;display: none'></div>
        </div>
        <input type="button" class="ui-btn" value="确认提交" name="">
        <div id="hidebox">

        </div>
    </div>
</div>

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
        document.getElementById('lat').value =  e.point.lat;
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

</body>
</html>