<%--
  Created by IntelliJ IDEA.
  User: win8.1
  Date: 2017/8/9
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>评论轮播图</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="<%=request.getContextPath()%>/back/assets/lbt/images/rural2015.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="<%= request.getContextPath()%>/Scripts/jquery.1.4.2-min.js"></script>


    <!--星级评价1.4的jquery就行-->
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/back/assets/xingji/demo/css/application.css">
    <script type="text/javascript" src="<%=request.getContextPath()%>/back/assets/xingji/lib/jquery.raty.js"></script>
    <script type="text/javascript">
        <!--星级插件展示-->
        $(function() {
            $('.assesstureadOnly').each(function (index) {
                var slevel=$(this).text();
                $(this).raty({ readOnly: true, score:slevel });

            })

        });
    </script>
    <style type="text/css">
        .slh-hollrall {
            width: 400px;
            overflow: hidden; /*内容超出后隐藏*/
            text-overflow: ellipsis; /* 超出内容显示为省略号*/
            white-space: nowrap; /*文本不进行换行*/
        }
        .multiLineText-detail {  /*设置文本为多行，如果超出长度用省略号代替*/
                             width: 400px;
                             word-break: break-all;
                             display: -webkit-box;
                             -webkit-line-clamp: 5;  /*限制在一个块元素显示的文本的行数*/
                             -webkit-box-orient: vertical;
                             overflow: hidden;
                         }
        .multiLineText-back{
            width: 400px;
            word-break: break-all;
            display: -webkit-box;
            -webkit-line-clamp: 2;  /*限制在一个块元素显示的文本的行数*/
            -webkit-box-orient: vertical;
            overflow: hidden;
        }
    </style>
</head>
<body>
<div class="content_Assess" style="width: 100%;">
<div class="slider">
    <div class="focus_img">
        <ul>
            <c:forEach items="${AssessList}" var="tuassess">
                <c:forEach items="${fn:split(tuassess.pics,';')}" var="tupic" begin="0" end="${fn:length(fn:split(tuassess.pics,';'))}" varStatus="stat">
                    <li class="aaa1" style="width:900px;"><img src="${tupic}" border="0" /></li>
                </c:forEach>
            </c:forEach>
        </ul>
    </div>
    <div class="focus_nav">

        <ul>
            <c:forEach items="${AssessList}" var="tuassess">
                <c:forEach items="${fn:split(tuassess.pics,';')}" var="tupic" begin="0" end="${fn:length(fn:split(tuassess.pics,';'))}" varStatus="stat">
                    <li class="aaa2" style="width:197px;"><img src="${tupic}" border="0" /></li>
                </c:forEach>
            </c:forEach>
        </ul>
        <a class="navPrev" href="javascript:;"></a><a class="navNext nextStop" href="javascript:;"></a>
    </div>
    <div class="focus_text" >
        <ul id="focus_content_list">
            <c:forEach items="${AssessList}" var="tuassess">
                <c:forEach items="${fn:split(tuassess.pics,';')}" var="tupic" begin="0" end="${fn:length(fn:split(tuassess.pics,';'))}" varStatus="stat">
                    <li class="aaa">
                        <p><img src="${tuassess.headerpic}" width="20" height="20" align="absmiddle" />&nbsp;${tuassess.username}<br/>
                            <span class="assesstureadOnly">${tuassess.grade}</span>
                        </p>
                        <span class="slh-hollrall">${tuassess.hollrall}</span> <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="multiLineText-hollrall">${tuassess.detail}</span><br/>
                            <br/>
                            颜色分类：<font color="#999999">粉色</font>&nbsp;&nbsp;&nbsp;&nbsp;
                            型号：<font color="#999999">50ml</font>&nbsp;&nbsp;&nbsp;&nbsp;
                            <font color="#999999">${tuassess.date}</font>
                            <hr style="border : 1px dashed #999999;" />
                            <span style="color: #FF4855">
                            <span class="boss-back">店主回复:</span><br>
                                <sapn class="multiLineText-back">${tuassess.bossback}</sapn>
                            </span>

                    </li>
                </c:forEach>
            </c:forEach>
        </ul>
    </div>

    <div class="pnBtn prev">
        <span class="blackBg"></span><a class="arrow" href="javascript:void(0)"></a>
    </div>
    <div class="pnBtn next">
        <span class="blackBg"></span><a class="arrow" href="javascript:void(0)"></a>
    </div>
</div>
</div>


</div>
<script type="text/javascript" src="<%=request.getContextPath()%>/back/assets/lbt/images/jquery.SuperSlide.2.1.1.source.js"></script>

<script type="text/javascript">
    var chongfu1 =$('.slider .focus_img ul').html();
    $('.slider .focus_img ul').append(chongfu1).append(chongfu1).append(chongfu1);
    var chongfu2 =$('.slider .focus_nav ul').html();
    $('.slider .focus_nav ul').append(chongfu2).append(chongfu2).append(chongfu2);
    var chongfu3 =$('.slider .focus_text ul').html();
    $('.slider .focus_text ul').append(chongfu3).append(chongfu3).append(chongfu3);
    jQuery(".slider .focus_img li").first().before(jQuery(".slider .focus_img li").last());
    jQuery(".slider").hover(function() {
        jQuery(this).find(".focus_text").fadeIn("slow");
    }, function() {
        jQuery(this).find(".focus_text").fadeOut("slow");
    });


    jQuery(".slider").slide({
        titCell: ".focus_nav li",
        mainCell: ".focus_img ul",
        targetCell: ".focus_text li",
        prevCell: ".prev",
        nextCell: ".next",
        effect: "leftLoop",
        easing:"easeInExpo",
        autoPlay: true,
        pnLoop:true,
        delayTime:500,
        interTime:4500,
        mouseOverStop:true,
        startFun: function(i) {
            if (i == 0) {
                jQuery(".slider .navPrev").click()
            } else if (i % 4 == 0) {
                jQuery(".slider .navNext").click()
            }
        }
    });
    jQuery(".slider").slide({
        mainCell: ".focus_nav ul",
        prevCell: ".navPrev",
        nextCell: ".navNext",
        effect: "leftLoop",
        vis:5,
        scroll:1,
        delayTime:500,
        autoPage:true,
        pnLoop:true,
    });

</script>


</body>
</html>
