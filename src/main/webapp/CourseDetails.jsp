<%@page import="java.sql.ResultSet"%>
<%@page import="master.dao.CourseDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="ManageCourses.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Courses - Admin</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">
</head>
<body>
<div class="container my-5">
    <h2 class="text-dark text-center mb-4">Available Courses</h2>
    <table class="table table-striped table-bordered">
        <thead class="table-dark">
            <tr>
                <th>Course ID</th>
                <th>Course Name</th>
                <th>Instructor Name</th>
                <th>Category/Subject</th>
                <th>Duration (in hours)</th>
                <th>Course Description</th>
                <th>Course Material (PDF) Link</th>
                <th>Course Video Link</th>
            </tr>
        </thead>
        <tbody>
        <%
            CourseDao cdao = new CourseDao();
            ResultSet rs = cdao.getData();
            while(rs.next()) {
                String cid = rs.getString("cid");
                String cname = rs.getString("cname");
                String iname = rs.getString("iname");
                String sname = rs.getString("sname");
                String cdue = rs.getString("cdue");
                String cdis = rs.getString("cdis");
                String cmat = rs.getString("cmat"); // PDF filename/path
                String cvideo = rs.getString("cvideo"); // video filename/path
        %>
            <tr>
                <td><%= cid %></td>
                <td><%= cname %></td>
                <td><%= iname %></td>
                <td><%= sname %></td>
                <td><%= cdue %></td>
                <td><%= cdis %></td>
                <td class="text-center">
                    <% if(cmat != null && !cmat.isEmpty()) { %>
                        <a href="<%= cmat %>" target="_blank">
                            <i class="bi bi-file-earmark-pdf-fill text-danger fs-4"></i>
                        </a>
                    <% } else { %>
                        N/A
                    <% } %>
                </td>
                <td class="text-center">
                    <% if(cvideo != null && !cvideo.isEmpty()) { %>
                        <a href="<%= cvideo %>" target="_blank">
                            <i class="bi bi-camera-video-fill text-primary fs-4"></i>
                        </a>
                    <% } else { %>
                        N/A
                    <% } %>
                </td>
            </tr>
        <%
            }
        %>
        </tbody>
    </table>
</div>
</body>
</html>
