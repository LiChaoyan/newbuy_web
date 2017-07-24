<%--
  Created by IntelliJ IDEA.
  User: win8.1
  Date: 2017/7/21
  Time: 15:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<!--
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.3.2
Version: 3.7.0
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>商铺商品类别编辑</title>
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
    <script type="text/javascript">
        $(function() {
            var xbig;
            var xsmall;
            var xsecend;
            //2.根据一级返回值找二级返回值
            $("#big").change(function () {
                //使#small只保留第一个选项子节点
                $("#small option：not(：first)").remove();
                var big_big=$(this).val();
                $("#big_input").val(big_big);
                if (big_big != "") {
                    xbig = big_big;
                    var url = "<%=request.getContextPath()%>/categorysmall";
                    var args = {"big_big": big_big, "time": new Date()};
                    $.getJSON(url, args, function (data) {
                            for (var i = 0; i < data.length; i++) {
                                var small_small = data[i].small;
                                $("#small").append("<option value ='" + small_small + "'>" + small_small + "</option>");
                            }
                        }
                    );
                }


            });
            //2.根据二级返回值找三级返回值
            $("#small").change(function () {
                $("#secend option：not(：first)").remove();
                var small_small=$(this).val();
                $("#small_input").val(small_small);
                xsmall = small_small;
                if (small_small != "") {
                    var url = "<%=request.getContextPath()%>/categorysecend";
                    var args = {"big_big": xbig, "small_small": small_small, "time": new Date()};
                    $.getJSON(url, args, function (data) {
                        for (var i = 0; i < data.length; i++) {
                            var secend_id = data[i].cgid;
                            var secend_secend = data[i].secend;
                            $("#secend").append("<option  value='" + secend_secend + "'>" + secend_secend + "</option>");
                        }
                    });
                }
            });

            //3.根据一级，二级，三级返回值把商铺类别绑定到店铺sid
            $("#secend").change(function () {
                var secend_secend = $(this).val();
                $("#secend_input").val(secend_secend);
                xsecend = secend_secend;
            });

            //4.自定义或选择的把商铺类别绑定到店铺sid
            $("#add").click(function () {
                if (xbig != "") {
                    var url = "<%=request.getContextPath()%>/savecategory";
                    var args = {"xbig": xbig, "xsmall": xsmall, "xsecend": xsecend, "time": new Date()};
                    $.getJSON(url, args, function (data) {
                        alert(data + "(具体逻辑未实现）");
                    });
                }
            });

            $("#read").onclick(function(){
                var url = "<%=request.getContextPath()%>/allcategory";
                var args = {"time": new Date()};
                $.getJSON(url, args, function (data) {
                    alert(data + "(具体逻辑未实现）");
                });
            });

            $("#delect").onclick(function () {
            alert("返回后台一个列表，可以一次操作删除多个类别");
            });
        });
    </script>
    <style>

    </style>



    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <meta content="" name="description"/>
    <meta content="" name="author"/>
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet"
          type="text/css">
    <link href="<%=request.getContextPath()%>/back/assets/global/plugins/font-awesome/css/font-awesome.min.css"
          rel="stylesheet" type="text/css">
    <link href="<%=request.getContextPath()%>/back/assets/global/plugins/simple-line-icons/simple-line-icons.min.css"
          rel="stylesheet" type="text/css">
    <link href="<%=request.getContextPath()%>/back/assets/global/plugins/bootstrap/css/bootstrap.min.css"
          rel="stylesheet" type="text/css">
    <link href="<%=request.getContextPath()%>/back/assets/global/plugins/uniform/css/uniform.default.css"
          rel="stylesheet" type="text/css">
    <link href="<%=request.getContextPath()%>/back/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css"
          rel="stylesheet" type="text/css"/>

    <link href="<%=request.getContextPath()%>/back/assets/global/css/components-rounded.css" rel="stylesheet"
          type="text/css"/>
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link rel="stylesheet" type="text/css"
          href="<%=request.getContextPath()%>/back/assets/global/plugins/select2/select2.css"/>
    <link rel="stylesheet" type="text/css"
          href="<%=request.getContextPath()%>/back/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css"/>
    <!-- END PAGE LEVEL STYLES -->
    <!-- BEGIN THEME STYLES -->
    <link href="<%=request.getContextPath()%>/back/assets/global/css/components-md.css" id="style_components"
          rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/back/assets/global/css/plugins-md.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/back/assets/admin/layout4/css/layout.css" rel="stylesheet"
          type="text/css"/>
    <link id="style_color" href="<%=request.getContextPath()%>/back/assets/admin/layout4/css/themes/light.css"
          rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/back/assets/admin/layout4/css/custom.css" rel="stylesheet"
          type="text/css"/>
    <!-- END THEME STYLES -->
    <link rel="shortcut icon" href="favicon.ico"/>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-fixed-mobile" and "page-footer-fixed-mobile" class to body element to force fixed header or footer in mobile devices -->
<!-- DOC: Apply "page-sidebar-closed" class to the body and "page-sidebar-menu-closed" class to the sidebar menu element to hide the sidebar by default -->
<!-- DOC: Apply "page-sidebar-hide" class to the body to make the sidebar completely hidden on toggle -->
<!-- DOC: Apply "page-sidebar-closed-hide-logo" class to the body element to make the logo hidden on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-hide" class to body element to completely hide the sidebar on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-fixed" class to have fixed sidebar -->
<!-- DOC: Apply "page-footer-fixed" class to the body element to have fixed footer -->
<!-- DOC: Apply "page-sidebar-reversed" class to put the sidebar on the right side -->
<!-- DOC: Apply "page-full-width" class to the body element to have full width page without the sidebar menu -->
<body class="page-md page-header-fixed page-sidebar-closed-hide-logo ">
<!-- BEGIN HEADER -->
<div class="page-header md-shadow-z-1-i navbar navbar-fixed-top">
    <!-- BEGIN HEADER INNER -->
    <div class="page-header-inner">
        <!-- BEGIN LOGO -->
        <div class="page-logo">
            <a href="#">
                <img src="images/logo2.png" alt="logo" class="logo-default"/>
            </a>
            <div class="menu-toggler sidebar-toggler">
                <!-- DOC: Remove the above "hide" to enable the sidebar toggler button on header -->
            </div>
        </div>
        <!-- END LOGO -->
        <!-- BEGIN RESPONSIVE MENU TOGGLER -->
        <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse"
           data-target=".navbar-collapse">
        </a>
        <!-- END RESPONSIVE MENU TOGGLER -->
        <!-- BEGIN PAGE TOP -->
        <div class="page-top">
            <!-- BEGIN HEADER SEARCH BOX -->
            <!-- DOC: Apply "search-form-expanded" right after the "search-form" class to have half expanded search box -->
            <form class="search-form" action="#" method="GET">
                <div class="input-group">
                    <input type="text" class="form-control input-sm" placeholder="Search..." name="query">
                    <span class="input-group-btn">
					<a href="javascript:;" class="btn submit"><i class="icon-magnifier"></i></a>
					</span>
                </div>
            </form>
            <!-- END HEADER SEARCH BOX -->
            <!-- BEGIN TOP NAVIGATION MENU -->
            <div class="top-menu">
                <ul class="nav navbar-nav pull-right">
                    <li class="separator hide">
                    </li>

                    <!-- BEGIN USER LOGIN DROPDOWN -->
                    <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
                    <li class="dropdown dropdown-user dropdown-dark">
                        <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
                           data-close-others="true">
						<span class="username username-hide-on-mobile">
						Admin </span>
                            <!-- DOC: Do not remove below empty space(&nbsp;) as its purposely used -->
                            <img alt="" class="img-circle"
                                 src="<%=request.getContextPath()%>/back/assets/admin/layout4/img/avatar9.jpg"/>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-default">
                            <li>
                                <a href="#">
                                    <i class="icon-user"></i> 我的主页 </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="icon-calendar"></i> 我的日程 </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="icon-envelope-open"></i> 我的盒子 <span class="badge badge-danger">
								3 </span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="icon-rocket"></i> 我的任务 <span class="badge badge-success">
								7 </span>
                                </a>
                            </li>
                            <li class="divider">
                            </li>
                            <li>
                                <a href="#">
                                    <i class="icon-lock"></i> 锁屏 </a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath }/backloginout.form">
                                    <i class="icon-key"></i> 退出登录 </a>
                            </li>
                        </ul>
                    </li>
                    <!-- END USER LOGIN DROPDOWN -->
                </ul>
            </div>
            <!-- END TOP NAVIGATION MENU -->
        </div>
        <!-- END PAGE TOP -->
    </div>
    <!-- END HEADER INNER -->
</div>
<!-- END HEADER -->
<div class="clearfix">
</div>
<!-- BEGIN CONTAINER -->
<div class="page-container">
    <!-- BEGIN SIDEBAR -->
    <div class="page-sidebar-wrapper">
        <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
        <!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
        <div class="page-sidebar md-shadow-z-2-i  navbar-collapse collapse">
            <!-- BEGIN SIDEBAR MENU -->
            <!-- DOC: Apply "page-sidebar-menu-light" class right after "page-sidebar-menu" to enable light sidebar menu style(without borders) -->
            <!-- DOC: Apply "page-sidebar-menu-hover-submenu" class right after "page-sidebar-menu" to enable hoverable(hover vs accordion) sub menu mode -->
            <!-- DOC: Apply "page-sidebar-menu-closed" class right after "page-sidebar-menu" to collapse("page-sidebar-closed" class must be applied to the body element) the sidebar sub menu mode -->
            <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
            <!-- DOC: Set data-keep-expand="true" to keep the submenues expanded -->
            <!-- DOC: Set data-auto-speed="200" to adjust the sub menu slide up/down speed -->
            <ul class="page-sidebar-menu " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
                <li  class="start " >
                    <a href="#">
                        <i class="icon-briefcase"></i>
                        <span class="title">模板参考</span>
                        <span class="arrow "></span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="${pageContext.request.contextPath }/backlogin.form">
                                <i class="icon-user"></i>登录注册model</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath }/intoSecAdd.form">
                                <i class="icon-pencil"></i>添加版块model</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contentType}/postManage.form">
                                <i class="icon-bar-chart"></i>列表展示model</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath }/sectionList.form">
                                <i class="icon-folder"></i>板块信息</a>
                        </li>
                    </ul>
                </li>
                <li class="">
                    <a href="javascript:;">
                        <i class="icon-user"></i>
                        <span class="title">用户管理</span>
                        <span class="arrow "></span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="${pageContext.request.contextPath }/bossAdd.form">
                                <i class="icon-pencil"></i> 店主注册</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath }/bossphone.form">
                                <i class="icon-pencil"></i> 店主注册手机号修改</a>
                        </li>
                    </ul>
                </li>

                <li class="start ">
                    <a href="javascript:;">
                        <i class="icon-home"></i>
                        <span class="title">店铺管理</span>
                        <span class="arrow "></span>
                    </a>
                    <ul class="sub-menu">

                        <li>
                            <a href="${pageContext.request.contextPath }/shopAdd.form">
                                <i class="icon-pencil"></i> 店铺注册</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath }/shopUp.form">
                                <i class="icon-pencil"></i> 店铺注册信息修改</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath }/category.form">
                                <i class="icon-pencil"></i> 店铺商品类别编辑</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath }/shopList.form">
                                <i class="icon-pencil"></i> 店铺列表展示</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- END SIDEBAR MENU -->
        </div>
    </div>
    <!-- END SIDEBAR -->
    <!-- BEGIN CONTENT -->
    <div class="page-content-wrapper">
        <div class="page-content">
            <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
            <div class="modal fade" id="portlet-config" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                            <h4 class="modal-title">Modal title</h4>
                        </div>
                        <div class="modal-body">
                            Widget settings form goes here
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn blue">Save changes</button>
                            <button type="button" class="btn default" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->
            <!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
            <!-- BEGIN PAGE HEADER-->

            <!-- BEGIN PAGE HEAD -->
            <div class="page-head">
                <!-- BEGIN PAGE TITLE -->
                <div class="page-title">
                    <h1>Managed Datatables <small>managed datatable samples</small></h1>
                </div>
                <!-- END PAGE TITLE -->
                <!-- BEGIN PAGE TOOLBAR -->
                <div class="page-toolbar">
                    <!-- BEGIN THEME PANEL -->
                    <div class="btn-group btn-theme-panel">
                        <a href="javascript:;" class="btn dropdown-toggle" data-toggle="dropdown">
                            <i class="icon-settings"></i>
                        </a>
                        <div class="dropdown-menu theme-panel pull-right dropdown-custom hold-on-click">
                            <div class="row">
                                <div class="col-md-4 col-sm-4 col-xs-12">
                                    <h3>THEME</h3>
                                    <ul class="theme-colors">
                                        <li class="theme-color theme-color-default active" data-theme="default">
                                            <span class="theme-color-view"></span>
                                            <span class="theme-color-name">Dark Header</span>
                                        </li>
                                        <li class="theme-color theme-color-light" data-theme="light">
                                            <span class="theme-color-view"></span>
                                            <span class="theme-color-name">Light Header</span>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-md-8 col-sm-8 col-xs-12 seperator">
                                    <h3>LAYOUT</h3>
                                    <ul class="theme-settings">
                                        <li>
                                            Theme Style
                                            <select class="layout-style-option form-control input-small input-sm">
                                                <option value="square" selected="selected">Square corners</option>
                                                <option value="rounded">Rounded corners</option>
                                            </select>
                                        </li>
                                        <li>
                                            Layout
                                            <select class="layout-option form-control input-small input-sm">
                                                <option value="fluid" selected="selected">Fluid</option>
                                                <option value="boxed">Boxed</option>
                                            </select>
                                        </li>
                                        <li>
                                            Header
                                            <select class="page-header-option form-control input-small input-sm">
                                                <option value="fixed" selected="selected">Fixed</option>
                                                <option value="default">Default</option>
                                            </select>
                                        </li>
                                        <li>
                                            Top Dropdowns
                                            <select class="page-header-top-dropdown-style-option form-control input-small input-sm">
                                                <option value="light">Light</option>
                                                <option value="dark" selected="selected">Dark</option>
                                            </select>
                                        </li>
                                        <li>
                                            Sidebar Mode
                                            <select class="sidebar-option form-control input-small input-sm">
                                                <option value="fixed">Fixed</option>
                                                <option value="default" selected="selected">Default</option>
                                            </select>
                                        </li>
                                        <li>
                                            Sidebar Menu
                                            <select class="sidebar-menu-option form-control input-small input-sm">
                                                <option value="accordion" selected="selected">Accordion</option>
                                                <option value="hover">Hover</option>
                                            </select>
                                        </li>
                                        <li>
                                            Sidebar Position
                                            <select class="sidebar-pos-option form-control input-small input-sm">
                                                <option value="left" selected="selected">Left</option>
                                                <option value="right">Right</option>
                                            </select>
                                        </li>
                                        <li>
                                            Footer
                                            <select class="page-footer-option form-control input-small input-sm">
                                                <option value="fixed">Fixed</option>
                                                <option value="default" selected="selected">Default</option>
                                            </select>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END THEME PANEL -->
                </div>
                <!-- END PAGE TOOLBAR -->
            </div>
            <!-- END PAGE HEAD -->
            <!-- BEGIN PAGE BREADCRUMB -->
            <ul class="page-breadcrumb breadcrumb">
                <li>
                    <a href="index.html">Home</a>
                    <i class="fa fa-circle"></i>
                </li>
                <li>
                    <a href="#">Data Tables</a>
                    <i class="fa fa-circle"></i>
                </li>
                <li>
                    <a href="#">Managed Datatables</a>
                </li>
            </ul>
            <!-- END PAGE BREADCRUMB -->
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT-->
            <!-- 自己的代码begin -->

            <span style="margin-left: 10px;">
    一级分类：<select id="big" style="width: 150px;height:22px;">
                <option>请选择或输入</option>
            <c:forEach items="${categorybigs}" var="big">
                <option  value=${big.big}>${big.big}</option>
            </c:forEach>
            </select>
    <input id="big_input" value="" style="width: 135px;height:22px;margin-left:-156px;" tyoe="text">
</span>
            <span style="margin-left: 40px;">
    二级分类：<select id="small" style="width: 150px;height:22px;">
                <option>请选择或输入</option>
            </select>
    <input id="small_input" style="width: 130px;height:22px;margin-left:-156px;" tyoe="text">
</span>
            <span style="margin-left: 50px;">
    三级分类：<select id="secend" style="width: 150px;height:22px;">
             <option>请选择或输入</option>
            </select>
    <input id="secend_input" style="width: 130px;height:22px;margin-left:-156px;" tyoe="text">
</span>
            <input id="add" type="button" value="添加"style="margin-left: 70px;">
            <hr>

            <div class="row">
                <div class="col-md-6 col-sm-12">
                    <!-- BEGIN EXAMPLE TABLE PORTLET-->
                    <div class="portlet box yellow">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-user"></i>我的店铺商品类别
                            </div>
                            <div class="actions">
                                <a id="delete" class="btn btn-default btn-sm">
                                    <i class="fa fa-cogs"></i> 移除 </a>
                            </div>
                        </div>
                    </div>
                    <div class="portlet-body">
                        <table class="table table-striped table-bordered table-hover" id="sample_2">
                            <thead>
                            <tr >
                                <th class="table-checkbox">
                                    <input type="checkbox" class="group-checkable" data-set="#sample_2 .checkboxes"/>
                                </th>
                                <th>
                                    一级分类
                                </th>
                                <th>
                                    二级分类
                                </th>
                                <th>
                                    三级分类
                                </th>
                            </tr>
                            </thead>
                            <tbody id="showtr">
                            <c:forEach items="${Category}" var="big">
                            <tr class="odd gradeX">
                                <td>
                                    <input type="checkbox" class="checkboxes" value="1"/>
                                </td>
                                    <td value=${category.big}>${category.big}</td>
                                    <td value=${category.small}>${category.small}</td>
                                    <td value=${category.secend}>${category.secend}</td>

                            </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- END EXAMPLE TABLE PORTLET-->
            </div>
        </div>
            <!-- 自己的代码 end-->
        </div>
    </div>
    <!-- END CONTENT -->
</div>
<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<div class="page-footer">
    <div class="page-footer-inner">
        2017 &copy; made by lovegod.
    </div>
    <div class="scroll-to-top">
        <i class="icon-arrow-up"></i>
    </div>
</div>
<!-- END FOOTER -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="<%=request.getContextPath()%>/back/assets/global/plugins/respond.min.js"></script>
<script src="<%=request.getContextPath()%>/back/assets/global/plugins/excanvas.min.js"></script>
<![endif]-->
<script src="<%=request.getContextPath()%>/back/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/back/assets/global/plugins/jquery-migrate.min.js"
        type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="<%=request.getContextPath()%>/back/assets/global/plugins/jquery-ui/jquery-ui.min.js"
        type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/back/assets/global/plugins/bootstrap/js/bootstrap.min.js"
        type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/back/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"
        type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/back/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js"
        type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/back/assets/global/plugins/jquery.blockui.min.js"
        type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/back/assets/global/plugins/jquery.cokie.min.js"
        type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/back/assets/global/plugins/uniform/jquery.uniform.min.js"
        type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/back/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js"
        type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script type="text/javascript"
        src="<%=request.getContextPath()%>/back/assets/global/plugins/select2/select2.min.js"></script>
<script type="text/javascript"
        src="<%=request.getContextPath()%>/back/assets/global/plugins/datatables/media/js/jquery.dataTables.min.js"></script>
<script type="text/javascript"
        src="<%=request.getContextPath()%>/back/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="<%=request.getContextPath()%>/back/assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/back/assets/admin/layout4/scripts/layout.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/back/assets/admin/layout4/scripts/demo.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/back/assets/admin/pages/scripts/table-managed.js"></script>
<script>
    jQuery(document).ready(function () {
        Metronic.init(); // init metronic core components
        Layout.init(); // init current layout
        Demo.init(); // init demo features
        TableManaged.init();
    });
</script>
<script type="text/javascript">
    <c:if test="${!empty error_msg}">alert("${error_msg}");
    </c:if>
</script>
</body>
<!-- END BODY -->
</html>

