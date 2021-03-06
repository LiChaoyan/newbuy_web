<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="Bookmark" href="<%=request.getContextPath()%>/Images/favicon.ico"/>
    <link rel="Shortcut Icon" href="<%=request.getContextPath()%>/Images/favicon.ico"/>
    <!--[if lt IE 9]>
    <script type="text/javascript" src="<%=request.getContextPath()%>/Scripts/lib/html5.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/Scripts/lib/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/Css/static/h-ui/css/H-ui.min.css"/>
    <link rel="stylesheet" type="text/css"
          href="<%=request.getContextPath()%>/Css/static/h-ui.admin/css/H-ui.admin.css"/>
    <link rel="stylesheet" type="text/css"
          href="<%=request.getContextPath()%>/Scripts/lib/Hui-iconfont/1.0.8/iconfont.css"/>
    <link rel="stylesheet" type="text/css"
          href="<%=request.getContextPath()%>/Css/static/h-ui.admin/skin/default/skin.css" id="skin"/>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/Css/static/h-ui.admin/css/style.css"/>
    <!--[if IE 6]>
    <script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js"></script>
    <script>DD_belatedPNG.fix('*');</script><![endif]-->
    <!--/meta 作为公共模版分离出去-->

    <title>添加用户 - H-ui.admin 3.0</title>
</head>
<body>
<article class="cl pd-20">
    <form role="form" action="<%=request.getContextPath()%>/boss/bankShop/addSub" method="post" class="form form-horizontal" id="form-member-add">
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>法人姓名：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder="" id="username" name="username">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>所属银行：</label>
            <div class="formControls col-xs-8 col-sm-9"> <span class="select-box">
				<select class="select" size="1" name="bank" onchange="changeStatue(this)">
					<option selected>请选择银行</option>
					<option>中国工商银行</option>
					<option>中国农业银行</option>
					<option>中国建设银行</option>
					<option>中国邮政储蓄银行</option>
					<option>中国银行</option>
				</select>
				</span></div>
        </div>
        <div class="row cl" id="bankCard" style="display: none">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>银行卡号：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder="请输入银行卡号" name="bankCard">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>所属店铺：</label>
            <div class="formControls col-xs-8 col-sm-9"> <span class="select-box">
				<select class="select" size="1" name="shopid">
					<option value="" selected>请选择店铺</option>
					<c:forEach items="${shops}" var="shop">
                        <option value="${shop.sid}">${shop.shopname}</option>
                    </c:forEach>
				</select>
				</span></div>
        </div>

        <div class="row cl">
            <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
                <input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
            </div>
        </div>
    </form>
</article>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="<%=request.getContextPath()%>/Scripts/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/Scripts/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/Css/static/h-ui/js/H-ui.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/Css/static/h-ui.admin/js/H-ui.admin.page.js"></script>
<!--/_footer /作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript"
        src="<%=request.getContextPath()%>/Scripts/lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript"
        src="<%=request.getContextPath()%>/Scripts/lib/jquery.validation/1.14.0/jquery.validate.js"></script>
<script type="text/javascript"
        src="<%=request.getContextPath()%>/Scripts/lib/jquery.validation/1.14.0/validate-methods.js"></script>
<script type="text/javascript"
        src="<%=request.getContextPath()%>/Scripts/lib/jquery.validation/1.14.0/messages_zh.js"></script>
<script type="text/javascript">

    function changeStatue(obj) {
        var index = obj.selectedIndex;
        var bank = obj.options[index].text;
        if (index != 0) {
            var cardstatue = document.getElementById("bankCard");
            cardstatue.style.display="block";
            var card = document.getElementsByName("bankCard");
            card.placeholder = "请输入" + bank + "的银行卡号";
        }else{
            var cardstatue = document.getElementById("bankCard");
            cardstatue.style.display="none";
        }

    }

    $(function () {
        $('.skin-minimal input').iCheck({
            checkboxClass: 'icheckbox-blue',
            radioClass: 'iradio-blue',
            increaseArea: '20%'
        });

        $("#form-member-add").validate({
            rules: {
                username: {
                    required: true,
                    minlength: 2,
                    maxlength: 16
                },
                sex: {
                    required: true,
                },
                mobile: {
                    required: true,
                    isMobile: true,
                },
                email: {
                    required: true,
                    email: true,
                },
                uploadfile: {
                    required: true,
                },

            },
            onkeyup: false,
            focusCleanup: true,
            success: "valid",
            submitHandler: function (form) {
                $(form).ajaxSubmit();
                var index = parent.layer.getFrameIndex(window.name);
                parent.$('.btn-refresh').click();
                parent.layer.close(index);
            }
        });
    });
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>