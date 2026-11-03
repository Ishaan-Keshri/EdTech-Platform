<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>REGISTRATION INFO</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<style>
    body {
        background: linear-gradient(135deg, #74ebd5 0%, #9face6 100%);
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    .info-card {
        border-radius: 15px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.2);
        padding: 30px;
        text-align: center;
        background: #fff;
        width: 400px;
    }
    .btn-custom {
        border-radius: 10px;
        font-weight: bold;
        margin-top: 15px;
    }
</style>
</head>
<body>
    <div class="info-card">
        <h2 class="text-success mb-3">✅ Registration Successful</h2>
        <p class="text-muted">Your account has been created successfully.</p>
        <a href="index.jsp" class="btn btn-primary btn-custom">Go to Home Page</a>
    </div>
</body>
</html>
