<%--<%@ page import="java.util.Set" %>--%>
<%--<%@ page import="com.example.User" %>--%>
<%--<%@ page contentType="text/html;charset=UTF-8" %>--%>
<%--<html>--%>
<%--<body>--%>
<%--<head>--%>
<%--    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">--%>
<%--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">--%>
<%--</head>--%>
<%--<div style="margin-left:10px; margin-top:5px;">--%>
<%--    <div class="w3-container ">--%>
<%--        <h2 class="title w3-text-black">Users</h2>--%>
<%--        <%--%>
<%--            Set<User> users = (Set<User>) request.getAttribute("users");--%>
<%--            if (users != null && !users.isEmpty()) {--%>
<%--                out.println("<ol>");--%>
<%--                for (User user : users) {--%>
<%--                    out.println("<li>" + user.getFirstName() + " " + user.getLastName() + "</li>");--%>
<%--                }--%>
<%--                out.println("</ol>");--%>
<%--            } else out.println("<p>There are no users yet!</p>");--%>
<%--        %>--%>
<%--        <br>--%>
<%--        <div>--%>
<%--            <button class="w3-btn w3-green w3-round-large" onclick="location.href='/add'">Add User</button>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Users List</title>
</head>
<body>
<h1>Users List</h1>
<c:if test="${empty users}">
    <p>No users available.</p>
</c:if>
<c:if test="${not empty users}">
    <ul>
            <%-- Display list of users if available --%>
        <c:forEach items="${users}" var="user">
            <li>${user.firstName} ${user.lastName}</li>
        </c:forEach>
    </ul>
</c:if>
</body>
</html>

