<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Courses - User</title>
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
    .nav-center {
        justify-content: center;
    }
    .top-right-btn {
        position: absolute;
        right: 30px;
        top: 20px;
    }
</style>
</head>
<body>

<div class="container position-relative">
    <!-- Back to Dashboard button at top-right -->
    <a href="UserDashboard.jsp" class="btn btn-primary btn-custom top-right-btn">Back to Dashboard</a>

    <h2 class="text-center text-white mb-4">My Courses</h2>

    <!-- Navbar for User Course Actions -->
    <ul class="nav nav-tabs nav-custom nav-center mb-4">
        <li class="nav-item"><a class="nav-link" href="AddUserCourses.jsp">Add My Courses</a></li>
        <li class="nav-item"><a class="nav-link" href="DeleteUserCourse.jsp">Delete My Course</a></li>
        <li class="nav-item"><a class="nav-link" href="ShowUserCourse.jsp">Show My Courses</a></li>
    </ul>
</div>

</body>
</html>
