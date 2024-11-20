<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@page import="com.util.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>SeoDash - Add Food Menu</title>
  <link rel="shortcut icon" type="image/png" href="assets/images/logos/seodashlogo.png" />
  <link rel="stylesheet" href="assets/css/styles.min.css" />
</head>
<body>

	<div class="page-wrapper" id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
    data-sidebar-position="fixed" data-header-position="fixed">
    	
    	<%@ include file="sidebar.jsp" %>
    	
    	<!-- Main wrapper -->
    <div class="body-wrapper">
    <%@ include file="header.jsp" %>
	 <div class="container-fluid">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title fw-semibold mb-4">Add Choices for Table Booking</h5>
            <div class="card">
                <div class="mb-3">
                <form action="../admincontroller" method="post" enctype="multipart/form-data">
                 	
                 	 <label for="restaurantid" class="form-label">Restaurant Name</label>
                    <select name="restaurantid" class="form-control">
                    	<%
                    		Connection cn=new DBUtil().getConnectionData();
                    		String qry="select * from addrestaurant";
                    		PreparedStatement st=cn.prepareStatement(qry);
                    		ResultSet rs=st.executeQuery();
                    		while(rs.next())
                    		{
                    	%>
                    	<option value="<%=rs.getInt(1)%>"><%=rs.getString(2) %></option>
                    	<%
                    		}
                    		cn.close();
                    	%>
                    </select>
                  </div> 
                  
                  
                  <div class="mb-3">
                    <label for="choice" class="form-label">Add Choice</label>
                    <input type="text" name="choice" class="form-control" id="choice" placeholder="ex : Couple Based" required>
                  </div>
                  
                  <div class="mb-3">
                    <label for="price" class="form-label">Price</label>
                    <input type="text" name="price" class="form-control" id="price" placeholder="Enter price" required>
                  </div>
                  
                  <div class="mb-3">
                    <label for=description" class="form-label">Description</label>
                    <input type="text" name="description" class="form-control" id="description" placeholder="Enter description For Choice " required>
                  </div>
                  
                  <div class="mb-3">
                    <label for="image" class="form-label">Add Image</label>
                    <input type="file" name="image" class="form-control" id="image" accept="image/*" required>
                    <div class="image-preview mt-2" id="imagePreview"></div>
                  </div>
	                
	                <input type="hidden" name="restaurantname" value="<%=request.getParameter("restaurantname")%>">
	                <input type="hidden" name="restaurantid" value="<%=request.getParameter("restaurantid")%>">
	                
	                
	                	                             
				<button type="submit" name="action" value="addchoice" class="btn btn-primary">Submit</button>
                </form>
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
  
  <!-- Image preview script -->
  <script>
    // Function to preview image before uploading
    document.getElementById('image').addEventListener('change', function(e) {
      const file = e.target.files[0];
      const preview = document.getElementById('imagePreview');
      preview.innerHTML = ""; // Clear previous preview

      if (file) {
        const reader = new FileReader();
        reader.onload = function(event) {
          const img = document.createElement('img');
          img.src = event.target.result;
          img.alt = "Image Preview";
          img.classList.add('img-fluid');
          preview.appendChild(img);
        };
        reader.readAsDataURL(file);
      }
    });
  </script>

</body>

</html>
