<!-- Session Check (Don't Remove) -->
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
    <title>Add Notes</title>
    <%@ include file="all_components/ALL_CDN.jsp" %>
    <style>
        body {
            background-color: #f0f4f8;
        }

        h1 {
            text-align: center;
            margin-top: 30px;
            font-weight: 600;
            color: #343a40;
        }

        .note-form {
            background: #ffffff;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            padding: 30px;
            animation: fadeIn 0.8s ease-in-out;
            transition: all 0.3s ease;
        }

        .note-form:hover {
            transform: scale(1.01);
            box-shadow: 0 12px 35px rgba(0, 0, 0, 0.15);
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .btn-primary {
            width: 100%;
            font-weight: 500;
        }

        textarea {
            resize: none;
        }
    </style>
</head>
<body>
    <%@ include file="all_components/Navbar.jsp" %>

    <div class="container mt-4 mb-5">
        <h1>📝 Add Your Note</h1>
        <div class="row justify-content-center">
            <div class="col-md-8">
                <form action="AddNotes" method="post" class="note-form">

                    <%
                        UserDetails us = (UserDetails) session.getAttribute("userD");
                        if (us != null) {
                    %>
                        <input type="hidden" name="uid" value="<%= us.getId() %>">
                    <% } %>

                    <div class="form-group mb-3">
                        <label for="title">Title</label>
                        <input type="text" name="title" class="form-control" placeholder="Enter Title" required>
                    </div>

                    <div class="form-group mb-4">
                        <label for="content">Content</label>
                        <textarea name="content" rows="8" class="form-control" placeholder="Write your notes here..." required></textarea>
                    </div>

                    <button type="submit" class="btn btn-primary">Add Note</button>
                </form>
            </div>
        </div>
    </div>

    <%@ include file="all_components/Footer.jsp" %>
</body>
</html>
