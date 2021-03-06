<%--
  Created by IntelliJ IDEA.
  User: Alexa
  Date: 25.02.2020
  Time: 23:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <c:if test="${empty user.login}">
        <title>AddUser</title>
    </c:if>
    <c:if test="${!empty user.login}">
        <title>EditUser</title>
    </c:if>
</head>
<body>
    <c:url value="/usersList" var="userList"/>
    <a href="${userList}">Назад</a>
    <c:if test="${empty user.login}">
        <h2>Добавление нового пользователя</h2>
        <c:url value="/addUser" var="myurl"/>
    </c:if>
    <c:if test="${!empty user.login}">
        <h2>Изменение данных пользователя</h2>
        <c:url value="/editUser" var="myurl"/>
    </c:if>

    <form action="${myurl}" method="POST">
        <c:if test="${!empty user.login}">
            <input type="hidden" name="idUser" value="${user.idUser}">
        </c:if>

        <label for="login">Login</label>
        <input type="text" name="login" id="login" value="${user.login}" style="margin-left: 50px;margin-bottom: 10px;"><br>
        <label  for="firstname">Firstname</label>
        <input type="text" name="firstname" id="firstname" value="${user.firstname}" style="margin-left: 30px;margin-bottom: 10px;"><br>
        <label for="lastname">Lastname</label>
        <input type="text" name="lastname" id="lastname" value="${user.lastname}" style="margin-left: 30px;margin-bottom: 10px;"><br>
        <label for="active">Active</label>
        <input type="text" name="active" id="active" value="${user.active}" style="margin-left: 50px;margin-bottom: 10px;"><br>
        <c:if test="${empty user.login}">
            <input type="submit" value="Add new user">
        </c:if>
        <c:if test="${!empty user.login}">
            <input type="submit" value="Edit user">
        </c:if>
    </form>
</body>
</html>
