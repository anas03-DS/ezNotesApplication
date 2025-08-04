<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login Page</title>
	<%@ include file="all_components/ALL_CDN.jsp" %>
	<style>
		@keyframes floatUp {
			from {
				opacity: 0;
				transform: translateY(50px);
			}
			to {
				opacity: 1;
				transform: translateY(0);
			}
		}

		.login-card {
			animation: floatUp 0.8s ease-in-out;
			border-radius: 15px;
			background-color: #e8f0fe;
			box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
			transition: all 0.3s ease;
		}

		.login-card:hover {
			transform: scale(1.02);
			box-shadow: 0 15px 35px rgba(0, 0, 0, 0.25);
		}

		h1 {
			font-weight: 600;
			text-align: center;
			color: #007bff;
		}

		.btn-primary {
			width: 100%;
			font-weight: bold;
		}

		label {
			font-weight: 500;
		}
	</style>
</head>
<body>
	<%@ include file="all_components/Navbar.jsp" %>

	<div class="container-fluid mt-5 mb-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card login-card p-4">
					<div class="card-header  bg-transparent border-0">
						<h1>Login</h1>
					</div>

					<!-- Login failed messages -->
					<%
						String invalidMsg = (String)session.getAttribute("login-failed");
						if(invalidMsg != null) {
					%>
						<div class="alert alert-danger text-center" role="alert">
							<%= invalidMsg %>
						</div>
					<% session.removeAttribute("login-failed"); } %>

					<%
						String invalidLogin = (String)session.getAttribute("login-error");
						if(invalidLogin != null) {
					%>
						<div class="alert alert-danger text-center" role="alert">
							<%= invalidLogin %>
						</div>
					<% session.removeAttribute("login-error"); } %>

					<!-- Login Form -->
					<div class="card-body">
						<form method="post" action="LoginServlet">
							<div class="form-group mb-3">
								<label>Email</label>
								<input type="email" class="form-control" placeholder="Enter Email" name="uemail" required>
							</div>
							<div class="form-group mb-4">
								<label>Password</label>
								<input type="password" class="form-control" placeholder="Enter Password" name="upassword" required>
							</div>
							<button type="submit" class="btn btn-primary">Log In</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="all_components/Footer.jsp" %>
</body>
</html>
