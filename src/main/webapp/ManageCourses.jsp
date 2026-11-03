<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manage Courses - Admin</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<style>
    body {
        background: linear-gradient(135deg, #74ebd5 0%, #9face6 100%);
        min-height: 100vh;
    }
    .container {
        padding-top: 40px;
        padding-bottom: 40px;
        position: relative; /* Needed for absolute positioning of button */
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
    .nav-center {
        justify-content: center;
    }
    /* Back button styling */
    .top-right-btn {
        position: absolute;
        top: 20px;
        right: 30px;
    }
</style>
</head>
<body>

<div class="container">
    <!-- Back to Dashboard Button -->
    <a href="AdminDashboard.jsp" class="btn btn-secondary btn-custom top-right-btn">Back to Admin Dashboard</a>

    <h2 class="text-center text-white mb-4">Manage Courses</h2>

    <!-- Navbar for Course Actions -->
    <ul class="nav nav-tabs nav-custom nav-center mb-4">
        <li class="nav-item"><a class="nav-link" href="AddNewCourse.jsp">Add New Course</a></li>
        <li class="nav-item"><a class="nav-link" href="DeleteCourse.jsp">Delete Course</a></li>
        <li class="nav-item"><a class="nav-link" href="UpdateCourse.jsp">Update Course</a></li>
        <li class="nav-item"><a class="nav-link" href="SearchCourse.jsp">Search Course</a></li>
        <li class="nav-item"><a class="nav-link" href="CourseDetails.jsp">Course Detail</a></li>
    </ul>
</div>

</body>
</html>
