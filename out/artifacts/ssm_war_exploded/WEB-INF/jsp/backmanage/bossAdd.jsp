<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>BootstrapValidator demo</title>



    <link rel="stylesheet" href="<%=request.getContextPath()%>/back/assets/validator/vendor/bootstrap/css/bootstrap.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/back/assets/validator/dist/css/bootstrapValidator.css"/>

    <script type="text/javascript" src="<%=request.getContextPath()%>/back/assets/validator/vendor/jquery/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/back/assets/validator/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/back/assets/validator/dist/js/bootstrapValidator.js"></script>


</head>
<body style="background:#5c97bd">
<div class="container">
    <div class="row">
        <!-- form: -->
        <section>
            <div class="col-lg-8 col-lg-offset-2">
                <div class="page-header">
                    <h2>店主注册</h2>
                </div>

                <form id="defaultForm" method="post" class="form-horizontal"  action="<%=request.getContextPath()%>/bossAdd">



                    <p class="hint">
                        个人真实信息：
                    </p>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">个人头像</label>
                        <div class="col-lg-5">

                        </div>
                        <div >
                            <input type="url" name="ypic" value="">
                            <img src="<%=request.getContextPath()%>/back/assets/admin/layout/img/bosspic.jpg" placeholder="头像" name="pic"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">姓名</label>
                        <div class="col-lg-5">
                            <input class="form-control" type="text" autocomplete="off" placeholder="真实姓名" name="name"
                                   required data-bv-notempty-message="不能为空" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">身份证号</label>
                        <div class="col-lg-5">
                            <input class="form-control" type="text" autocomplete="off" placeholder="身份证号" name="id"
                                   required data-bv-notempty-message="不能为空"
                            />

                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">电话</label>
                        <div class="col-lg-5">
                            <input class="form-control" type="text" autocomplete="off" placeholder="电话" name="phone"
                                   required data-bv-notempty-message="不能为空"
                                   pattern="^1[3|5|8]{1}[0-9]{9}$" data-bv-regexp-message="电话格式错误"
                            />
                            <p>${phoneerror}</p>
                        </div>
                    </div>
                    <p class="hint">
                        登录注册:
                    </p>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">昵称</label>
                        <div class="col-lg-5">
                            <input class="form-control" type="text" autocomplete="off" placeholder="4-20字符" name="nickname"data-bv-message="The Username is not valid"
                                   required data-bv-notempty-message="不能为空"
                                   pattern="^[a-zA-Z0-9]{4,20}$" data-bv-regexp-message="昵称格式错误"
                            />
                            <p>${nicknameerror}</p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">密码</label>
                        <div class="col-lg-5">
                            <input type="password" class="form-control" name="password"placeholder="6-20字符"
                                   required data-bv-notempty-message="不能为空"
                                   pattern="^[a-zA-Z0-9]{6,20}$" data-bv-regexp-message="密码格式错误"
                            />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-3 control-label">密码确认</label>
                        <div class="col-lg-5">
                            <input type="password" class="form-control" name="repassword" placeholder="6-20字符"
                                   required data-bv-notempty-message="不能为空"
                                   data-bv-identical="true" data-bv-identical-field="password" data-bv-identical-message="密码不一致"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="check">
                            <input id="check" type="checkbox" name="tnc"/>
                            <span class="loginblue-font">我同意 </span>
                            <a href="javascript:;" style="color: #d73b3b" class="loginblue-link">开店协议</a>
                            <span class="loginblue-font">和</span>
                            <a href="javascript:;" style="color: #d73b3b"  class="loginblue-link">个人协议 </a>
                       <span id="checktip"></span>
                        </label>
                        <div id="register_tnc_error">
                        </div>
                    </div>
                    <div class="form-actions">
                        <button  type="submit" id="register-submit-btn" class="btn btn-primary uppercase pull-right">提交</button>
                    </div>
                </form>
            </div>
        </section>
        <!-- :form -->
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function() {
        $('#defaultForm').bootstrapValidator();
    });
</script>
</body>
</html>