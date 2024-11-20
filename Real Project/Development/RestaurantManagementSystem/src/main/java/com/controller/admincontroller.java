package com.controller;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.Dao.adminDao;
import com.model.AddRestaurantModel;
import com.model.ChoiceModel;
import com.model.MenuModel;

@WebServlet("/admincontroller")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 512, // 512MB
maxFileSize = 1024 * 1024 * 512, // 512MB
maxRequestSize = 1024 * 1024 * 512) // 512MB

public class admincontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public admincontroller() {
        super();
      
    }
    
    private String extractfilename(Part file) {
	    String cd = file.getHeader("content-disposition");
	    System.out.println(cd);
	    String[] items = cd.split(";");
	    for (String string : items) {
	        if (string.trim().startsWith("filename")) {
	            return string.substring(string.indexOf("=") + 2, string.length()-1);
	        }
	    }
	    return "";
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{

		String action=request.getParameter("action");
		
		if(action.equals("signin"))
		{
			String username=request.getParameter("username");
			String password=request.getParameter("password");
	
			String adminname=new adminDao().adminLogIn(username,password);
		
			if(adminname!=null)
			{
				request.setAttribute("adminname", adminname);
				response.sendRedirect("admin/dashboard.jsp");
			}
			else
			{
				response.sendRedirect("admin/index.jsp");
			}
		}
		else if(action.equals("addrestaurant"))
		{
			AddRestaurantModel rmodel=new AddRestaurantModel();
			
			rmodel.setRestaurantname(request.getParameter("restaurantname"));
			rmodel.setAddress(request.getParameter("address"));
			rmodel.setCity(request.getParameter("city"));
			rmodel.setPincode(request.getParameter("pincode"));
			rmodel.setMobileno(request.getParameter("mobileno"));
			
			String savePath = "C:\\Users\\Manish Chavda\\eclipse-workspace\\RestaurantManagementSystem\\src\\main\\webapp\\photos";
			
			File fileSaveDir=new File(savePath);
			if (!fileSaveDir.exists()) {
				fileSaveDir.mkdir();
				
			}
			Part file=request.getPart("image");
		 	String fileName=extractfilename(file);
		    file.write(savePath+File.separator+fileName);
		   			
		    
			rmodel.setImage(fileName);
		
			
			int x=new adminDao().addRestaurantData(rmodel);
			if(x>0)
			{
				response.sendRedirect("admin/restaurant.jsp");
			}
			else
			{
				response.sendRedirect("admin/restaurant.jsp");
				
			}
		}
		else if(action.equals("addmenu"))
		{
			MenuModel mmodel=new MenuModel();
			
			mmodel.setFoodname(request.getParameter("foodname"));
			mmodel.setPrice(request.getParameter("price"));
			mmodel.setDescription(request.getParameter("description"));
			mmodel.setRestaurantid(Integer.parseInt(request.getParameter("restaurantid")));

			String savePath = "C:\\Users\\Manish Chavda\\eclipse-workspace\\RestaurantManagementSystem\\src\\main\\webapp\\images";
			
			File fileSaveDir=new File(savePath);
			if (!fileSaveDir.exists()) {
				fileSaveDir.mkdir();
				
			}
			Part file=request.getPart("image");
		 	String fileName=extractfilename(file);
		    file.write(savePath+File.separator+fileName);
		   			
		    
			mmodel.setImage(fileName);
			

			int x=new adminDao().addMenuData(mmodel);
			if(x>0)
			{
				response.sendRedirect("admin/AddMenu.jsp");
			}
			else
			{
				response.sendRedirect("admin/restaurant.jsp");
				
			}
			
			
		}
		else if(action.equals("addchoice"))
		{
			System.out.println("In AdminController");
			ChoiceModel cmodel=new ChoiceModel();
			
			cmodel.setRestaurantid(Integer.parseInt(request.getParameter("restaurantid")));
			cmodel.setCname(request.getParameter("choice"));
			cmodel.setPrice(request.getParameter("price"));
			cmodel.setDescription(request.getParameter("description"));
			
			String savePath = "C:\\Users\\Manish Chavda\\eclipse-workspace\\RestaurantManagementSystem\\src\\main\\webapp\\images";
			
			File fileSaveDir=new File(savePath);
			if (!fileSaveDir.exists()) {
				fileSaveDir.mkdir();
				
			}
			Part file=request.getPart("image");
		 	String fileName=extractfilename(file);
		    file.write(savePath+File.separator+fileName);
		   			
		    
			cmodel.setImage(fileName);
			

			int x=new adminDao().addChoiceData(cmodel);
			if(x>0)
			{
				response.sendRedirect("admin/AddChoice.jsp");
			}
			else
			{
				System.out.println("Choice Not Entered");
				response.sendRedirect("admin/AddChoice.jsp");
				
			}
			
			
		}


	}
}