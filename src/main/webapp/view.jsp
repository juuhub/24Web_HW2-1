<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2024-11-08
  Time: 오후 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="header.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Show User</title>
    <!-- Bootstrap CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- FontAwesome for icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h1 class="mb-4">User List</h1>

    <!-- Display error message if any -->
    <div id="errorMessage" style="color: red;"></div>

    <table class="table table-striped">
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Age</th>
            <th>Email</th>
            <th>Phone</th>
        </tr>
        </thead>
        <tbody>
        <!-- 하드코딩된 사용자 데이터 표시 -->
        <%
            String[][] users = {
                    {"1", "John", "17" , "john@example.com", "(555) 555-1234"}
            };

            // 배열을 반복하여 테이블에 사용자 데이터 표시
            for (int i = 0; i < users.length; i++) {
                String id = users[i][0];
                String name = users[i][1];
                String age = users[i][2];
                String email = users[i][3];
                String phone = users[i][4];
        %>
        <tr>
            <td><%= id %></td>
            <td><%= name %></td>
            <td><%= age %></td>
            <td><%= email %></td>
            <td><%= phone %></td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>

    <!-- 버튼을 테이블 아래에 배치 -->
    <div class="text-end">
        <a href="list.jsp" class="btn btn-primary">Return to home</a>
    </div>
</div>

</body>
<%@ include file="footer.jsp"%>
</html>