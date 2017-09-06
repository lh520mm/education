<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/7/5
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<script type="text/javascript">
    //页面初始化，显示什么
    $(function () {
        showSchool();
    })
    //页面初始化显示，校训。
    function showSchool() {
        $.ajax({
            type: 'post',
            url: '../firstmaven/test/xiaoxun',
            success: function (data) {


            }

        })


    }

    function login() {
        alert(333);
        var username = document.getElementById("username");
        var password = document.getElementById("password-label");
        $.ajax({
            method: 'post',
            url: '<%=path%>/Student/login.act',
            data: {
                username: username,
                passaword: password
            },
            success: function (data) {
                alert(data);
            }
        })
    }
    function tan() {
        alert(ceshi);


    }
</script>
<body>

<c:forEach items="${list}" var="s">
    <p>${s.id},${s.name},${s.age},${s.sex}</p>
</c:forEach>

登录页面：
<div id="user-name-label">
    <input type="text" id="username" name="username" placeholder="请输入用户名"></br>
    <input type="text" id="password-label" name="password" placeholder="请输入密码">

</div>
<button type="button" id="login" onclick="login();">登录
</button>
<button type="button" id="ceshi" onclick="JavaScript:tan();">测试弹窗</button>
</body>
</html>
