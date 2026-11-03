<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard - EdTech</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<style>
    body {
        background: linear-gradient(135deg, #74ebd5 0%, #9face6 100%);
        min-height: 100vh;
    }
    .navbar {
        background: rgba(255, 255, 255, 0.9);
        box-shadow: 0 4px 10px rgba(0,0,0,0.1);
    }
    .dashboard-card {
        border-radius: 15px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.2);
        padding: 30px;
        background: #fff;
        transition: 0.2s;
        text-align: center;
    }
    .dashboard-card:hover {
        transform: scale(1.03);
    }
    .dashboard-icon {
        font-size: 50px;
        color: #007bff;
        margin-bottom: 15px;
    }
</style>
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-light">
      <div class="container-fluid">
        <a class="navbar-brand fw-bold text-primary" href="#">EdTech Admin</a>
        <div class="collapse navbar-collapse justify-content-end">
          <ul class="navbar-nav">
            <li class="nav-item"><a class="nav-link" href="ManageCourses.jsp">Manage Courses</a></li>
            <li class="nav-item"><a class="nav-link" href="ManageUsers.jsp">Manage Users</a></li>
            <li class="nav-item"><a class="nav-link text-danger" href="index.jsp">Logout</a></li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Dashboard Content -->
    <div class="container my-5">
        <h2 class="text-center text-white mb-4">Welcome, Admin</h2>
        <div class="row g-4 justify-content-center">
            <!-- Manage Courses -->
            <div class="col-md-4">
                <div class="dashboard-card">
                    <div class="dashboard-icon">📚</div>
                    <h5>Manage Courses</h5>
                    <a href="ManageCourses.jsp" class="btn btn-primary mt-2">Go</a>
                </div>
            </div>
            <!-- Manage Users -->
            <div class="col-md-4">
                <div class="dashboard-card">
                    <div class="dashboard-icon">👥</div>
                    <h5>Manage Users</h5>
                    <a href="ManageUsers.jsp" class="btn btn-primary mt-2">Go</a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
