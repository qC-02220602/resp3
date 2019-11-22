<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%--
  Created by IntelliJ IDEA.
  User: 20222
  Date: 2019/11/18
  Time: 18:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="${pageContext.request.contextPath}/query.do" method="get">
        <table align="center" border=1>
            <tr>
                <td>
                    <input type="submit" value="查询"/>
                </td>
            </tr>
        </table>
    <table align="center"  border="1">
        <tr>
            <th>编号</th>
            <th>名称</th>
            <th>年龄</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${cade}" var="c">
            <tr>
                <td>${c.id}</td>
                <td>${c.name}</td>
                <td>${c.age}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/cade.do">修改</a>
                    <a href="${pageContext.request.contextPath}/cade.do">删除</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    </form>
</body>
</html>
