<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>REGISTRATION PAGE</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<style>
    body {
        background: linear-gradient(135deg, #74ebd5 0%, #9face6 100%);
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    .register-card {
        border-radius: 15px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.2);
        padding: 30px;
        width: 380px;
        background: #fff;
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
    <div class="register-card">
        <h3 class="text-center text-primary mb-4">Register</h3>
        <form action="RegisterAddServe" method="post">
            <input type="text" class="form-control" name="uname" placeholder="Enter Username" required/>
            <input type="password" class="form-control" name="pass" placeholder="Enter Password" required/>
            <input type="text" class="form-control" name="nm" placeholder="Enter Full Name" required/>
            <input type="submit" class="btn btn-primary btn-custom mt-2" value="Register"/>
        </form>
        <p class="text-center text-muted mt-3">
            Already have an account? <a href="Login.jsp" class="text-decoration-none">Login</a>
        </p>
    </div>
</body>
</html>
