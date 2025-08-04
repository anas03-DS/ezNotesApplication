<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Register Page</title>
	<%@ include file="all_components/ALL_CDN.jsp" %>

	<style>
		html, body {
			height: 100%;
			margin: 0;
			padding: 0;
		}

		body {
			background-color: #f1f4f9;
			display: flex;
			flex-direction: column;
		}

		.content-wrapper {
			flex: 1;
		}

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

		.register-card {
			animation: floatUp 0.8s ease-in-out;
			border-radius: 15px;
			background-color: #e8f0fe;
			box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
			transition: all 0.3s ease;
		}

		.register-card:hover {
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

	<div class="content-wrapper">
		<div class="container-fluid mt-5 mb-5">
			<div class="row">
				<div class="col-md-4 offset-md-4">
					<div class="card register-card p-4">
						<div class="card-header bg-transparent border-0">
							<h1>Register</h1>
						</div>

						<!-- Success Message -->
						<%
							String regMsg = (String)session.getAttribute("reg-success");
							if(regMsg != null) {
						%>
							<div class="alert alert-success text-center" role="alert">
								<%= regMsg %> <a href="login.jsp" class="alert-link">Login</a>
							</div>
						<% session.removeAttribute("reg-success"); } %>

						<!-- Error Message -->
						<%
							String failedMsg = (String)session.getAttribute("failed-msg");
							if(failedMsg != null) {
						%>
							<div class="alert alert-danger text-center" role="alert">
								<%= failedMsg %>
							</div>
						<% session.removeAttribute("failed-msg"); } %>

						<div class="card-body">
							<form action="UserServlet" method="post">
								<div class="form-group mb-3">
									<label>Name</label>
									<input type="text" name="fname" class="form-control" placeholder="Enter Name" required>
								</div>
								<div class="form-group mb-3">
									<label>Email</label>
									<input type="email" name="uemail" class="form-control" placeholder="Enter Email" required>
								</div>
								<div class="form-group mb-4">
									<label>Password</label>
									<input type="password" name="upassword" class="form-control" placeholder="Password" required>
								</div>
								<button type="submit" class="btn btn-primary">Register</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="all_components/Footer.jsp" %>
</body>
</html>
