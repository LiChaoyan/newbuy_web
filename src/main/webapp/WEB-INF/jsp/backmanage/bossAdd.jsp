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
                    <h2>Sign up</h2>
                </div>

                <form id="defaultForm" method="get" class="form-horizontal" action="#"
                      data-bv-message="This value is not valid"
                      data-bv-feedbackicons-valid="glyphicon glyphicon-ok"
                      data-bv-feedbackicons-invalid="glyphicon glyphicon-remove"
                      data-bv-feedbackicons-validating="glyphicon glyphicon-refresh">



                    <p class="hint">
                        Enter your personal details below:
                    </p>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Picture</label>
                        <div class="col-lg-5">
                            <img src="<%=request.getContextPath()%>/back/assets/admin/layout/img/bosspic.jpg" style="height: 17px;" placeholder="头像" name="pic"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">name</label>
                        <div class="col-lg-5">
                            <input class="form-control" type="text" autocomplete="off" placeholder="真实姓名" name="name"
                                   required data-bv-notempty-message="The  name is required and cannot be empty" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">ID</label>
                        <div class="col-lg-5">
                            <input class="form-control" type="text" autocomplete="off" placeholder="身份证号" name="id"
                                   required data-bv-notempty-message="The  name is required and cannot be empty"
                            />

                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Phone</label>
                        <div class="col-lg-5">
                            <input class="form-control" type="text" autocomplete="off" placeholder="电话" name="phone"
                                   required data-bv-notempty-message="The Phone is required and cannot be empty"
                                   pattern="^1[3|5|8]{1}[0-9]{9}$" data-bv-regexp-message="The input is not a valid phone "
                            />
                            <p>${phoneerror}</p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Sid</label>
                        <div class="col-lg-5">
                            <input class="form-control" type="text" autocomplete="off" placeholder="店铺号" name="sid"
                                   data-bv-message="The Sid is not valid"
                                   required data-bv-notempty-message="The Sid is required and cannot be empty"
                                   pattern="[0-9]+" data-bv-regexp-message="The Sid can only consist of number"
                                   data-bv-stringlength="true" data-bv-stringlength-min="1" data-bv-stringlength-max="6" data-bv-stringlength-message="The Sid must be more than 1 and less than 6 characters long"
                            />
                            <p>${siderror}</p>
                        </div>
                    </div>


                    <p class="hint">
                        Enter your account details below:
                    </p>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Username</label>
                        <div class="col-lg-5">
                            <input class="form-control" type="text" autocomplete="off" placeholder="昵称" name="nickname"data-bv-message="The Username is not valid"
                                   required data-bv-notempty-message="The Username is required and cannot be empty"
                                   pattern="^[a-zA-Z0-9]{4,20}$" data-bv-regexp-message="昵称为4-20字符"
                            />
                            <p>${nicknameerror}</p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Password</label>
                        <div class="col-lg-5">
                            <input type="password" class="form-control" name="password"placeholder="密码"
                                   required data-bv-notempty-message="The password is required and cannot be empty"
                                   pattern="^[a-zA-Z0-9]{6,20}$" data-bv-regexp-message="密码为6-20字符"
                            />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-3 control-label">Retype password</label>
                        <div class="col-lg-5">
                            <input type="password" class="form-control" name="repassword" placeholder="确认密码"
                                   required data-bv-notempty-message="The confirm password is required and cannot be empty"
                                   data-bv-identical="true" data-bv-identical-field="password" data-bv-identical-message="The password and its confirm are not the same"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="check">
                            <input type="checkbox" name="tnc"/>
                            <span class="loginblue-font">I agree to the </span>
                            <a href="javascript:;" style="color: #d73b3b" class="loginblue-link">Terms of Service</a>
                            <span class="loginblue-font">and</span>
                            <a href="javascript:;" style="color: #d73b3b"  class="loginblue-link">Privacy Policy </a>
                        </label>
                        <div id="register_tnc_error">
                        </div>
                    </div>
                    <div class="form-actions">
                        <button  type="submit" id="register-submit-btn" class="btn btn-primary uppercase pull-right">Submit</button>
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