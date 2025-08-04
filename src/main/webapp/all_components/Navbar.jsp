<%@ page import="com.User.UserDetails" %>
<!-- Font Awesome (for icons) -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<style>
    .navbar {
        background: linear-gradient(to right, #4facfe, #00f2fe);
        box-shadow: 0 4px 20px rgba(0,0,0,0.1);
    }

    .navbar-nav .nav-link {
        font-weight: 500;
        color: white !important;
        margin-right: 15px;
        transition: transform 0.2s ease;
    }

    .navbar-nav .nav-link:hover {
        transform: translateY(-2px);
        text-decoration: underline;
    }

    .custom-btn {
        color: white !important;
        background: transparent;
        padding: 6px 15px;
        border: none;
        font-weight: 500;
        transition: all 0.3s ease;
    }

    .custom-btn:hover {
        background: white !important;
        color: #007bff !important;
    }

    .modal-content {
        border-radius: 10px;
    }

    .modal-header {
        background-color: #007bff;
        color: white;
        border-top-left-radius: 10px;
        border-top-right-radius: 10px;
    }

    .brand-ez {
        color: #007bff;
        background-color: white;
        font-weight: 700;
        padding: 6px 15px;
        margin-right: 15px;
        border-radius: 5px;
        font-size: 18px;
    }
</style>

<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="collapse navbar-collapse" id="navbarSupportedContent">

        <!-- "ezNotes" brand label on the far left -->
        <span class="brand-ez">ezNotes</span>

        <!-- Navigation links -->
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active"><a class="nav-link" href="index.jsp">Home</a></li>
            <li class="nav-item"><a class="nav-link" href="add_notes.jsp">Add Notes</a></li>
            <li class="nav-item"><a class="nav-link" href="showNotes.jsp">Show Notes</a></li>
        </ul>

        <!-- Login/Profile/Logout section -->
        <%
        UserDetails user = (UserDetails) session.getAttribute("userD");
        if (user != null) {
        %>
            <a class="custom-btn mr-2" href="#" data-toggle="modal" data-target="#exampleModal">
                <i class="fas fa-user-circle mr-1"></i><%=user.getName()%>
            </a>
            <a class="custom-btn" href="LogoutServlet">
                <i class="fas fa-sign-out-alt mr-1"></i>Log Out
            </a>

            <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
                aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">User Profile</h5>
                            <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body text-center">
                            <i class="fas fa-user fa-3x mb-3"></i>
                            <table class="table table-bordered">
                                <tbody>
                                    <tr><th>User ID</th><td><%=user.getId()%></td></tr>
                                    <tr><th>Full Name</th><td><%=user.getName()%></td></tr>
                                    <tr><th>Email</th><td><%=user.getEmail()%></td></tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        <%
        } else {
        %>
            <a class="custom-btn mr-2" href="login.jsp">
                <i class="fas fa-sign-in-alt mr-1"></i>Log In
            </a>
            <a class="custom-btn" href="register.jsp">
                <i class="fas fa-user-plus mr-1"></i>Register
            </a>
        <%
        }
        %>
    </div>
</nav>
