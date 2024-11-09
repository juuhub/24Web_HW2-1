<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2024-11-08
  Time: 오후 9:20
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
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <!-- 하드코딩된 사용자 데이터 표시 -->
        <%
            String[][] users = {
                    {"1", "John", "17" , "john@example.com", "(555) 555-1234"},
                    {"2", "Mary", "18" , "mary@example.com", "(555) 555-1234"},
                    {"3", "Dooley", "19", "july@example.com", "(555) 555-8521"},
                    {"4", "Moe", "20", "Moe@example.com", "(555) 555-7410"},
                    {"5", "Doe", "21", "Doe@example.com", "(555) 555-7896"}
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
            <td>
                <!-- 편집, 보기, 삭제 버튼 -->
                <a href="edit.jsp" class="btn btn-primary btn-sm">
                    <i class="fa fa-pencil-alt"></i> Edit
                </a>
                <a href="./view.jsp" class="btn btn-info btn-sm">
                    <i class="fa fa-eye"></i> View
                </a>
                <a href="javascript:void(0);" onclick="handleDelete('<%= id %>')" class="btn btn-danger btn-sm">
                    <i class="fa fa-trash-alt"></i> Delete
                </a>
            </td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>
</div>

<!-- Bootstrap JavaScript 및 jQuery -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js"></script>

<script>
    function handleDelete(id) {
        if (confirm('Are you sure you want to delete this user?')) {
            // delete_ok.jsp로 이동하며, id를 URL 파라미터로 전달
            window.location.href = 'delete_ok.jsp?id=' + id;
        }
    }
</script>

</body>
</html>

<%@ include file="footer.jsp"%>