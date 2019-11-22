<%--
  Created by IntelliJ IDEA.
  User: 20222
  Date: 2019/11/20
  Time: 15:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/cade.do" method="get">
    <table border="1">
        <tr>
            <th>
<%--                名称:<input type="text" name="name" value="${rider.name}">--%>
                名称:<input type="text" name="name" value="${cade.rider.name}">
            </th>
        </tr>
        <tr>
            <th>
                年龄:<input type="text" name="age" value="${cade.rider.age}">
<%--                年龄:<input type="text" name="age" value="${rider.age}">--%>
            </th>
        </tr>
        <tr>
            <th>
                <input type="submit" value="提交">
            </th>
        </tr>
    </table>
</form>
</body>
</html>
