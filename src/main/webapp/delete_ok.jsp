<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2024-11-09
  Time: 오후 4:50
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="header.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Delete User</title>
</head>
<body>
<%
    // URL에서 "id" 파라미터 값을 가져옴
    String id = request.getParameter("id");

    // "id"가 null이 아니거나 비어있지 않은 경우 해당 ID를 출력
    if (id != null && !id.isEmpty()) {
%>
<h2>삭제할 ID는 <%= id %> 입니다.</h2>
<%
} else {
%>
<h2>ID 값이 제공되지 않았습니다.</h2>
<%
    }
%>
<a href="list.jsp" class="btn btn-primary">Return to home</a>
</body>
</html>

<%@ include file="footer.jsp"%>