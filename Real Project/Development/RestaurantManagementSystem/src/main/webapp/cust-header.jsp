<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Navbar & Hero Start -->
        <div class="container-xxl position-relative p-0">
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark px-4 px-lg-5 py-3 py-lg-0">
                <a href="" class="navbar-brand p-0">
                    <h1 class="text-primary m-0"><i class="fa fa-utensils me-3"></i>Restoran</h1>
                    <!-- <img src="img/logo.png" alt="Logo"> -->
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="fa fa-bars"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav ms-auto py-0 pe-4">
                        <a href="index.jsp" class="nav-item nav-link active">Home</a>
                        <a href="about.jsp" class="nav-item nav-link">About</a>
                        <a href="services.jsp" class="nav-item nav-link">Service</a>
                        <a href="menu.jsp" class="nav-item nav-link">Menu</a>
                       
                        <a href="restaurants.jsp" class="nav-item nav-link">Restaurants</a>
  
                        <a href="contect.jsp" class="nav-item nav-link">Contact</a>
                 
                    </div>
                    <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Welcome, <%=session.getAttribute("firstname") %>&nbsp;<%=session.getAttribute("lastname") %></a>
                            <div class="dropdown-menu m-0">
                                <a href="booking.htmlch
                                " class="dropdown-item">View Profile</a>
                               <a href="index.jsp?action=logout" class="dropdown-item">Logout</a>
                                <a href="testimonial.html" class="dropdown-item">Testimonial</a>
                            </div>
                        </div>
                        <form action="reservation.jsp">
                    <button type="submit" name="action" value="showrestaurants" class="btn btn-primary py-2 px-4">Book A Table</button> 
                    </form>
                </div>
            </nav>

            

</body>
</html>