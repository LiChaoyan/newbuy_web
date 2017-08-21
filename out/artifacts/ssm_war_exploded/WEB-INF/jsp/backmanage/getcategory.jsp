<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="com.xoqao.web.bean.category.Category"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
                var big_big=$(this).val();
                $("#big_input").val(big_big);
                if (big_big != "" && big_big != "请选择或输入") {
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
        });
        $(document).ready(function(){
            var big_big = $("#big_input").val($("#big option:selected").text());
            alert(big_big);
            $("button").click(function(){
                $("p").hide(1000);
                alert("现在段落被隐藏了");
            });
        });
    </script>
    <style>

    </style>
</head>
<body>

<span style="margin-left: 10px;">
    一级分类：<select id="big" style="width: 150px;height:21px;">
            <c:forEach items="${categorybigs}" var="big">
            <option  value=${big.big}>${big.big}</option>
            </c:forEach>
            </select>
    <input id="big_input" value="" style="width: 130px;height:15px;margin-left:-157px;" type="text">
</span>
<span style="margin-left: 40px;">
    二级分类：<select id="small" style="width: 150px;height:21px;">
            </select>
    <input id="small_input" style="width: 130px;height:15px;margin-left:-157px;" type="text">
</span>
<span style="margin-left: 50px;">
    三级分类：<select id="secend" style="width: 150px;height:21px;">
            </select>
    <input id="secend_input" style="width: 130px;height:15px;margin-left:-157px;" type="text">
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
                        <a class="btn btn-default btn-sm" href="javascript:;" data-toggle="dropdown">
                            <i class="fa fa-cogs"></i> 工具 <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu pull-right">
                            <li>
                                <a href="javascript:;">
                                    <i class="fa fa-pencil"></i> 修改 </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <i class="fa fa-trash-o"></i> 删除 </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="portlet-body">
                <table class="table table-striped table-bordered table-hover" id="sample_2">
                    <thead>
                    <tr>
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
                    <tbody>
                    <tr class="odd gradeX">
                        <td>
                            <input type="checkbox" class="checkboxes" value="1"/>
                        </td>
                        <td>
                            shuxer
                        </td>
                        <td>
                            <a href="mailto:shuxer@gmail.com">
                                shuxer@gmail.com </a>
                        </td>
                        <td>
									<span class="label label-sm label-success">
									Approved </span>
                        </td>
                    </tr>

                    <tr class="odd gradeX">
                        <td>
                            <input type="checkbox" class="checkboxes" value="1"/>
                        </td>
                        <td>
                            test
                        </td>
                        <td>
                            <a href="mailto:userwow@gmail.com">
                                test@gmail.com </a>
                        </td>
                        <td>
									<span class="label label-sm label-success">
									Approved </span>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- END EXAMPLE TABLE PORTLET-->
    </div>
</div>
<hr>

<!-- END PAGE CONTENT-->
</body>
</html>