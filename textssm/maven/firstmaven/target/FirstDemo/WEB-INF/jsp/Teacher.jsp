<%--
  Created by IntelliJ IDEA.
  User: sunzhaoshui
  Date: 2017/7/6
  Time: 11:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<c:forEach items="${list}" var="s">
    <p>${s.id},${s.name},${s.age},${s.sex}</p>
</c:forEach>

</body>
</html>
