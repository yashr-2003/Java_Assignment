<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <title>Restoran - Bootstrap Restaurant Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&family=Pacifico&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>
<body>
	
	  <%@ include file="cust-header.jsp" %>
	<!-- Reservation Start -->
	<div class="container-xxl py-5 px-4 wow fadeInUp" data-wow-delay="0.1s">
    <div class="row g-4 justify-content-center">
        <div class="col-lg-6 col-md-8">
            <div class="bg-dark p-4 rounded shadow wow fadeInUp" data-wow-delay="0.2s">
                <h5 class="section-title ff-secondary text-start text-primary fw-normal">Reservation</h5>
                <h1 class="text-white mb-4">Book A Table Online</h1>
                <form action="customercontroller" method="post">
                    <div class="row g-3">
                        <!-- Customer Name -->
                        <div class="col-12">
                            <div class="form-floating">
                                <input type="text" name="customername" class="form-control" id="customername" placeholder="Your Name">
                                <label for="customername">Your Name</label>
                            </div>
                        </div>
                        <!-- Mobile Number -->
                        <div class="col-md-6">
                            <div class="form-floating">
                                <input type="text" name="mobileno" class="form-control" id="mobileno" placeholder="Mobile Number">
                                <label for="mobileno">Mobile Number</label>
                            </div>
                        </div>
                        <!-- Date and Time -->
                        <div class="col-md-6">
                            <div class="form-floating date" id="date3" data-target-input="nearest">
                                <input type="text" name="date" class="form-control datetimepicker-input" id="datetime" placeholder="Date & Time" data-target="#date3" data-toggle="datetimepicker">
                                <label for="datetime">Date & Time</label>
                            </div>
                        </div>
                        <!-- No of People -->
                        <div class="col-md-6">
                            <div class="form-floating">
                                <input type="text" name="people" class="form-control" id="people" placeholder="No of People">
                                <label for="people">No of People</label>
                            </div>
                        </div>
                        <!-- Special Request -->
                        <div class="col-12">
                            <div class="form-floating">
                                <textarea class="form-control" name="special" placeholder="Special Request" id="message" style="height: 100px"></textarea>
                                <label for="message">Special Request</label>
                            </div>
                        </div>
                        <!-- Hidden Field -->
                        <div>
                            <%
                                String restaurantname = request.getParameter("restaurantname");
                            %>
                            <input type="hidden" name="restaurantname" value="<%= restaurantname %>">
                        </div>
                        <!-- Submit Button -->
                        <div class="col-12">
                            <button class="btn btn-primary w-100 py-3" type="submit" value="booktable" name="action">Book Now</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
	
    <!-- Reservation Stop -->
    	<%@ include file="footer.jsp" %>
	<!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
    
</body>
</html>