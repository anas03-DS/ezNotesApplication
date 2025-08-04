<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
    <%@ include file="all_components/ALL_CDN.jsp"%>
    <style>
        body {
            background: #f0f4f9;
        }

        .feature-box {
            background: white;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
            padding: 30px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            height: 100%;
        }

        .feature-box:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
        }

        .feature-icon {
            font-size: 40px;
            color: #007bff;
            margin-bottom: 20px;
        }

        .feature-title {
            font-size: 20px;
            font-weight: 600;
            margin-bottom: 10px;
        }

        .feature-description {
            font-size: 15px;
            color: #555;
        }

        .welcome-header {
            font-weight: 600;
            font-size: 30px;
            text-align: center;
            margin: 50px 0 30px;
            color: #333;
        }
    </style>
</head>
<body>
    <%@ include file="all_components/Navbar.jsp"%>

    <div class="container mt-4 mb-5">
        <div class="welcome-header">Welcome to Your Secure Notes App</div>

        <div class="row text-center">
            <div class="col-md-3 mb-4">
                <div class="feature-box">
                    <div class="feature-icon"><i class="fas fa-lock"></i></div>
                    <div class="feature-title">Secure Sessions</div>
                    <div class="feature-description">
                        Your notes are protected using session-based login and secure JSP/Servlet backend.
                    </div>
                </div>
            </div>
            <div class="col-md-3 mb-4">
                <div class="feature-box">
                    <div class="feature-icon"><i class="fas fa-database"></i></div>
                    <div class="feature-title">CRUD Operations</div>
                    <div class="feature-description">
                        Perform Create, Read, Update, Delete operations easily on your personal notes.
                    </div>
                </div>
            </div>
            <div class="col-md-3 mb-4">
                <div class="feature-box">
                    <div class="feature-icon"><i class="fas fa-mobile-alt"></i></div>
                    <div class="feature-title">Responsive Design</div>
                    <div class="feature-description">
                        Fully responsive UI powered by Bootstrap for seamless experience across devices.
                    </div>
                </div>
            </div>
            <div class="col-md-3 mb-4">
                <div class="feature-box">
                    <div class="feature-icon"><i class="fas fa-user-shield"></i></div>
                    <div class="feature-title">User Authentication</div>
                    <div class="feature-description">
                        Only registered users can log in, add or edit their own notes. Your data is safe.
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%@ include file="all_components/Footer.jsp"%>
</body>
</html>
