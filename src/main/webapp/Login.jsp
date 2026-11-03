<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN PAGE</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<style>
    body {
        background: linear-gradient(135deg, #74ebd5 0%, #9face6 100%);
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    .login-card {
        border-radius: 15px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.2);
    }
    .form-control {
        margin-bottom: 15px;
        border-radius: 10px;
    }
    .btn-custom {
        border-radius: 10px;
        width: 100%;
        font-weight: bold;
    }
</style>
</head>
<body>
    <div class="card login-card p-4" style="width: 350px;">
        <h3 class="text-center text-primary mb-4">Login</h3>
        <form action="LoginServe" method="post">
            <input type="text" class="form-control" name="uname" placeholder="Enter Username" required/>
            <input type="password" class="form-control" name="pass" placeholder="Enter Password" required/>
            <input type="submit" class="btn btn-primary btn-custom mt-2" value="Login"/>
        </form>
        <p class="text-center text-muted mt-3">
            Don’t have an account? <a href="Registration.jsp" class="text-decoration-none">Register</a>
        </p>
    </div>
</body>
</html>
