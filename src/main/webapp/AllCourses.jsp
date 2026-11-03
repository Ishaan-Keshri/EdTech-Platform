<%@ page import="java.sql.ResultSet" %>
<%@ page import="master.dao.CourseDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Courses - User</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"/>
<style>
    body {
        background: linear-gradient(135deg, #74ebd5 0%, #9face6 100%);
        min-height: 100vh;
    }
    .container {
        padding-top: 40px;
        padding-bottom: 40px;
    }
    .btn-back {
        margin-bottom: 20px;
        border-radius: 10px;
        font-weight: bold;
    }
    table th, table td {
        vertical-align: middle;
    }
</style>
</head>
<body>

<div class="container">
    <h2 class="text-center text-white mb-4">All Available Courses</h2>

    <!-- Back Button -->
    <div class="text-center mb-3">
        <a href="AvailableCourses.jsp" class="btn btn-primary btn-back w-25">Back to Available Courses</a>
    </div>

    <div class="table-responsive">
        <table class="table table-striped table-bordered bg-white">
            <thead class="table-dark text-center">
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
            <tbody class="text-center">
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
                    String cmat = rs.getString("cmat"); 
                    String cvideo = rs.getString("cvideo");
            %>
                <tr>
                    <td><%= cid %></td>
                    <td><%= cname %></td>
                    <td><%= iname %></td>
                    <td><%= sname %></td>
                    <td><%= cdue %></td>
                    <td><%= cdis %></td>
                    <td>
                        <% if(cmat != null && !cmat.isEmpty()) { %>
                            <a href="<%= cmat %>" target="_blank">
                                <i class="bi bi-file-earmark-pdf-fill text-danger fs-4"></i>
                            </a>
                        <% } else { %> N/A <% } %>
                    </td>
                    <td>
                        <% if(cvideo != null && !cvideo.isEmpty()) { %>
                            <a href="<%= cvideo %>" target="_blank">
                                <i class="bi bi-camera-video-fill text-primary fs-4"></i>
                            </a>
                        <% } else { %> N/A <% } %>
                    </td>
                </tr>
            <%
                }
                try { if(rs != null) rs.close(); } catch(Exception e) {}
            %>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>
