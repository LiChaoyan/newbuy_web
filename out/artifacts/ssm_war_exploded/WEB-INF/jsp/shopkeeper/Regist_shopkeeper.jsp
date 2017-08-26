<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link type="text/css" rel="stylesheet" href="<%= request.getContextPath()%>/Css/style.css"/>
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
    <link rel="stylesheet" media="screen" href="<%= request.getContextPath()%>/Css/zzsc.css"/>
    <style type="text/css">
        #progressbar li {
            list-style-type: none;
            color: #ff4e00;
        }

        body {
            font-family: montserrat, arial, verdana;
            background-color: white;
        }

        #progressbar li:after {
            content: '';
            width: 100%;
            height: 2px;
            background: #ff4e00;
        }

        #progressbar li.active:before, #progressbar li.active:after {
            background: #ff4e00;
            color: white;
        }

        #progressbar {
            margin-bottom: 30px;
            overflow: hidden;
            counter-reset: step;
            width: 200%;
            margin-left: -50%;
        }

        #msform fieldset {
            width: 100%;
        }

        #msform .action-button {
            width: 100px;
            background: #ff4e00;
        }
    </style>
    <script type="text/javascript">
        var flag = {
            "phonenumber": false,
            "verify": false,
            "idnum": false,
            "myname": false,
            "username": false,
            "password": false,
        };
        $(function () {

            // 手机号校验
            $("#txtNumber").blur(function () {
                var phonenumber = $(this).val();
                var pattern = /^1(3|4|5|7|8)\d{9}$/;
                if (!pattern.test(phonenumber)) {
                    $("#phonenumber\\.info").html("手机号格式不正确");
                    return;
                } else {
                    $("#phonenumber\\.info").html("");
                    flag.phonenumber = true;
                    return;
                }
            });

            // 验证码校验
            $("#txtVerify").blur(function () {
                var verify = $(this).val();

                var pattern = /\b(^[0-9]{4,6}$)\b/;
                if (!pattern.test(verify)) {
                    $("#verify\\.info").html("验证码错误");
                    return;
                } else {
                    $("#verify\\.info").html("");
                    flag.verify = true;
                    return;
                }
            });

            $("#txtUserName").blur(function () {
                // 用户名校验
                var username = $(this).val();

                // 校验规则，可调整
                var pattern = /\b(^['A-Za-z0-9]{4,20}$)\b/;
                if (!pattern.test(username)) {
                    $("#username\\.info").html("用户名不合法");
                    return;
                } else {
                    $("#username\\.info").html("");
                    flag.username = true;
                }
            });

            // 密码校验
            $("#txtPassword").blur(function () {
                var password = $(this).val();

                var pattern = /\b(^['A-Za-z0-9]{4,20}$)\b/;
                if (!pattern.test(password)) {
                    $("#password\\.info").html("密码格式不正确");
                    return;
                } else {
                    $("#password\\.info").html("");
                    //flag.password=true;
                    return;
                }
            });

            // 密码重复校验
            $("#txtRepeatPass").blur(function () {
                var repeatPass = $(this).val();

                var pattern = /\b(^['A-Za-z0-9]{4,20}$)\b/;
                if (repeatPass != $("#txtPassword").val()) {
                    $("#repeatPass\\.info").html("两次密码输入不一致");
                    return;
                } else {
                    $("#repeatPass\\.info").html("");
                    flag.password = true;
                    return;
                }
            });
            // 身份证验证
            $("#txtidnum").blur(function () {
                var idnum = $(this).val();

                var pattern = /^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$|^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}([0-9]|X|x)$/;
                if (!pattern.test(idnum)) {
                    $("#idnum\\.info").html("身份证格式不正确");
                    return;
                } else {
                    $("#idnum\\.info").html("");
                    flag.idnum = true;
                }
            });
            //姓名校验
            $("#txtName").blur(function () {
                // 用户名校验
                var myname = $(this).val();

                // 校验规则，可调整
                var pattern = /\b(^['A-Za-z0-9]{4,20}$)\b/;
                if (!pattern.test(myname)) {
                    $("#myname\\.info").html("姓名与身份证不符");
                    return;
                } else {
                    $("#myname\\.info").html("");
                    flag.myname = true;
                }
            });

            $("#msform").submit(function () {
                var ok = flag.email && flag.password && flag.nickname;
                if (ok == false) {
                    alert("表单项正在检测或存在错误");
                    history.back();
                    return false;
                }
                return true;
            });


        })

    </script>

    <title>店主注册</title>
</head>
<body background="<%= request.getContextPath()%>/Picture/denglu.jpg">
<!--Begin Header Begin-->
<jsp:include page="/public_jsp/login_Header.jsp" flush="true"></jsp:include>
<!--End Header End-->
<!--Begin Login Begin-->
<div class="log_bg">
    <form id="msform" role="form" action="" method="post" enctype="multipart/form-data">
        <!-- progressbar -->
        <ul id="progressbar">
            <li class="active">创建账户</li>
            <li>填写个人信息</li>
            <li>实名认证</li>
        </ul>
        <!-- fieldsets -->
        <fieldset>
            <h2 class="fs-title">创建账户</h2>
            <h3 class="fs-subtitle">第一步</h3>

            <input type="text" value="" class="l_tel" name="phonenumber" id="txtNumber" placeholder="请输入手机号" required/>
            <span id="phonenumber.info" style="color:red"></span><br>

            <input type="text" value="" style="" class="l_ipt" name="verify" id="txtVerify" placeholder="请输入验证码"
                   required/>
            <span id="verify.info" style="color:red"></span><br>
            <a href="<%= request.getContextPath()%>/#" style="font-size:12px; font-family:'宋体';">重新发送验证码</a><br>


            <input type="button" name="next" class="next action-button" value="下一步"/>
        </fieldset>
        <fieldset>
            <h2 class="fs-title">填写个人信息</h2>
            <h3 class="fs-subtitle">第二步</h3>

            <input type="text" class="l_user" id="txtUserName" name="username" placeholder="请输入用户名" required/>
            <span id="username.info" style="color:red"></span><br>

            <input type="password" class="l_pwd" name="password" id="txtPassword" placeholder="请输入密码" required/>
            <span id="password.info" style="color:red"></span><br>

            <input type="password" class="l_pwd" name="repeatPass" id="txtRepeatPass" placeholder="请再次输入密码" required>
            <span id="repeatPass.info" style="color:red"></span><br>


            <input type="button" name="previous" class="previous action-button" value="上一步"/>
            <input type="button" name="next" class="next action-button" value="下一步"/>
        </fieldset>
        <fieldset>
            <h2 class="fs-title">实名认证</h2>
            <h3 class="fs-subtitle">第三步</h3>

            <input type="text" value="" class="l_email" id="txtidnum" placeholder="请输入身份证号" required>
            <span id="idnum.info" style="color:red"></span><br>

            <input type="text" class="l_user" id="txtName" name="myname" placeholder="请输入真实姓名" required/>
            <span id="myname.info" style="color:red"></span><br>

            <input id="file" placeholder="上传身份证正面照片" multiple type="file"/>
            <input id="file1" placeholder="上传身份证反面照片" name="file" multiple type="file"/>
            <input id="file2" placeholder="上传本人近期照片" name="file" multiple type="file"/>

            <input type="button" name="previous" class="previous action-button" value="上一步" required/>
            <input type="submit" name="submit" class="log_btn submit action-button " value="提交" required/>
        </fieldset>
    </form>
    <script src="http://thecodeplayer.com/uploads/js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="http://thecodeplayer.com/uploads/js/jquery.easing.min.js" type="text/javascript"></script>
    <script src="<%= request.getContextPath()%>/js/zzsc.js" type="text/javascript"></script>
</div>
</div>
</div>
<!--End Login End-->
<!--Begin Footer Begin-->
<div class="btmbg">
    <div class="btm">
        <img src="<%= request.getContextPath()%>/Picture/b_1.gif" width="98" height="33"/><img
            src="<%= request.getContextPath()%>/Picture/b_2.gif" width="98" height="33"/><img
            src="<%= request.getContextPath()%>/Picture/b_3.gif" width="98" height="33"/><img
            src="<%= request.getContextPath()%>/Picture/b_4.gif" width="98" height="33"/><img
            src="<%= request.getContextPath()%>/Picture/b_5.gif" width="98" height="33"/><img
            src="<%= request.getContextPath()%>/Picture/b_6.gif" width="98" height="33"/>
    </div>
</div>
<!--End Footer End -->

</body>


<!--[if IE 6]>
<script src="<%= request.getContextPath()%>/Scripts/zh_cn.js"></script>
<![endif]-->
</html>