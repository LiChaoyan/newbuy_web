<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<<<<<<< HEAD
=======
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
>>>>>>> 53dcd462319bb938ffb700fe7ab7bc20b23a5da9
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="<%=request.getContextPath()%>/Scripts/lib/html5.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/Scripts/lib/respond.min.js"></script>
<![endif]-->
<link href="<%=request.getContextPath()%>/Css/static/h-ui/css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/Css/static/h-ui.admin/css/H-ui.admin.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/Scripts/lib/Hui-iconfont/1.0.8/iconfont.css" rel="stylesheet" type="text/css" />
<!--[if IE 6]>
<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script><![endif]-->
<title>用户查看</title>
</head>
<body>
<div class="cl pd-20" style=" background-color:#5bacb6">
  <dl style="margin-left:80px; color:#fff">
<<<<<<< HEAD
    <dt><span class="f-18">张三</span>
=======
    <dt><span class="f-18">${employer.username}</span>
>>>>>>> 53dcd462319bb938ffb700fe7ab7bc20b23a5da9
</div>
<div class="pd-20">
  <table class="table">
    <tbody>
      <tr>
        <th class="text-r" width="80">性别：</th>
<<<<<<< HEAD
        <td>男</td>
      </tr>
      <tr>
        <th class="text-r">手机：</th>
        <td>13000000000</td>
      </tr>
      <tr>
        <th class="text-r">邮箱：</th>
        <td>admin@mail.com</td>
      </tr>
      <tr>
        <th class="text-r">所属店铺：</th>
        <td>店铺1</td>
      </tr>
      <tr>
        <th class="text-r">注册时间：</th>
        <td>2014.12.20</td>
=======
        <td>${employer.gender==0?"男":"女"}</td>
      </tr>
      <tr>
        <th class="text-r">手机：</th>
        <td>${employer.phone}</td>
      </tr>
      <tr>
        <th class="text-r">邮箱：</th>
        <td>${employer.email}</td>
      </tr>
      <tr>
        <th class="text-r">所属店铺：</th>
        <td>${employer.shopname}</td>
      </tr>
      <tr>
        <th class="text-r">注册时间：</th>
        <td><fmt:formatDate value="${employer.addtime}" pattern="yyyy-MM-dd HH:mm:ss"/> </td>
>>>>>>> 53dcd462319bb938ffb700fe7ab7bc20b23a5da9
      </tr>
      
    </tbody>
  </table>
</div>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="<%=request.getContextPath()%>/Scripts/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/Scripts/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/Css/static/h-ui/js/H-ui.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/Css/static/h-ui.admin/js/H-ui.admin.page.js"></script>
<!--/_footer /作为公共模版分离出去-->

</body>
</html>