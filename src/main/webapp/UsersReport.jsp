<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="master.dao.RegisterDao"%>
<%@ page import="java.sql.ResultSet"%>
<jsp:include page="ManageUsers.jsp"></jsp:include>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Users Report - Admin</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
</head>
<body>
<div class="container my-5" style="max-width:700px;">
    <h2 class="text-center text-dark mb-4">Registered Users</h2>
    <div class="table-responsive">
        <table class="table table-striped table-bordered">
            <thead class="table-dark">
                <tr>
                    <th>Username</th>
                    <th>Name</th>
                </tr>
            </thead>
            <tbody>
            <%
                RegisterDao rdao = new RegisterDao();
                ResultSet rs = rdao.getData();
                boolean hasUsers = false;
                while (rs.next()) {
                    hasUsers = true;
                    String uname = rs.getString("uname");
                    String nm = rs.getString("nm");
            %>
                <tr>
                    <td><%= uname %></td>
                    <td><%= nm %></td>
                </tr>
            <%
                }
                if (!hasUsers) {
            %>
                <tr>
                    <td colspan="2" class="text-center text-danger">No registered users found.</td>
                </tr>
            <%
                }
            %>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
