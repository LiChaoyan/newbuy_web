<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link type="text/css" rel="stylesheet" href="<%= request.getContextPath()%>/Css/style.css" />
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/jquery-1.11.1.min_044d0927.js"></script>
	<script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/jquery.bxslider_e88acd1b.js"></script>
    
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/menu.js"></script>    
        
	<script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/select.js"></script>
    
	<script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/lrscroll.js"></script>
    
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/iban.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/fban.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/f_ban.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/mban.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/bban.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/hban.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/tban.js"></script>
    
	<script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/lrscroll_1.js"></script>
     
    <!-- <link rel="stylesheet" href="http://apps.bdimg.com/libs/bootstrap/3.2.0/css/bootstrap.min.css"> -->
    <script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>
    <script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    
<title>注册</title>

<script type="text/javascript">
   
   var flag = {
                "phonenumber":false,
                "verify":false,
            };
      $(function(){

                 // 手机号校验
                $("#txtNumber").blur(function(){
                    var phonenumber=$(this).val(); 
                    var pattern = /^1(3|4|5|7|8)\d{9}$/; 
                    if (!pattern.test(phonenumber)) { 
                        $("#phonenumber\\.info").html("手机号格式不正确"); 
                        return;    
                    }else{ 
                        $("#phonenumber\\.info").html(""); 
                        flag.phonenumber=true; 
                        return; 
                    } 
                });

                // 验证码校验
                $("#txtVerify").blur(function(){
                    var verify=$(this).val(); 

                    var pattern = /\b(^[0-9]{4,6}$)\b/; 
                    if (!pattern.test(verify)) { 
                        $("#verify\\.info").html("验证码错误"); 
                        return;    
                    }else{ 
                        $("#verify\\.info").html(""); 
                        flag.verify=true; 
                        return; 
                    } 
                });

            })

</script>
<style type="text/css">
 

</style>
</head>
<body>  
<!--Begin Header Begin-->
<div class="soubg">
  <div class="sou">
        <span class="fr">
          <span >你好，请<a href="<%= request.getContextPath()%>/Login">登录</a>&nbsp; <a href="<%= request.getContextPath()%>/Regist" style="color:#ff4e00;">免费注册 &nbsp;</a></span>
            <span class="fr">|&nbsp;<a href="#">手机版&nbsp;<img src="<%= request.getContextPath()%>/Picture/s_tel.png" align="absmiddle" /></a></span>
        </span>
    </div>
</div>
<!--End Header End--> 
<!--Begin Login Begin-->
<div class="log_bg">	
    <div class="top">
        <div class="logo"><a href="<%= request.getContextPath()%>/Index.html"><img src="<%= request.getContextPath()%>/Picture/logo.png" /></a></div>
    </div>
	<div class="regist">
    	<div class="log_img"><img src="<%= request.getContextPath()%>/Picture/l_img.png" width="611" height="425" /></div>
		<div class="reg_c">
        	<form class="form-horizontal" role="form" method="post" id="form">
            <table border="0" style="width:420px; font-size:14px; margin-top:20px;" cellspacing="0" cellpadding="0">

              <tr>
                <ul id="status">
                  <li class="active"><strong>1.</strong>创建账户</li>
                  <li><strong>2.</strong>填写个人信息</li>
                  <li><strong>3.</strong>实名认证</li>
                </ul>
              </tr>
              <tr height="50">
                <td align="right"><font color="#ff4e00">*</font>&nbsp;手机号&nbsp;</td>
                <td><input type="text" value="" class="l_tel" name="phonenumber" id="txtNumber" placeholder="请输入手机号" required/><br>
                <span id="phonenumber.info" style="color:red"></span></td>
              </tr>
              <tr height="50">
                <td align="right"> <font color="#ff4e00">*</font>&nbsp;验证码 &nbsp;</td>
                <td>
                    <input type="text" value="" class="l_ipt" name="verify" id="txtVerify" placeholder="请输入手机号" required/>
                    <a href="#" style="font-size:12px; font-family:'宋体';">重新发送</a><br>
                    <span id="verify.info" style="color:red"></span>
                </td>
              </tr>
              <tr>
              	<td>&nbsp;</td>
              </tr>
              <tr height="60">
              	<td>&nbsp;</td>
                <td>
                <a href="<%= request.getContextPath()%>/Registtwo"><input type="button" value="下一步" class="log_btn" /></a></td>
              </tr>
            </table>
            </form>
        </div>
    </div>
</div>
<!--End Login End--> 
<!--Begin Footer Begin-->
<div class="btmbg">
    <div class="btm">
        <img src="<%= request.getContextPath()%>/Picture/b_1.gif" width="98" height="33" /><img src="<%= request.getContextPath()%>/Picture/b_2.gif" width="98" height="33" /><img src="<%= request.getContextPath()%>/Picture/b_3.gif" width="98" height="33" /><img src="<%= request.getContextPath()%>/Picture/b_4.gif" width="98" height="33" /><img src="<%= request.getContextPath()%>/Picture/b_5.gif" width="98" height="33" /><img src="<%= request.getContextPath()%>/Picture/b_6.gif" width="98" height="33" />
    </div>    	
</div>


</body>
</html>
