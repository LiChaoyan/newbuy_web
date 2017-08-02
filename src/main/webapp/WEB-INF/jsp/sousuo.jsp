<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="utf-8" />
<title>搜索首页</title>
<meta name="keywords" content="小桥双线购项目购物商城" />
<meta name="description" content="线上线下商家加盟的商城" />
<style type="text/css">
html {overflow: hidden;}
  .soubg{
  width:100%; min-width:1200px; height:35px; background-color:#fff; font-family:"宋体";font-size: 13px;margin-top: 10px;margin-right: -50px;overflow: hidden;
}
.sou{
  width:1200px; height:35px; line-height:35px;
}
.fl{
  float:left;
}
.fr{
  float:right;
}
body{
  margin:0; padding:0; font-size:12px; font-family:"Microsoft YaHei"; line-height:25px; color:#555555;
}
div,table{
  margin:0 auto;
}


a{
  color:#555555; text-decoration:none; cursor:pointer;
}
a:hover{
  color:#ff4e00; text-decoration:none; cursor:pointer;
}

.aaa input:hover {
  cursor: pointer;
  outline-color: #ff360c;

}
.aaa input:focus {
  outline-color: #ff360c;
}
.bbb input {
  /*border:5px solid red;*/
  width: 600px;
  height: 38px;
  margin-left:370px;
  border:1px solid #e6e6e6;
  box-shadow: 0 2px 2px 0 rgba(0,0,0,0.16), 0 0 0 1px rgba(0,0,0,0.08);
  border-radius: 2px;
  color:gray;
  padding-left: 20px; /*定位输入框里面文字的位置，不能用margin*/
}
.bbb input:focus {
  border-color: #ff360c;
  outline-color: #ff360c;
}
.bbb img {
  margin-left: 560px;margin-top: 150px;margin-bottom: 30px; 
}
.aaa{display: inline-block;margin: 0 auto;}
.aaa input {height: 36px;line-height: 27px;margin-top: 50px;background-color: #f2f2f2; border: 0;color:gray;margin-top: 50px;}
</style>
</head>
<body>  
  <div class="soubg">
      <div class="sou">
          <span class="fr">
              <span class="fl">你好，请<a href="<%= request.getContextPath()%>/Login.html" style="color:#ff4e00;">登录</a>&nbsp; |&nbsp;<a href="Regist.html">免费注册</a>&nbsp;|&nbsp;<a href="Index.html">商城主页</a></span>
          </span>
      </div>
  </div>
  <div style="width: 100%;height: 100%;"  class="bbb">
    <img src="<%= request.getContextPath()%>/Picture/logo.png" alt="双线购LOGO" align="center" >
    <input type="text" name="" placeholder="请输入商品或店铺名称" value="" onfocus="this.placeholder=''" onblur="this.placeholder='请输入商品或店铺名称'"><br>
    <!-- 输入框输入时文字消失，退出后出现 -->
  </div>
  <div class="aaa">
    <input type="button" name="" value="&nbsp;商品搜索&nbsp;" style="margin-right: 20px;margin-left: 585px;">
    <input type="button" name="" value="&nbsp;店铺搜索&nbsp;">
  </div>
</body>
