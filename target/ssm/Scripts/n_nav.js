// JavaScript Document
// 搜索框选项卡
$(function() {
            $("#ul_menus").children("li").click(function(){ //鼠标悬浮菜单标签
                var index = $(this).index();//获取当前索引，从0开始
                var ord = index+1; //获取当前排序，从1开始
                $("#ul_menus").find("a").removeClass();//去除所有菜单的样式
                $(this).children("a").addClass("style_"+ord);//添加当前菜单样式
                $("#search_area").children("p").hide();//隐藏所有搜索框
                $("#search_area").children("p").eq(index).show();//显示当前菜单对应索引的搜索框
            })
        });


var jq = jQuery.noConflict();

jQuery(document).ready(function(){
	jq(".nav").hover(function(){						   
		jq(this).find(".leftNav").show();
	},function(){
		jq(this).find(".leftNav").hide();
	});
});	


$(function() {
             $(".button_search_1").onclick(function(){
                 var productname=$(".input_1").val();

             })
});

