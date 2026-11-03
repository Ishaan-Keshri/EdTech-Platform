<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manage Users - Admin</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<style>
    body {
        background: linear-gradient(135deg, #74ebd5 0%, #9face6 100%);
        min-height: 100vh;
    }
    .container {
        padding-top: 40px;
        padding-bottom: 40px;
    }
    .card-custom {
        border-radius: 15px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.2);
        background: #fff;
    }
    .form-control, .form-select {
        margin-bottom: 15px;
        border-radius: 10px;
    }
    .btn-custom {
        border-radius: 10px;
        font-weight: bold;
    }
    .nav-custom .nav-link {
        font-weight: bold;
        color: #007bff;
    }
    .nav-custom .nav-link:hover {
        color: #0056b3;
    }
    /* Center the nav items */
    .nav-center {
        justify-content: center;
    }
    /* Back button to top-left */
    .top-left-btn {
        position: absolute;
        top: 20px;
        left: 20px;
    }
</style>
</head>
<body>

<!-- Back Button at Top-Left -->
<a href="AdminDashboard.jsp" class="btn btn-secondary btn-custom top-left-btn">Back to Admin Dashboard</a>

<div class="container">
    <h2 class="text-center text-white mb-4">Manage Users</h2>

    <!-- Navbar for User Actions -->
    <ul class="nav nav-tabs nav-custom nav-center mb-4">
        <li class="nav-item"><a class="nav-link" href="UsersReport.jsp">Users Report</a></li>
        <li class="nav-item"><a class="nav-link" href="RemoveUser.jsp">Remove User</a></li>
        <li class="nav-item"><a class="nav-link" href="SearchUser.jsp">Search User</a></li>
    </ul>
</div>

</body>
</html>
