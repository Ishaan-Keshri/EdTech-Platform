<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="master.dao.RegisterDao"%>

<%
    // Get username from session
    String uname = (String) session.getAttribute("username");
    if (uname == null) {
        response.sendRedirect("Login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Profile - EdTech</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<style>
    body {
        background: linear-gradient(135deg, #74ebd5 0%, #9face6 100%);
        min-height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .profile-card {
        border-radius: 20px;
        box-shadow: 0 8px 25px rgba(0,0,0,0.25);
        background: #fff;
        padding: 30px;
        width: 400px;
        text-align: center;
    }
    .profile-card h2 {
        color: #007bff;
        margin-bottom: 20px;
    }
    .profile-card table {
        width: 100%;
    }
    .profile-card .btn {
        border-radius: 10px;
        margin-top: 20px;
    }
</style>
</head>
<body>
<div class="profile-card">
    <h2>User Profile</h2>
    <%
        RegisterDao rdao = new RegisterDao();
        ResultSet rs = rdao.searchData(uname);

        if (rs != null && rs.next()) {
    %>
        <table class="table table-bordered">
            <tr>
                <th>Username</th>
                <td><%= rs.getString("uname") %></td>
            </tr>
            <tr>
                <th>Name</th>
                <td><%= rs.getString("nm") %></td>
            </tr>
            <!-- Add more fields if available in DB (email, phone, etc.) -->
        </table>
    <%
        } else {
    %>
        <p class="text-danger">User details not found!</p>
    <%
        }
        try { if (rs != null) rs.close(); } catch(Exception e) {}
    %>
    <a href="UserDashboard.jsp" class="btn btn-primary w-100">Back to Dashboard</a>
</div>
</body>
</html>
