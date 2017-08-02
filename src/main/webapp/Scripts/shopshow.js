
//详情选项卡切换
$(function(){
            $(".pro_tab li").each(function(i){
                $(this).click(function(){
                    $(this).addClass("cur").siblings().removeClass("cur");
                    $(".conlist .conbox").eq(i).show().siblings().hide();
                })
            })
        })

// 放大镜视窗

 $(function(){
    $("#h1").toggle(function(){
        $("#h1").css("background-image","url('images/iconfont-xingxingman_add.png')");
    },function(){
        $("#h1").css("background-image","url('images/iconfont-xingxingman_add.png') ");
            })
        }) 

    $(document).ready(function(){

    $(".jqzoom").imagezoom();
    
    $("#thumblist li a").mousemove(function(){
        $(this).parents("li").addClass("tb-selected").siblings().removeClass("tb-selected");
        $(".jqzoom").attr('src',$(this).find("img").attr("mid"));
        $(".jqzoom").attr('rel',$(this).find("img").attr("big"));
    });

});

    $(document).ready(function(){
    // 图片上下滚动
    var count = $("#imageMenu li").length - 5; /* 显示 6 个 li标签内容 */
    var interval = $("#imageMenu li:first").width();
    var curIndex = 0;
    $('.scrollbutton').click(function(){
        if( $(this).hasClass('disabled') ) return false;
        if ($(this).hasClass('smallImgUp')) --curIndex;
        else ++curIndex;
        $('.scrollbutton').removeClass('disabled');
        if (curIndex == 0) $('.smallImgUp').addClass('disabled');
        if (curIndex == count-1) $('.smallImgDown').addClass('disabled');
        $("#imageMenu ul").stop(false, true).animate({"marginLeft" : -curIndex*interval + "px"}, 600);
    }); 
    // 解决 ie6 select框 问题
    $.fn.decorateIframe = function(options) {
        if ($.browser.msie && $.browser.version < 7) {
            var opts = $.extend({}, $.fn.decorateIframe.defaults, options);
            $(this).each(function() {
                var $myThis = $(this);
                //创建一个IFRAME
                var divIframe = $("<iframe />");
                divIframe.attr("id", opts.iframeId);
                divIframe.css("position", "absolute");
                divIframe.css("display", "none");
                divIframe.css("display", "block");
                divIframe.css("z-index", opts.iframeZIndex);
                divIframe.css("border");
                divIframe.css("top", "0");
                divIframe.css("left", "0");
                if (opts.width == 0) {
                    divIframe.css("width", $myThis.width() + parseInt($myThis.css("padding")) * 2 + "px");
                }
                if (opts.height == 0) {
                    divIframe.css("height", $myThis.height() + parseInt($myThis.css("padding")) * 2 + "px");
                }
                divIframe.css("filter", "mask(color=#fff)");
                $myThis.append(divIframe);
            });
        }
    }
    $.fn.decorateIframe.defaults = {
        iframeId: "decorateIframe1",
        iframeZIndex: -1,
        width: 0,
        height: 0
    }
    //放大镜视窗
    $("#bigView1").decorateIframe();
    //点击到中图
    var midChangeHandler = null;
    $("#imageMenu li img").bind("click", function(){
        if ($(this).attr("id") != "onlickImg") {
            midChange($(this).attr("src").replace("small", "mid"));
            $("#imageMenu li").removeAttr("id");
            $(this).parent().attr("id", "onlickImg");
        }
    }).bind("mouseover", function(){
        if ($(this).attr("id") != "onlickImg") {
            window.clearTimeout(midChangeHandler);
            midChange($(this).attr("src").replace("small", "mid"));
            $(this).css({ "border": "3px solid #959595" });
        }
    }).bind("mouseout", function(){
        if($(this).attr("id") != "onlickImg"){
            $(this).removeAttr("style");
            midChangeHandler = window.setTimeout(function(){
                midChange($("#onlickImg img").attr("src").replace("small", "mid"));
            }, 1000);
        }
    });
    function midChange(src) {
        $("#midimg1").attr("src", src).load(function() {
            changeViewImg();
        });
    }
   // 大视窗看图
    function mouseover(e) {
        if ($("#winSelector1").css("display") == "none") {
            $("#winSelector1,#bigView1").show();
        }
        $("#winSelector1").css(fixedPosition(e));
        e.stopPropagation();
    }
    function mouseOut(e) {
        if ($("#winSelector1").css("display") != "none") {
            $("#winSelector1,#bigView1").hide();
        }
        e.stopPropagation();
    }
    $("#midimg1").mouseover(mouseover); //中图事件
    $("#midimg1,#winSelector1").mousemove(mouseover).mouseout(mouseOut); //选择器事件
    var $divWidth = $("#winSelector1").width(); //选择器宽度
    var $divHeight = $("#winSelector1").height(); //选择器高度
    var $imgWidth = $("#midimg1").width(); //中图宽度
    var $imgHeight = $("#midimg1").height(); //中图高度
    var $viewImgWidth = $viewImgHeight = $height = null; //IE加载后才能得到 大图宽度 大图高度 大图视窗高度
    function changeViewImg() {
        $("#bigView1 img").attr("src", $("#midimg1").attr("src").replace("mid", "big"));
    }
    changeViewImg();
    $("#bigView1").scrollLeft(0).scrollTop(0);
    function fixedPosition(e) {
        if (e == null) {
            return;
        }
        var $imgLeft = $("#midimg1").offset().left; //中图左边距
        var $imgTop = $("#midimg1").offset().top; //中图上边距
        X = e.pageX - $imgLeft - $divWidth / 2; //selector顶点坐标 X
        Y = e.pageY - $imgTop - $divHeight / 2; //selector顶点坐标 Y
        X = X < 0 ? 0 : X;
        Y = Y < 0 ? 0 : Y;
        X = X + $divWidth > $imgWidth ? $imgWidth - $divWidth : X;
        Y = Y + $divHeight > $imgHeight ? $imgHeight - $divHeight : Y;
        if ($viewImgWidth == null) {
            $viewImgWidth = $("#bigView1 img").outerWidth();
            $viewImgHeight = $("#bigView1 img").height();
            if ($viewImgWidth < 200 || $viewImgHeight < 200) {
                $viewImgWidth = $viewImgHeight = 800;
            }
            $height = $divHeight * $viewImgHeight / $imgHeight;
            $("#bigView1").width($divWidth * $viewImgWidth / $imgWidth);
            $("#bigView1").height($height);
        }
        var scrollX = X * $viewImgWidth / $imgWidth;
        var scrollY = Y * $viewImgHeight / $imgHeight;
        $("#bigView1 img").css({ "left": scrollX * -1, "top": scrollY * -1 });
        $("#bigView1").css({ "top": 250, "left": $(".preview1").offset().left + $(".preview1").width() + 15 });
        return { left: X, top: Y };
    }
});

//放大评论里的图片
// $(function(){
// 		$('.aaa').bagac();
// 	});
// (function ($) {
//     $.fn.bagac = function () {

//         /*
//          * 构造函数 @bagac
//          * 定义基础变量，初始化对象事件
//          */
//         function bagac($obj){
//             this.$win = $(window);
//             this.$obj = $obj;
//             this.$popup,
//             this.$img,
//             this.nWinWid = 0;
//             this.nWinHei = 0;
//             this.nImgWid = 0;
//             this.nImgHei = 0;
//             this.nImgRate = 0;
//             this.sImgStatus;
//             this.sImgSrc,
//             this.bMoveX = true,
//             this.bMoveY = true;

//             this.init();
//         }

//         /*
//          * 初始化 绑定基础事件
//          */
//         bagac.prototype.init = function(){
//             var oThis = this,
//                 timer = null;

//             // 为图片绑定点击事件
//             this.$obj.off('.bagac').on('click.bagac', function(){
//                 var sTagName = this.tagName.toLowerCase();
//                 if(sTagName == 'img'){
//                     // 更新基础变量
//                     oThis.sImgSrc = this.getAttribute('src');
//                     oThis.sImgStatus = 'min';
//                     // 显示弹窗
//                     oThis.show();
//                 }else{
//                     alert('非IMG标签');
//                 }
//             });

//             // 浏览器缩放
//             this.$win.off('.bagac').on('resize.bagac', function(){
//                 clearTimeout(timer);
//                 timer = setTimeout(function(){
//                     oThis.zoom();
//                 }, 30);
//             });
//         }

//         /*
//          * 弹窗初始化
//          */
//         bagac.prototype.show = function(){
//             var oThis = this,
//                 oImg = new Image();

//             oThis.popup();   // 显示弹窗

//             // 图片加载
//             oImg.onload = function(){
//                 oThis.nImgWid = this.width;
//                 oThis.nImgHei = this.height;
//                 oThis.nImgRate = oThis.nImgWid/oThis.nImgHei;

//                 $('#Loadingbagac').remove();
//                 oThis.$popup.append('<img id="imgbagac" class="img-bagac" src="'+ oThis.sImgSrc +'" />');
//                 oThis.$img = $('#imgbagac');
                
//                 oThis.zoom();
//             }
//             oImg.src = oThis.sImgSrc;
//         }

//         /*
//          * 弹窗显示 及相关控件事件绑定
//          */
//         bagac.prototype.popup = function(){
//             var sHtml = '',
//                 oThis = this;
//             // 生成HTML 选中DOM节点
//             sHtml += '<div id="popupbagac" class="popup-bagac" style="width:'+ this.nWinWid +'px;height:'+ this.nWinHei +'px;">' 
//                   +     '<div class="option-bagac">'
//                   +         '<span id="changebagac" class="change-bagac min-bagac" state-bagac="min">放大</span>'
//                   +         '<span id="closebagac" class="close-bagac">关闭</span>'
//                   +     '</div>'
//                   +     '<img id="Loadingbagac" class="loading-bagac" src="preloader.gif" />'
//                   +  '</div>';
//             $('body').append(sHtml);
//             oThis.$popup = $('#popupbagac');
            
//             // 事件绑定 - 关闭弹窗
//             $('#closebagac').off().on('click',function(){
//                 oThis.$popup.remove();
//             });

//             // 事件绑定 - 切换尺寸
           
//         }

//         /*
//          * 图片放大缩小控制函数
//          */
//         bagac.prototype.zoom = function(){
//             var nWid = 0,cnHei = 0,
//                 nLeft = 0, nTop = 0,
//                 nMal = 0, nMat = 0;

//             // 弹窗未打开 或 非img 返回
//             if(!document.getElementById('popupbagac') || !this.nImgWid) return;

//             this.nWinWid = this.$win.width();
//             this.nWinHei = this.$win.height();
//             this.bMoveX = true;
//             this.bMoveY = true;

//             // 显示隐藏放大缩小按钮
//             if(this.nImgWid > this.nWinWid || this.nImgHei > this.nWinHei){
//                 $('#changebagac')[0].style.display = 'inline-block';
//             }else{
//                 $('#changebagac')[0].style.display = 'none';
//             }

//             if(this.sImgStatus == 'min'){
//                 nWid = this.nImgWid > this.nWinWid ? this.nWinWid : this.nImgWid;
//                 nHei = nWid / this.nImgRate;

//                 if(nHei > this.nWinHei) nHei = this.nWinHei;
//                 nWid = nHei*this.nImgRate;

//                 this.$img.css({'width': nWid +'px', 'height': nHei +'px', 'left': '50%', 'top': '50%', 'margin-top': -nHei/2+'px', 'margin-left': -nWid/2+'px'});
//                 this.$popup.css({'width': this.nWinWid +'px', 'height': this.nWinHei+'px'});
//                 this.move(false);
//             }else{
//                 if(this.nImgWid < this.nWinWid){
//                     nLeft = '50%'
//                     nMal = this.nImgWid / 2;
//                     this.bMoveX = false;
//                 }
//                 if(this.nImgHei < this.nWinHei){
//                     nTop = '50%'
//                     nMat = this.nImgHei / 2;
//                     this.bMoveY = false;
//                 }
//                 this.$img.css({'width': this.nImgWid +'px', 'height': this.nImgHei+'px', 'left': nLeft, 'top': nTop, 'margin-top': -nMat +'px', 'margin-left': -nMal +'px'});
//                 this.$popup.css({'width': this.nWinWid +'px', 'height': this.nWinHei+'px'});
//                 this.move(true);
//             }
//         }

//         /*
//          * 图片移动事件
//          */
//         bagac.prototype.move = function(bln){
//             var _x, _y, _winW, _winH,
//                 _move = false,
//                 _boxW = this.nImgWid,
//                 _boxH = this.nImgHei,
//                 oThis = this;

//                 if(!oThis.$img) return;
//                 // 解除绑定
//                 if(!bln){
//                     oThis.$img.off('.bagac');
//                     $(document).off('.bagac');
//                     return;
//                 }

//                 // 弹窗移动
//                 oThis.$img.off('.bagac').on({
//                     'click.bagac': function(e){
//                             e.preventDefault();
//                         },
//                     'mousedown.bagac': function(e){
//                             e.preventDefault();
//                             _move=true;
//                             _x=e.pageX-parseInt(oThis.$img.css("left"));
//                             _y=e.pageY-parseInt(oThis.$img.css("top"));
//                             _winW = oThis.nWinWid;
//                             _winH = oThis.nWinHei;
//                             oThis.$img.css('cursor','move');
//                         }
//                 });
//                 $(document).off('.bagac').on({
//                     'mousemove.bagac': function(e){
//                             e.preventDefault();
//                             if(_move){
//                                 var x=e.pageX-_x;
//                                 var y=e.pageY-_y;
//                                 if(x > 0) x = 0;
//                                 if(y > 0) y = 0;
//                                 if(_winW && x < _winW-_boxW) x = _winW - _boxW;
//                                 if(_winH && y < _winH-_boxH) y = _winH - _boxH;
//                                 if(oThis.bMoveX) oThis.$img[0].style.left = x +'px';
//                                 if(oThis.bMoveY) oThis.$img[0].style.top = y +'px';
//                             }
//                         },
//                     'mouseup.bagac': function(){
//                             _move=false;
//                             oThis.$img.css('cursor','default');
//                         }
//                 });
//         }
        
//         /*
//          * 实例化
//          */
//         new bagac($(this));
//     };
// })(jQuery);