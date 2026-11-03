<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="master.dao.RegisterDao"%>
<jsp:include page="ManageUsers.jsp"></jsp:include> <!-- Include navbar -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search User - Admin</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<style>
    body {
        background: linear-gradient(135deg, #74ebd5 0%, #9face6 100%);
        min-height: 100vh;
    }
    .container {
        padding-top: 40px;
        max-width: 600px;
    }
    .card-custom {
        border-radius: 20px;
        box-shadow: 0 8px 25px rgba(0,0,0,0.25);
        background: #fff;
        padding: 30px;
    }
    .form-control {
        margin-bottom: 15px;
        border-radius: 10px;
    }
    .btn-custom {
        border-radius: 10px;
        font-weight: bold;
    }
    h2 {
        text-align: center;
        margin-bottom: 30px;
        color: #007bff;
    }
</style>
</head>
<body>
<div class="container">
    <div class="card-custom">
        <h2>Search User</h2>
        <!-- Search Form -->
        <form action="SearchUser.jsp" method="post">
            <input type="text" class="form-control" name="uname" placeholder="Enter Username" required>
            <button type="submit" class="btn btn-primary btn-custom w-100 mt-2">Search</button>
        </form>

        <%
            String uname = request.getParameter("uname");
            if(uname != null && !uname.trim().isEmpty()) {
                RegisterDao rdao = new RegisterDao();
                ResultSet rs = rdao.searchData(uname);

                if(rs != null && rs.next()) {
        %>
                    <table class="table table-striped table-bordered mt-4">
                        <thead class="table-dark">
                            <tr>
                                <th>Username</th>
                                <th>Name</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><%= rs.getString("uname") %></td>
                                <td><%= rs.getString("nm") %></td>
                            </tr>
                        </tbody>
                    </table>
        <%
                } else {
        %>
                    <p class="text-danger mt-3 text-center">
                        No user found with username "<%= uname %>"
                    </p>
        <%
                }
                // Close ResultSet safely
                try { if(rs != null) rs.close(); } catch(Exception e) {}
            }
        %>
    </div>
</div>
</body>
</html>
