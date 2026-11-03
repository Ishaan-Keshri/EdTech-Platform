<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME PAGE</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<style>
    body {
        background: linear-gradient(135deg, #74ebd5 0%, #9face6 100%);
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    .home-card {
        border-radius: 20px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.25);
        padding: 40px;
        background: #fff;
        width: 90%;
        max-width: 400px;
        text-align: center;
    }
    .home-card img {
        width: 180px;
        height: 180px;
        object-fit: cover;
        border-radius: 50%;
        margin-bottom: 20px;
    }
    .btn-custom {
        border-radius: 12px;
        font-weight: bold;
        padding: 12px;
        transition: 0.2s;
    }
    .btn-custom:hover {
        transform: scale(1.03);
    }
</style>
</head>
<body>
    <div class="home-card">
        <img src="https://img.freepik.com/premium-vector/education-technology-logo-template_1061-28.jpg" alt="Logo">
        <h3 class="mb-2 text-primary">Welcome</h3>
        <p class="text-muted mb-4">Your gateway to success</p>
        <div class="d-grid gap-3">
            <a href="Registration.jsp" class="btn btn-primary btn-lg btn-custom">Sign Up</a>
            <a href="Login.jsp" class="btn btn-outline-primary btn-lg btn-custom">Sign In</a>
            <a href="Login.jsp" class="btn btn-danger btn-lg btn-custom">Admin Login</a>
        </div>
    </div>
</body>
</html>
