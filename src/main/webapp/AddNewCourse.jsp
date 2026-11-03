<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="ManageCourses.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add New Course - Admin</title>
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
    <div class="card card-custom p-4" style="max-width: 500px; width: 100%;">
        <h2 class="text-center text-primary mb-4">Add New Course</h2>
        <form action="CourseAddServe" method="post">
            <!-- Course ID -->
            <input type="text" class="form-control" name="cid" placeholder="Course ID" required>

            <input type="text" class="form-control" name="cname" placeholder="Course Name" required>
            <input type="text" class="form-control" name="iname" placeholder="Instructor Name" required>
            <input type="text" class="form-control" name="sname" placeholder="Category/Subject" required>
            <input type="text" class="form-control" name="cdue" placeholder="Duration (in hours)" required>
            <textarea class="form-control" name="cdis" rows="3" placeholder="Course Description"></textarea>

            <label class="form-label mt-2">Upload Course Material (PDF) Link</label>
            <input type="text" class="form-control" name="cmat" required>

            <label class="form-label mt-2">Upload Course Video Link</label>
            <input type="text" class="form-control" name="cvideo" required>

            <button type="submit" class="btn btn-primary btn-custom mt-3 w-100">Add Course</button>
        </form>
    </div>
</div>
</body>
</html>
