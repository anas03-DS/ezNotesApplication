<!-- Code Start for(this page will not be open without login) -->
<%
	UserDetails user1 = (UserDetails)session.getAttribute("userD");
	if(user1 == null){
		session.setAttribute("login-error","Please Login First...!!!");
		response.sendRedirect("login.jsp");
	}
%>
<!-- Code End -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Welcome Page</title>
	<%@ include file="all_components/ALL_CDN.jsp" %>
	<style>
		.hero {
			background: linear-gradient(to right, #6a11cb, #2575fc);
			color: white;
			min-height: 80vh;
			display: flex;
			justify-content: center;
			align-items: center;
			text-align: center;
		}
		.hero img {
			width: 120px;
			margin-bottom: 20px;
		}
		.hero h1 {
			font-size: 3rem;
			margin-bottom: 20px;
		}
	</style>
</head>
<body>

	<%@ include file="all_components/Navbar.jsp" %>

	<div class="container-fluid p-0">
		<div class="hero">
			<div>
				<img src="image/edit.png" class="img-fluid btn btn-outline-primary" alt="Edit Icon">
				<h1>Welcome to Your Notes</h1>
				<p class="lead">Write, save, and manage your notes with ease</p>
				<a href="add_notes.jsp" class="btn btn-lg btn-light mt-3 shadow-sm">Start Here</a>
			</div>
		</div>
	</div>

	<%@ include file="all_components/Footer.jsp" %>

</body>
</html>
