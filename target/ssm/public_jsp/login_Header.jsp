<%--
  Created by IntelliJ IDEA.
  User: 123
  Date: 2017/8/18
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<div class="soubg">
    <div class="sou">
        <span class="fr">
        	<span>你好，请<a href="<%= request.getContextPath()%>/user/login.html">登录</a>&nbsp; <a
                    href="<%= request.getContextPath()%>/user/Regist.html" style="color:#ff4e00;">免费注册 &nbsp;</a></span>
            <span class="fr">|&nbsp;<a href="#">手机版&nbsp;<img src="<%= request.getContextPath()%>/Picture/s_tel.png"
                                                              align="absmiddle"/></a></span>
        </span>
    </div>
</div>
