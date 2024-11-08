<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2024-11-08
  Time: 오후 6:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!-- Bootstrap 및 Bootstrap Icons CDN 추가 -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.5.0/font/bootstrap-icons.min.css" rel="stylesheet">
    <style>
        /* 화면 하단 고정 푸터 스타일 */
        footer {
            position: fixed;
            bottom: 0;
            left: 0;
            width: 100%;
            background-color: white;  /* 푸터 배경색 */
            border-top: 1px solid #ddd; /* 상단 테두리 */
            padding: 15px 0;
            z-index: 1000;
        }

        body {
            padding-bottom: 80px;
        }
    </style>
</head>
<body>

<div class="container">
    <footer class="d-flex flex-column flex-md-row flex-wrap justify-content-between align-items-center py-3">
        <p class="col-12 col-md-4 mb-0 text-center text-md-start text-body-secondary">&copy; 2024 Company, Inc</p>

        <a href="/" class="col-12 col-md-4 d-flex align-items-center justify-content-center mb-3 mb-md-0 link-body-emphasis text-decoration-none">
            <i class="bi bi-bootstrap" style="font-size: 2rem;"></i>
        </a>

        <ul class="nav col-12 col-md-4 justify-content-center justify-content-md-end">
            <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">Home</a></li>
            <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">Features</a></li>
            <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">Pricing</a></li>
            <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">FAQs</a></li>
            <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">About</a></li>
        </ul>
    </footer>
</div>

</body>
</html>