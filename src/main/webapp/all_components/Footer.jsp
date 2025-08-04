<!-- Font Awesome CDN for Social Icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" integrity="sha512-..." crossorigin="anonymous" referrerpolicy="no-referrer" />

<style>
    html, body {
        height: 100%;
        margin: 0;
        padding: 0;
    }

    body {
        display: flex;
        flex-direction: column;
    }

    .content-wrapper {
        flex: 1;
    }

    .custom-footer {
        background: #212529;
        color: #fff;
        padding: 20px 0 5px;
        width: 100%;
        font-size: 14px;
    }

    .custom-footer a {
        color: #ccc;
        text-decoration: none;
    }

    .custom-footer a:hover {
        color: #fff;
    }

    .social-icons a {
        margin: 0 10px;
        font-size: 16px;
    }

    .scroll-top-btn {
        position: fixed;
        bottom: 25px;
        right: 25px;
        display: none;
        background-color: #007bff;
        color: white;
        border: none;
        border-radius: 50%;
        padding: 10px 14px;
        font-size: 16px;
        cursor: pointer;
        z-index: 1000;
    }

    .scroll-top-btn:hover {
        background-color: #0056b3;
    }

    hr {
        background-color: #444;
        margin: 10px 0;
    }
</style>

<!-- Main Content Wrapper -->
<div class="content-wrapper">
    <!-- Your page content goes here -->
</div>

<!-- Footer Section -->
<footer class="custom-footer mt-auto">
    <div class="container text-center">
        <div class="row">
            <div class="col-md-4 mb-2">
                <h6>Contact Us</h6>
                <p class="mb-1">Email: support@mycompany.com</p>
                <p>Phone: +91 9876543210</p>
            </div>
            <div class="col-md-4 mb-2">
                <h6>About</h6>
                <p class="mb-0">We provide quality services with dedication and integrity.</p>
            </div>
            <div class="col-md-4 mb-2">
                <h6>Follow Us</h6>
                <div class="social-icons">
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-linkedin-in"></i></a>
                </div>
            </div>
        </div>

        
    </div>
</footer>

<!-- Scroll to Top Button -->
<button onclick="scrollToTop()" class="scroll-top-btn" id="scrollBtn">
    <i class="fas fa-arrow-up"></i>
</button>

<script>
    window.onscroll = function () {
        document.getElementById("scrollBtn").style.display =
            document.documentElement.scrollTop > 300 ? "block" : "none";
    };

    function scrollToTop() {
        window.scrollTo({ top: 0, behavior: 'smooth' });
    }
</script>
