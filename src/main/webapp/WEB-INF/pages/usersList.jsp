<%--
  Created by IntelliJ IDEA.
  User: Alexa
  Date: 25.02.2020
  Time: 23:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>usersList</title>
</head>
<body>
    <h2>Список пользователей:</h2>
    <c:url value="/addUser" var="addUser"/>
    <a href="${addUser}">Add new User</a>
    <table>
        <tr>
            <th>id</th>
            <th>login</th>
            <th>firstname</th>
            <th>lastname</th>
            <th>active</th>
        </tr>
        <c:forEach var="user" items="${usersList}">
            <tr>
                <td>${user.idUser}</td>
                <td>${user.login}</td>
                <td>${user.firstname}</td>
                <td>${user.lastname}</td>
                <td>${user.active}</td>
                <td>
                    <a href="/editUser/${user.idUser}">editUser</a>
                    <a href="/deleteUser/${user.idUser}">deleteUser</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
