<%--
  Created by IntelliJ IDEA.
  User: win8.1
  Date: 2017/9/10
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!--Begin 商品分类详情 Begin-->
<div class="nav">
    <div class="nav_t">全部商品分类</div>
    <div class="leftNav none">
        <ul>
            <%!  int pngnum=0; %>
            <c:forEach items="${List}" var="BigCategory">
                <%  pngnum++;%>
                <li>
                    <div class="fj">
                        <span class="n_img"><span></span><img src="<%= request.getContextPath()%>/Picture/nav<%=pngnum%>.png"/></span>
                        <span class="fl">${BigCategory.big}</span>
                    </div>
                    <div class="zj" style="top:0px;">
                        <div class="zj_l">
                            <c:forEach items="${BigCategory.smallCategoryList}" var="SmallCategory">
                                <div class="zj_l_c">
                                    <h2>${SmallCategory.small}</h2>
                                    <c:forEach items="${SmallCategory.categoryList}" var="Category">
                                        <a href="<%=request.getContextPath()%>/CategoryList?cgid=${Category.cgid}&p=1">${Category.secend}</a>|
                                    </c:forEach>
                                </div>
                            </c:forEach>
                        </div>
                        <div class="zj_r">
                            <a href="#"><img src="<%= request.getContextPath()%>/Picture/n_img1.jpg" width="236" height="200" /></a>
                            <a href="#"><img src="<%= request.getContextPath()%>/Picture/n_img2.jpg" width="236" height="200" /></a>
                        </div>
                    </div>
                </li>
            </c:forEach>
        </ul>
    </div>
</div>
<!--End 商品分类详情 End-->
<ul class="menu_r">
    <li><a href="<%= request.getContextPath()%>/Index.html">首页</a></li>
    <li><a href="<%= request.getContextPath()%>/Food.html">美食</a></li>
    <li><a href="<%= request.getContextPath()%>/Fresh.html">生鲜</a></li>
    <li><a href="<%= request.getContextPath()%>/HomeDecoration.html">家居</a></li>
    <li><a href="<%= request.getContextPath()%>/SuitDress.html">女装</a></li>
    <li><a href="<%= request.getContextPath()%>/MakeUp.html">美妆</a></li>
    <li><a href="<%= request.getContextPath()%>/Digital.html">数码</a></li>
    <li><a href="<%= request.getContextPath()%>/GroupBuying.html">团购</a></li>
</ul>