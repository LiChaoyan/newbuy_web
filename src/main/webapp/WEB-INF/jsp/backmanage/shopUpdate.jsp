<%--
  Created by IntelliJ IDEA.
  User: lcy
  Date: 2017/7/17
  Time: 11:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<head>
    <title>shopshow</title>
</head>
<body>
<form>

        店铺名称:${shop.shopname}<br/>
        类型：${shop.type}<br/>
        电话：${shop.stel}<br/>
        城市：${shop.city}<br/>
        地址：${shop.saddress}<br/>
        经营范围：${shop.scope}<br/>
        店铺描述：${shop.subscrib}
    <input type="submit" href="<%=request.getContextPath()%>/shopAdd" value="修改">
    <input type="button" href="<%=request.getContextPath()%>/shopList" value="取消">
</form>
<p>${message}</p>
</body>
</html>
