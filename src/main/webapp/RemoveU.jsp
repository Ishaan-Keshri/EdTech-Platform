<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Removed - Admin</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<style>
    body {
        background: linear-gradient(135deg, #74ebd5 0%, #9face6 100%);
        min-height: 100vh;
    }
    .container {
        padding-top: 60px;
        padding-bottom: 40px;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .card-custom {
        border-radius: 15px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.2);
        background: #fff;
        padding: 30px;
        text-align: center;
        max-width: 500px;
    }
    .btn-custom {
        border-radius: 10px;
        font-weight: bold;
    }
    .text-success {
        font-weight: bold;
    }
</style>
</head>
<body>
<div class="container">
    <div class="card-custom">
        <h2 class="text-success mb-4">User Removed Successfully!</h2>
        <a href="ManageUsers.jsp" class="btn btn-primary btn-custom">Back to Manage Users</a>
    </div>
</div>
</body>
</html>
