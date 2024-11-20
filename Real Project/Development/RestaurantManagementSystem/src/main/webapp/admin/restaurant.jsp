<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>SeoDash Free Bootstrap Admin Template by Adminmart</title>
  <link rel="shortcut icon" type="image/png" href="assets/images/logos/seodashlogo.png" />
  <link rel="stylesheet" href="assets/css/styles.min.css" />
</head>
<body>

	<div class="page-wrapper" id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
    data-sidebar-position="fixed" data-header-position="fixed">
    	
    	<%@ include file="sidebar.jsp" %>
    	
    	<!--  Main wrapper -->
    <div class="body-wrapper">
    <%@ include file="header.jsp" %>
	 <div class="container-fluid">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title fw-semibold mb-4">Add Restaurant</h5>
            <div class="card">
              <div class="card-body">
                <form action="../admincontroller" method="post"  enctype="multipart/form-data">
                  <div class="mb-3">
                    <label for="restaurantname" class="form-label">Restaurant Name</label>
                    <input type="text" name="restaurantname" class="form-control" id="restaurantname" aria-describedby="emailHelp">
                  </div>
                  
                  <div class="mb-3">
                    <label for="adrress" class="form-label">Address</label>
                    <input type="text" name="address" class="form-control" id="address" placeholder="ex : 401 , Silver Harmony ,  Near Gota">
                  </div>
                  
                   <div class="mb-3">
                    <label for="city" class="form-label">City</label>
                    <input type="text" name="city" class="form-control" id="city" aria-describedby="emailHelp">
                  </div>
                  
           	      <div class="mb-3">
                    <label for="pincode" class="form-label">Pin Code</label>
                    <input type="text" name="pincode" class="form-control" id="pincode" aria-describedby="emailHelp">
                  </div>
                  
                  <div class="mb-3">
                    <label for="mobileno" class="form-label">Contact</label>
                    <input type="text" name="mobileno" class="form-control" id="mobileno" aria-describedby="emailHelp">
                  </div>
                  
                  <div class="mb-3">
                    <label for="image" class="form-label">Add Image</label>
                    <input type="file" name="image" class="form-control"  id="price" aria-describedby="emailHelp">
                  </div>
                  
                  <button type="submit" name="action" value="addrestaurant" class="btn btn-primary">Submit</button>
                </form>
              </div>
            </div>
          </div>
        </div>
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