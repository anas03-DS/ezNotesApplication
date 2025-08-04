<%@page import="com.DAO.PostDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.User.Post"%>
<%@page import="com.User.UserDetails"%>

<%
UserDetails user1 = (UserDetails) session.getAttribute("userD");
if (user1 == null) {
    session.setAttribute("login-error", "Please Login First...!!!");
    response.sendRedirect("login.jsp");
    return;
}
%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Show Notes</title>
    <%@ include file="all_components/ALL_CDN.jsp" %>
    <style>
        /* Card Animation */
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .note-card {
            animation: fadeInUp 0.6s ease-in-out;
            border-radius: 15px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }

        .note-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }

        .note-card .card-footer a {
            text-decoration: none;
            font-weight: 500;
            color: #007bff;
            margin: 0 5px;
        }

        .note-card .card-footer a:hover {
            color: #0056b3;
            text-decoration: underline;
        }

        h1 {
            margin-top: 30px;
            font-weight: 600;
            color: #343a40;
        }
    </style>
</head>
<body>
    <%@ include file="all_components/Navbar.jsp" %>

    <div class="container">
        <h1 class="text-center mb-5">📝 Your Notes</h1>

        <%
        PostDAO ob = new PostDAO(DBConnect.getConn());
        List<Post> postList = ob.getData(user1.getId());
        %>

        <div class="row">
            <%
            for (Post po : postList) {
            %>
            <div class="col-md-4 mb-4">
                <div class="card note-card h-100">
                    <div class="card-body">
                        <h5 class="card-title"><strong><%= po.getTitle() %></strong></h5>
                        <p class="card-text"><%= po.getContent() %></p>
                        <hr>
                        <p class="mb-1"><b>Upload By:</b> <%= user1.getName() %></p>
                        <p class="mb-0"><b>Date:</b> <%= po.getPdate() %></p>
                    </div>
                    <div class="card-footer text-center bg-white border-top-0">
                        <a href="edit.jsp?note_id=<%= po.getId() %>">
                            <i class="fas fa-edit"></i> Edit
                        </a>
                        |
                        <a href="DeletePostServlet?note_id=<%= po.getId() %>" onclick="return confirm('Are you sure you want to delete this note?');">
                            <i class="fas fa-trash"></i> Delete
                        </a>
                    </div>
                </div>
            </div>
            <%
            }
            %>
        </div>
    </div>

    <%@ include file="all_components/Footer.jsp" %>
</body>
</html>
