<%@page import="java.sql.ResultSet"%>
<%@page import="master.dao.UserCourseDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="UserCourses.jsp"></jsp:include>
<%
    // Retrieve username from session
    String uname = (String) session.getAttribute("username");
    if (uname == null) {
        response.sendRedirect("Login.jsp"); // Redirect if not logged in
        return;
    }

    UserCourseDao ucdao = new UserCourseDao();
    ResultSet rs = ucdao.getdata(uname);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Courses - <%= uname %></title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">
</head>
<body>
<div class="container my-5">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h2 class="text-dark">My Courses</h2>
    </div>
    <table class="table table-striped table-bordered">
        <thead class="table-dark">
            <tr>
                <th>Course ID</th>
                <th>Course Name</th>
                <th>Instructor</th>
                <th>Category</th>
                <th>Duration (hours)</th>
                <th>Description</th>
                <th>PDF</th>
                <th>Video</th>
            </tr>
        </thead>
        <tbody>
        <%
            boolean hasCourses = false;
            while(rs != null && rs.next()) {
                hasCourses = true;
        %>
            <tr>
                <td><%= rs.getString("cid") %></td>
                <td><%= rs.getString("cname") %></td>
                <td><%= rs.getString("iname") %></td>
                <td><%= rs.getString("sname") %></td>
                <td><%= rs.getString("cdue") %></td>
                <td><%= rs.getString("cdis") %></td>
                <td class="text-center">
                    <% String cmat = rs.getString("cmat");
                       if (cmat != null && !cmat.isEmpty()) { %>
                        <a href="<%= cmat %>" target="_blank">
                            <i class="bi bi-file-earmark-pdf-fill text-danger fs-4"></i>
                        </a>
                    <% } else { %> N/A <% } %>
                </td>
                <td class="text-center">
                    <% String cvideo = rs.getString("cvideo");
                       if (cvideo != null && !cvideo.isEmpty()) { %>
                        <a href="<%= cvideo %>" target="_blank">
                            <i class="bi bi-camera-video-fill text-primary fs-4"></i>
                        </a>
                    <% } else { %> N/A <% } %>
                </td>
            </tr>
        <%
            }
            if (!hasCourses) {
        %>
            <tr>
                <td colspan="8" class="text-center text-muted">No courses added yet.</td>
            </tr>
        <%
            }
        %>
        </tbody>
    </table>
</div>
</body>
</html>
