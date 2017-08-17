<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link type="text/css" rel="stylesheet" href="<%= request.getContextPath()%>/Css/style.css" />        
    
<title>商品添加</title>
</head>
<body>  
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
            <span class="fl">你好，请<a href="<%= request.getContextPath()%>/Login.html">登录</a>&nbsp; <a href="<%= request.getContextPath()%>/Regist.html" style="color:#ff4e00;">免费注册</a>&nbsp;<!-- |&nbsp;<a href="/#">我的订单</a>&nbsp; -->|</span>
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
        <div class="m_logo"><a href="<%= request.getContextPath()%>/Index.html"><img src="<%= request.getContextPath()%>/Picture/logo1.png" /></a></div>
        <div class="m_search">
            <form>
                <input type="text" value="" class="m_ipt" />
                <input type="submit" value="搜索" class="m_btn" />
            </form>                      
        </div>
    </div>
</div>
<!--End Header End--> 
<div class="i_bg bg_color">
    <!--Begin 用户中心 Begin -->
	<div class="m_content">
   		<div class="m_left">
        	<div class="left_n">卖家中心</div>
            <div class="left_m">
            	<div class="left_m_t t_bg1">商品管理</div>
                <ul>
                	<li><a href="<%= request.getContextPath()%>/Goodsadd.jsp" class="now">发布商品</a></li>
                    <li><a href="<%= request.getContextPath()%>/Member_Address.html">出售中的商品</a></li>
                    <li><a href="#">下架的商品</a></li>
                    <li><a href="#">体验中心</a></li>
                </ul>
            </div>
            <div class="left_m">
            	<div class="left_m_t t_bg3">交易管理</div>
                <ul>
                	<li><a href="<%= request.getContextPath()%>/Member_Safe.html">已卖出商品</a></li>
                    <li><a href="<%= request.getContextPath()%>/Member_Packet.html">评价管理</a></li>
                </ul>
            </div>
            <div class="left_m">
            	<div class="left_m_t t_bg4">物流管理</div>
                <ul>
                	<li><a href="<%= request.getContextPath()%>/Member_Member.html">发货</a></li>
                    <li><a href="<%= request.getContextPath()%>/Member_Results.html">物流工具</a></li>
                    <li><a href="<%= request.getContextPath()%>/Member_Commission.html">物流服务</a></li>
                    <li><a href="<%= request.getContextPath()%>/Member_Cash.html">寄快递</a></li>
                </ul>
            </div>
            <div class="left_m">
                <div class="left_m_t t_bg2">客户服务</div>
                <ul>
                    <li><a href="<%= request.getContextPath()%>/Member_User.html">退款管理</a></li>
                    <li><a href="<%= request.getContextPath()%>/Member_Collect.html" >售后管理</a></li>
                    <li><a href="<%= request.getContextPath()%>/Member_Msg.html">举报管理</a></li>
                    <li><a href="<%= request.getContextPath()%>/Member_Links.html">违规管理</a></li>
                </ul>
            </div>
        </div>
		<div class="m_right">
            <p></p>
            <div class="mem_tit">
            	<strong>发布商品</strong>
            </div>
             <!--内容详细-->
<div class="content_style">
  <div class="Release_product_style">

    <form>
    <table cellpadding="0" cellspacing="0" width="100%">
      <tr>
       <td class="label">店铺/公司名称：</td><td>香水之家</td></tr> 
       <tr><td class="label">编辑商品标题：</td><td><input name="" type="text"  class="addtext"  style=" width:500px;"/></td></tr>
       <tr><td class="label">设置商品分类：</td><td> 
       <span>一级分类：</span><select name="" size="1">
        <option value="1">电器智能</option>
        <option value="1">服装鞋帽</option>
        <option value="1">一级分类1</option>
        <option value="1">一级分类2</option>
      </select>
       <span>二级分类：</span><select name="" size="1">
        <option value="2">二级分类1</option>
        <option value="2">二级分类2</option>
        <option value="2">二级分类3</option>
        <option value="2">二级分类4</option>
      </select>
       <span>三级分类：</span><select name="" size="1">
        <option value="3">三级分类1</option>
        <option value="3">三级分类2</option>
        <option value="3">三级分类3</option>
        <option value="3">三级分类4</option>
      </select></td></tr>
       <tr><td class="label">设置商品规格：</td><td>
       <div class="add_Spec">
       
      
       </td>
       </tr>
       <tr><td class="label">商品销售价格：</td><td><input name="" type="text"  class="addtext" style=" width:200px;"/></td></tr>
       <tr><td class="label">商品促销价格：</td><td><input name="" type="text"  class="addtext" style=" width:200px; float:left" /> &nbsp;
            <input type="checkbox" name="">使用优惠劵</td></tr>
        <tr><td class="label">商品销售类别：</td><td><select name="" size="1">
        <option value="1">一级分类</option>
      </select></td></tr>                
       <tr><td class="label">商品概要介绍：</td><td><textarea name="" cols="" rows="" placeholder="商品的概要介绍。该介绍将出现在商品名称下方。" class="textarea"></textarea></td></tr>
       <tr><td class="label">商品宣传图片：</td><td>
           <!-- 添加预览图片 -->
            <div class="demo">
              <div class="v-box" id="vbox">
              </div>
              <div class="b-box">
                <form>
                  <input type="file" name="image" id="image" accept="image/*" multiple/>
                </form>
              </div>
            </div>
       </td></tr>
       <tr><td class="label">商品详细介绍：</td><td>富文本编辑器</td></tr>
     </table>
     <a href="#" class="Next_btn">提交商品资料</a>
     </form>
     
  </div>
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
<script type="text/javascript">

        function addEvent(node,event,handler){
            if (!!node.addEventListener){
                node.addEventListener(event,handler,!1);
            }else{
                node.attachEvent('on'+event,handler);
            }
        }
         // 高版本浏览器支持
        // 低版本浏览器可以先上传图片至服务器或者采用flash支持
        function file2dataurl(file,callback){
            if (!window.FileReader){
                throw 'Browser not support File API !';
            }
            var reader = new FileReader();
            reader.readAsDataURL(file);
            reader.onload = function(event){
                callback(event.target.result);
            };
        }
        // 添加预览图片
        function appendImage(url){
            // 添加预览图片容器
            var div = document.createElement('div');
            div.className = 'itbox';
            document.getElementById('vbox').appendChild(div);
            // 添加预览图片
            var image = new Image();
            div.appendChild(image);
            image.src = url;
        }
        // 文件选择
        addEvent(
            document.getElementById('image'),
            'change',function(event){
                if (!event.target){
                    throw 'Browser not support!';
                }
                var list = event.target.files;
                if (!list||!list.length){
                    return;
                }
                for(var i=0,l=list.length;i<l;i++){
                    file2dataurl(list[i],appendImage);
                }
                event.target.parentNode.reset();
            }
        );
</script>
</body>

</html>
