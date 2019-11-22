<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 20222
  Date: 2019/11/19
  Time: 23:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" trimDirectiveWhitespaces="true" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/rider.do" method="get">
    <table align="center" border="1">
        <tr>
            <th>选择</th>
            <%--            <th>编号</th>--%>
            <th>名称</th>
            <th>年龄</th>
            <th>时间</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${rider}" var="rider">
            <tr>
                <td><input type="checkbox" name="cb">
                    <input type="hidden" id="id" name="id" value="${rider.id}"></td>
                <td>${rider.name}</td>
                <td>${rider.age}</td>
                <td>
                    <fmt:formatDate var="time" value="${rider.date}" pattern="yyyy-MM-dd HH:mm:ss"/>
                    <input type="text" id="date" name="date" value="<c:out value="${time}"/>">
                </td>
                <td>
                        <%--                    <a href="${pageContext.request.contextPath}/updateCade.do?id=${rider.id}&name=${rider.name}&age=${rider.age}">修改</a>--%>
                    <a href="${pageContext.request.contextPath}/updateCade.do?rider.id=${rider.id}&rider.name=${rider.name}&rider.age=${rider.age}&rider.date=${time}">修改</a>
                    <a href="${pageContext.request.contextPath}/deleteCade.do?id=${rider.date}">删除</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</form>
</body>
</html>
