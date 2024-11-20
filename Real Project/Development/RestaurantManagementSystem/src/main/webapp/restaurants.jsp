<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.util.DBUtil"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

    <!-- Internal CSS for Restaurant Boxes -->
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        .restaurant-container {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: space-between;
        }

        .restaurant-box {
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 20px;
            width: 100%;
            max-width: 400px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
        }

        .restaurant-box:hover {
            transform: translateY(-10px);
        }

        .restaurant-box img {
            width: 100%;
            max-width: 400px;
            border-radius: 8px;
        }

        .restaurant-box h5 {
            margin-top: 10px;
            font-size: 1.5rem;
            font-weight: bold;
        }

        .restaurant-box p {
            font-size: 1.2rem;
            color: #555;
            margin: 5px 0;
        }

        .restaurant-box .btn {
            margin-top: 10px;
            background-color: #007bff;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .restaurant-box .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <%@ include file="cust-header.jsp" %>

    <!-- Menu Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h5 class="section-title ff-secondary text-center text-primary fw-normal">Restaurants</h5>
                <h1 class="mb-5">Most Popular Restaurants</h1>
            </div>

            <!-- Restaurant Cards -->
            <div class="restaurant-container">
                <% 
                Connection cn = new DBUtil().getConnectionData();
                String qry = "select * from addrestaurant";
                PreparedStatement st = cn.prepareStatement(qry);
                ResultSet rs = st.executeQuery();
                while (rs.next()) {
                %>
                    <div class="restaurant-box">
                        <img src="<%= request.getContextPath() + "/photos/" + rs.getString(7) %>" alt="Restaurant Image">
                        <h5 class="d-flex justify-content-between">
                            <span><%= rs.getString(2) %></span>
                            <span class="text-primary"><%= rs.getString(6) %></span>
                        </h5>
                        <p><strong>Location:</strong> <%= rs.getString(3) %></p>
                        <p><strong>City:</strong> <%= rs.getString(4) %></p>
                        <a href="reservation.jsp?restaurantname=<%= java.net.URLEncoder.encode(rs.getString(2), "UTF-8") %>" class="btn btn-primary">Book Now</a>
                    </div>
                <% 
                }
                cn.close();
                %>
            </div>
        </div>
    </div>

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
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
    
</body>
</html>
