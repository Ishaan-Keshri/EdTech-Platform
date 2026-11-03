<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="ManageCourses.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Course - Admin</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<style>
    body {
        background: linear-gradient(135deg, #74ebd5 0%, #9face6 100%);
        min-height: 100vh;
        margin: 0;
        padding: 0;
    }
    .card-custom {
        border-radius: 20px;
        box-shadow: 0 8px 25px rgba(0,0,0,0.25);
        background: #fff;
    }
    .form-control {
        margin-bottom: 15px;
        border-radius: 10px;
    }
    .btn-custom {
        border-radius: 10px;
        font-weight: bold;
    }
</style>
</head>
<body>
    <div class="container my-5 d-flex justify-content-center">
    <div class="card card-custom p-4" style="max-width: 400px; width: 100%;">
        <h2 class="text-center text-danger mb-4">Delete Course</h2>
        <form action="CourseDelServe" method="post">
            <!-- Course ID -->
            <input type="text" class="form-control" name="cid" placeholder="Enter Course ID" required>
            
            <button type="submit" class="btn btn-danger btn-custom mt-3 w-100">Delete Course</button>
        </form>
    </div>
</div>
</body>
</html>
