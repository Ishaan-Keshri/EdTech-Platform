<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="ManageCourses.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Course - Admin</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<style>
    body {
        background: linear-gradient(135deg, #74ebd5 0%, #9face6 100%);
        min-height: 100vh;
        margin: 0;
        padding: 0;
    }
    .btn-custom {
        border-radius: 10px;
        font-weight: bold;
    }
</style>
</head>
<body>
<div class="container my-5" style="max-width:600px;">
    <h2 class="text-center text-primary mb-4">Update Course by Course ID</h2>
    
    <!-- Search Course Form -->
    <form action="CourseUpdateServe" method="post" class="mb-4">
        <input type="text" class="form-control mb-2" name="cid" placeholder="Enter Course ID" required/>
        <input type="text" class="form-control" name="cname" placeholder="Course Name" required>
            <input type="text" class="form-control" name="iname" placeholder="Instructor Name" required>
            <input type="text" class="form-control" name="sname" placeholder="Category/Subject" required>
            <input type="text" class="form-control" name="cdue" placeholder="Duration (in hours)" required>
            <textarea class="form-control" name="cdis" rows="3" placeholder="Course Description"></textarea>

            <label class="form-label mt-2">Upload Course Material (PDF) Link</label>
            <input type="text" class="form-control" name="cmat" required>

            <label class="form-label mt-2">Upload Course Video Link</label>
            <input type="text" class="form-control" name="cvideo" required>
        <input type="submit" class="btn btn-primary btn-custom mt-3 w-100" value="Update Course"/>
    </form>
 </div>
</body>
</html>