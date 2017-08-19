<%--
  Created by IntelliJ IDEA.
  User: 123
  Date: 2017/8/18
  Time: 16:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<div class="soubg">
    <div class="sou">
          <span class="fr">
              <span class="fl">你好，请<a href="<%=request.getContextPath()%>/user/login.html" style="color:#ff4e00;">登录</a>&nbsp; |&nbsp;<a
                      href="<%=request.getContextPath()%>/user/Regist.html">免费注册</a>&nbsp;|&nbsp;<a
                      href="<%=request.getContextPath()%>/shop/index.html">商城主页</a></span>
          </span>
    </div>
</div>
