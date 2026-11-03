<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<jsp:include page="UserCourses.jsp"></jsp:include>

<%
    // Get username from session
    String username = null;
    if (session != null) {
        username = (String) session.getAttribute("username");
    }
    if(username == null) {
        response.sendRedirect("Login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Course to My Courses</title>
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
    .top-right-btn {
        position: absolute;
        right: 30px;
        top: 20px;
    }
</style>
</head>
<body>

<div class="container position-relative my-5 d-flex justify-content-center">
    <div class="card card-custom p-4" style="max-width: 400px; width: 100%;">
        <h2 class="text-center text-primary mb-4">Add Course to My Courses</h2>

        <form action="UserCourseAddServer" method="post">
            <!-- Course ID input -->
            <input type="text" class="form-control" name="cid" placeholder="Enter Course ID" required>

            <!-- Hidden username field (matches servlet parameter 'uname') -->
            <input type="hidden" name="uname" value="<%= username %>">

            <button type="submit" class="btn btn-primary btn-custom mt-3 w-100">Add Course</button>
        </form>
    </div>
</div>

</body>
</html>
