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
     
    <%--<link rel="stylesheet" href="http://apps.bdimg.com/libs/bootstrap/3.2.0/css/bootstrap.min.css">--%>
    <script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>
    <script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    
<title>注册</title>
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
        <div class="logo"><a href="<%= request.getContextPath()%>/Index"><img src="<%= request.getContextPath()%>/Picture/logo.png" /></a></div>
    </div>
	<div class="regist">
    	<div class="log_img"><img src="<%= request.getContextPath()%>/Picture/l_img.png" width="611" height="425" /></div>
		<div class="reg_c">
        	<form class="form-horizontal" role="form" method="post" id="form">
            <table border="0" style="width:420px; font-size:14px; margin-top:20px;" cellspacing="0" cellpadding="0">

              <tr>
                <ul id="status">
                  <li><strong>1.</strong>创建账户</li>
                  <li><strong>2.</strong>填写个人信息</li>
                  <li class="active"><strong>3.</strong>实名认证</li>
                </ul>
              </tr>
              <tr height="50">
                <td align="right"><font color="#ff4e00"></font>&nbsp;身份证 &nbsp;</td>
                <td><input type="text" value="" class="l_email" id="txtidnum" placeholder="请输入身份证号" required><br>
                <span id="idnum.info" style="color:red"></span></td>
              </tr>
              <tr height="50">
                <td align="right"><font color="#ff4e00"></font>&nbsp;姓名 &nbsp;</td>
                <td><input type="text" class="l_user" id="txtName" name="myname" placeholder="请输入真实姓名" required /><br>
                <span id="myname.info" style="color:red"></span></td>
              </tr>
              <tr>
              	<td>&nbsp;</td>
                <td style="font-size:12px; padding-top:20px;">
                	<span style="font-family:'宋体';" class="fl">
                    	<label class="r_rad"><input type="checkbox" /></label><label class="r_txt">我已阅读并接受《用户协议》</label>
                    </span>
                </td>
              </tr>
              <tr height="60">
              	<td>&nbsp;</td>
                <td>
                <a href="<%= request.getContextPath()%>/Login">跳过</a>
                <input type="submit" value="注册" class="log_btn" />
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
        <img src="<%= request.getContextPath()%>/Picture/b_1.gif" width="98" height="33" />
        <img src="<%= request.getContextPath()%>/Picture/b_2.gif" width="98" height="33" /><img src="<%= request.getContextPath()%>/Picture/b_3.gif" width="98" height="33" /><img src="<%= request.getContextPath()%>/Picture/b_4.gif" width="98" height="33" /><img src="<%= request.getContextPath()%>/Picture/b_5.gif" width="98" height="33" /><img src="<%= request.getContextPath()%>/Picture/b_6.gif" width="98" height="33" />
    </div>    	
</div>

<script type="text/javascript">

    var flag = {
        "idnum":false,
        "myname":false,
    };
    $(function(){


        // 身份证验证
        $("#txtidnum").blur(function(){
            var idnum = $(this).val();

            var pattern=/^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$|^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}([0-9]|X|x)$/;
            if(!pattern.test(idnum)){
                $("#idnum\\.info").html("身份证格式不正确");
                return;
            }else{
                $("#idnum\\.info").html("");
                flag.idnum = true;
            }
        });
            //姓名校验
        $("#txtName").blur(function(){
            // 用户名校验
            var myname = $(this).val();

            // 校验规则，可调整
            var pattern = /\b(^['A-Za-z0-9]{4,20}$)\b/;
            if(!pattern.test(myname)){
                $("#myname\\.info").html("姓名与身份证不符");
                return;
            }else{
                $("#myname\\.info").html("");
                flag.myname = true;
            }
        });

        $("#form").submit(function(){
            var ok = flag.email&&flag.password&&flag.nickname;
            if(ok==false){
                alert("表单项正在检测或存在错误");
                history.back();
                return false;
            }
            return true;
        });

    }); </script>

</body>
</html>
