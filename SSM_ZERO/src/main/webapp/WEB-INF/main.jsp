<%--
  Created by IntelliJ IDEA.
  User: 20222
  Date: 2019/11/20
  Time: 20:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/test.do" method="post">
    ${error}
    用户名:<input type="text" name="name" placeholder="请输入用户名~">
    密码:<input type="password" name="pwd" placeholder="请输入密码~">
    <input type="submit" value="登录">

</form>
</body>
</html>
