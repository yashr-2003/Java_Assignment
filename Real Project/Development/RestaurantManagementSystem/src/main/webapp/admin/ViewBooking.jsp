<%@page import="java.sql.Connection"%> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
  
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>SeoDash Free Bootstrap Admin Template by Adminmart</title>
  <link rel="shortcut icon" type="image/png" href="assets/images/logos/seodashlogo.png" />
  <link rel="stylesheet" href="assets/css/styles.min.css" />
<style>
  .booking-card {
    border: 1px solid #ddd;
    padding: 20px;
    margin-bottom: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    background-color: #fff;
    width: 100%;
    max-width: 350px;
    margin-left: auto;
    margin-right: auto;
    transition: transform 0.3s ease-in-out;
  }

  .booking-card:hover {
    transform: translateY(-10px);
  }

  .booking-card img {
    width: 100%;
    height: 200px;
    object-fit: cover;
    border-radius: 8px;
  }

  .booking-card h5 {
    font-size: 1.5rem;
    font-weight: bold;
    text-align: center;
    margin-top: 10px;
    background: linear-gradient(to right, #ff7e5f, #feb47b); /* Gradient background */
    -webkit-background-clip: text; /* Apply the gradient to the text */
    color: transparent; /* Make the text transparent to show gradient */
    padding: 5px;
    border-radius: 5px;
  }

  .booking-card p {
    font-size: 1rem;
    margin: 5px 0;
    color: #555;
  }

  .booking-card p strong {
    color: #ff7e5f; /* Color for the labels like "Address", "Popular Food" */
  }

  /* Responsive Design */
  @media (max-width: 768px) {
    .booking-card {
      max-width: 100%;
      margin-left: 10px;
      margin-right: 10px;
    }
  }
</style>

</head>

<body>
  <div class="page-wrapper" id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
       data-sidebar-position="fixed" data-header-position="fixed">
    
    <%@ include file="sidebar.jsp" %>
    
    <!--  Main wrapper -->
    <div class="body-wrapper">
      <%@ include file="header.jsp" %>
      <div class="container-fluid">
        <h5 class="card-title fw-semibold mb-4">All Table Bookings</h5>
        
        <!-- Booking cards start here -->
        <div class="row">
          <% 
            try {

              Class.forName("com.mysql.jdbc.Driver");
              Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/rms", "root", "");

              String qry = "SELECT * FROM booktable";
              PreparedStatement st = cn.prepareStatement(qry);
              ResultSet rs = st.executeQuery();

              while (rs.next()) {
          %>
          <div class="col-md-4">
            <div class="booking-card">
              <h5>Booking Details</h5>
              <p><strong>Customer Name:</strong> <%= rs.getString(2) %></p>
              <p><strong>Mobile No:</strong> <%= rs.getString(3) %></p>
              <p><strong>Date:</strong> <%= rs.getString(4) %></p>
              <p><strong>Number of People:</strong> <%= rs.getString(5) %></p>
              <p><strong>Special Request:</strong> <%= rs.getString(6) %></p>
              <p><strong>Restaurant Name:</strong> <%= rs.getString(7) %></p>
            </div>
          </div>
          <% 
              } // End of while loop
              cn.close();
            } catch (Exception e) {
              e.printStackTrace();
            }
          %>
        </div>
        <!-- Booking cards end here -->
      </div>
    </div>
  </div>
 
  <script src="assets/libs/jquery/dist/jquery.min.js"></script>
  <script src="assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <script src="assets/libs/apexcharts/dist/apexcharts.min.js"></script>
  <script src="assets/libs/simplebar/dist/simplebar.js"></script>
  <script src="assets/js/sidebarmenu.js"></script>
  <script src="assets/js/app.min.js"></script>
  <script src="assets/js/dashboard.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/iconify-icon@1.0.8/dist/iconify-icon.min.js"></script>
</body>

</html>