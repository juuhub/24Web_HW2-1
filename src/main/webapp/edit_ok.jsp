<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2024-11-09
  Time: 오전 12:07
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="header.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Added</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h1>User Edited Successfully!</h1>
    <h2>User Information:</h2>

    <table class="table">
        <thead>
        <tr>
            <th>Name</th>
            <th>Age</th>
            <th>Email</th>
            <th>Phone</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td><%= request.getParameter("name") %></td>
            <td><%= request.getParameter("age") %></td>
            <td><%= request.getParameter("email") %></td>
            <td><%= request.getParameter("phone") %></td>
        </tr>
        </tbody>
    </table>

    <a href="list.jsp" class="btn btn-primary">Return to home</a>
</div>
</body>
</html>

<%@ include file="footer.jsp"%>