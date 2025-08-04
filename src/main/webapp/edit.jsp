<%@page import="com.DAO.PostDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.User.Post"%>
<%@page import="com.User.UserDetails"%>

<%
	UserDetails user1 = (UserDetails)session.getAttribute("userD");
	if(user1 == null){
		response.sendRedirect("login.jsp");
		session.setAttribute("login-error","Please Login First...!!!");
		return;
	}
%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Edit Notes</title>
	<%@ include file="all_components/ALL_CDN.jsp"%>
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

		.edit-form {
			background: #ffffff;
			border-radius: 15px;
			box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
			padding: 30px;
			animation: slideFade 0.8s ease-in-out;
			transition: all 0.3s ease;
		}

		.edit-form:hover {
			transform: scale(1.01);
			box-shadow: 0 12px 35px rgba(0, 0, 0, 0.15);
		}

		@keyframes slideFade {
			from {
				opacity: 0;
				transform: translateY(40px);
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

<%@ include file="all_components/Navbar.jsp"%>

<%
	String noteIdStr = request.getParameter("note_id");
	Post p = null;
	int noteid = 0;

	if (noteIdStr != null) {
		try {
			noteid = Integer.parseInt(noteIdStr);
			PostDAO post = new PostDAO(DBConnect.getConn());
			p = post.getDataById(noteid);
		} catch (NumberFormatException e) {
			out.println("<h3 class='text-danger text-center mt-5'>Invalid note ID!</h3>");
			return;
		}
	} else {
		out.println("<h3 class='text-danger text-center mt-5'>Note ID not provided!</h3>");
		return;
	}
%>

<div class="container mt-4 mb-5">
	<h1>✏️ Edit Your Note</h1>
	<div class="row justify-content-center">
		<div class="col-md-8">
			<form action="EditServlet" method="post" class="edit-form">
				<input type="hidden" value="<%= noteid %>" name="noteid">

				<div class="form-group mb-3">
					<label>Title</label>
					<input type="text" name="title" value="<%= p.getTitle() %>" class="form-control" required>
				</div>

				<div class="form-group mb-4">
					<label>Content</label>
					<textarea name="content" rows="8" class="form-control" required><%= p.getContent() %></textarea>
				</div>

				<button type="submit" class="btn btn-primary">Update Note</button>
			</form>
		</div>
	</div>
</div>

<%@ include file="all_components/Footer.jsp"%>
</body>
</html>
