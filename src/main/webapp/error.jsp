<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ERROR PAGE</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<style>
    body {
        background: linear-gradient(135deg, #74ebd5 0%, #9face6 100%);
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    .error-card {
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
    <div class="error-card">
        <h2 class="text-danger mb-3">❌ Login Failed</h2>
        <p class="text-muted">Either the username or password is incorrect. Please try again.</p>
        <a href="Login.jsp" class="btn btn-outline-danger btn-custom">Try Again</a>
        <br/>
        <a href="index.jsp" class="btn btn-primary btn-custom mt-2">Go to Home Page</a>
    </div>
</body>
</html>
