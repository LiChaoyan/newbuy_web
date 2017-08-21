<%--
  Created by IntelliJ IDEA.
  User: win8.1
  Date: 2017/7/18
  Time: 9:07
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<head>
    <title>bossphone</title>
    <script type="text/javascript">
        function checkphone(){
          var phone=document.getElementById("phone").value;
            if(phone==${yphone}){
                alert("不能修改为原手机号");
            }
        }
    </script>
</head>
<body>
<form action ="<%=request.getContextPath()%>/bossphoneUp" method =post>
    现手机号：<input type="text" name="phone" id="phone" value="" onblur="checkphone()">
    <input type="submit" value="修改"><input type="reset" value="取消">
</form>
<p>${message}</p>
</body>
</html>
