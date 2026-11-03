<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="master.dao.CourseDao"%>
<%@ page import="java.sql.ResultSet"%>
<jsp:include page="ManageCourses.jsp"></jsp:include>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Course - Admin</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css"/>
<style>
    body {
        background: linear-gradient(135deg, #74ebd5 0%, #9face6 100%);
        min-height: 100vh;
        margin: 0;
        padding: 0;
    }
    .table-custom {
        background: #fff;
        border-radius: 15px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.2);
        overflow: hidden;
    }
</style>
</head>
<body>
<div class="container my-5">
    <h2 class="text-center text-dark mb-4">Search Course</h2>

    <!-- Search Form -->
    <form method="post" class="d-flex justify-content-center mb-4">
        <input type="text" name="cid" class="form-control w-25 me-2" placeholder="Enter Course ID" required>
        <button type="submit" class="btn btn-dark">Search</button>
    </form>

    <%
        String cid = request.getParameter("cid");
        if (cid != null && !cid.trim().isEmpty()) {
            CourseDao cdao = new CourseDao();
            ResultSet rs = cdao.searchData(cid);
    %>

    <div class="table-responsive table-custom p-3">
        <table class="table table-striped table-bordered">
            <thead class="table-dark">
                <tr>
                    <th>Course ID</th>
                    <th>Course Name</th>
                    <th>Instructor Name</th>
                    <th>Category/Subject</th>
                    <th>Duration (hrs)</th>
                    <th>Course Description</th>
                    <th>Course Material (PDF)</th>
                    <th>Course Video</th>
                </tr>
            </thead>
            <tbody>
            <%
                if (rs.next()) {
                    String cId = rs.getString("CID");
                    String cName = rs.getString("CNAME");
                    String iName = rs.getString("INAME");
                    String sName = rs.getString("SNAME");
                    int cDue = rs.getInt("CDUE");
                    String cDis = rs.getString("CDIS");
                    String cMat = rs.getString("CMAT");
                    String cVideo = rs.getString("CVIDEO");
            %>
                <tr>
                    <td><%= cId %></td>
                    <td><%= cName %></td>
                    <td><%= iName %></td>
                    <td><%= sName %></td>
                    <td><%= cDue %></td>
                    <td><%= cDis %></td>
                    <td class="text-center">
                        <% if (cMat != null && !cMat.isEmpty()) { %>
                            <a href="<%= cMat %>" target="_blank" rel="noopener noreferrer">
                                <i class="bi bi-file-earmark-pdf-fill text-danger fs-4"></i>
                            </a>
                        <% } else { %>
                            N/A
                        <% } %>
                    </td>
                    <td class="text-center">
                        <% if (cVideo != null && !cVideo.isEmpty()) { %>
                            <a href="<%= cVideo %>" target="_blank" rel="noopener noreferrer">
                                <i class="bi bi-camera-video-fill text-primary fs-4"></i>
                            </a>
                        <% } else { %>
                            N/A
                        <% } %>
                    </td>
                </tr>
            <%
                } else {
            %>
                <tr>
                    <td colspan="8" class="text-center text-danger">No course found for ID: <%= cid %></td>
                </tr>
            <%
                }
            %>
            </tbody>
        </table>
    </div>
    <%
        } // End of if cid != null
    %>
</div>
</body>
</html>
