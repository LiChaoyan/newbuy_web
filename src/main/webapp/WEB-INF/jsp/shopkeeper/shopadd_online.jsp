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
            padding: 11px 8px 11px 15px;
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

        .s_city_bg{
            /*overflow: hidden;*/
            position: absolute;
            z-index: 900;
            display: none;
        }
        .s_city:hover .s_city_bg{
            display: block;
        }

        .s_city_c{
            width: 410px;
            height: 300px;
            overflow: scroll;
            background-color: #fff;
            margin-top: -10px;
            border: 1px solid #cdcdcd;
        }
        .s_city_c h2{
            height:29px;
            line-height:29px;
            overflow:hidden;
            font-size:14px;
            font-weight:normal;
            text-align:center;
            margin-top:5px;
            border-bottom:1px dotted #666666;
        }
        table.c_tab tr th{
            line-height: 26px;
            width: 20px;
            text-transform: uppercase;
        }
        table.c_tab tr th span{
            margin: 0 5px;
        }
        .c_h span{
            line-height: 26px;
            float: left;
            display: inline;
            padding: 0 3px;
            cursor: pointer;
        }
        .c_h span:hover{
            color: #ff380f;
        }

        .range_bg:hover .range{
            display: block;
        }
        .range{
            width: 250px;
            height: 300px;
            overflow-y: scroll;
            background-color: #fff;
            border: 1px solid #cdcdcd;
            margin-top: -10px;
            padding:5px 5px;
            margin-left: 80px;
            display: none;
        }
        .range input{
            margin:0px 5px;
        }
    </style>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){

            $(".c_h span").click(function(){
                var value1 = $(".c_h span:hover").text();  //获取点击内容
                // alert(value1);
                $("#city_s").val(value1);   //给input赋值
            });

            $("#ran").click(function(){
                var str = "";
                $('[name=items]:checkbox:checked').each(function(){
                    str = str + $(this).val() + ',';
                    $("#range").val(str);
                });
                // alert(str);
            })

        });
    </script>
</head>

<body>
<div class="header">
    <div class="header_bg">
        <div class="header_info">
            <ul class="li_text">
                <li id="a">您好，张璐 —— <a href="">退出</a></li>
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
            <label>店铺名称</label><input type="text" placeholder="请输入营业执照上的名称" name=""><br>
            <label>店铺经理</label><input type="text" placeholder="请输入店铺经理姓名" name="" ><br>
            <label>联系方式</label><input type="text" placeholder="请输入手机号码/固定电话" name=""><br>



            <div class="range_bg">
                <label>经营范围</label><input type="text" placeholder="-请选择-" name="" id="range"><br>
                <div class="range">
                    <input type="checkbox" style="width: 30px;" name="items" value="文化传播">文化传播
                    <p><input type="checkbox" style="width: 30px;" name="items" value="房地产中介">房地产中介</p>
                    <p><input type="checkbox" style="width: 30px;" name="items" value="教育发展">教育发展</p>
                    <p><input type="checkbox" style="width: 30px;" name="items" value="商务咨询服务">商务咨询服务</p>
                    <p><input type="checkbox" style="width: 30px;" name="items" value="餐饮管理">餐饮管理</p>
                    <p><input type="checkbox" style="width: 30px;" name="items" value="知识产权咨询服务">知识产权咨询服务</p>
                    <p><input type="checkbox" style="width: 30px;" name="items" value="计算机、网络、数码、信息、电脑科技类">计算机、网络、数码、信息、电脑科技类</p>
                    <p><input type="checkbox" style="width: 30px;" name="items" value="进出口类">进出口类</p>
                    <p><input type="checkbox" style="width: 30px;" name="items" value="电子商务">电子商务</p>
                    <p><input type="checkbox" style="width: 30px;" name="items" value="广告传媒">广告传媒</p>

                    <button style="width: 30%;margin-left: 35%;" id="ran">提交</button>
                </div>
            </div>


            <span class="s_city">

				<label>所在城市</label><input type="text" placeholder="-请选择-" name="" value="" id="city_s">
				<br>
				<div class="s_city_bg">
					<div class="s_city_c">
					<h2>请选择收货地区</h2>
						<table cellpadding="0" cellspacing="0" class="c_tab" style="width: 255px;">
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

            <div id='allmap' style='width: 50%; height: 50%; position: absolute;margin-left:-11%;display: none'></div>
        </div>
        <input type="button" class="ui-btn" value="确认提交" name="">
        <div id="hidebox">

        </div>
    </div>
</div>


</body>
</html>