package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.Dao.CustomerDao;
import com.Dao.adminDao;
import com.model.CustomerModel;
import com.model.TableModel;

@WebServlet("/customercontroller")
public class customercontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public customercontroller() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String action=request.getParameter("action");
		if(action.equals("nobook"))
		{
			request.setAttribute("msg","Error : Please Login First");//not working
			request.getRequestDispatcher("clogin.jsp").forward(request, response);;
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String action=request.getParameter("action");
		if(action.equals("register"))
		{
			CustomerModel rmodel=new CustomerModel();
			
			rmodel.setFirstname(request.getParameter("firstname"));
			rmodel.setLastname(request.getParameter("lastname"));
			rmodel.setAddress(request.getParameter("address"));
			rmodel.setState(request.getParameter("state"));
			rmodel.setPincode(Integer.parseInt(request.getParameter("pincode")));
			rmodel.setMobile(request.getParameter("mobile"));
			rmodel.setEmail(request.getParameter("email"));
			rmodel.setPassword(request.getParameter("password"));
			
			int x=new CustomerDao().customerRegistration(rmodel);
			
			if(x>0)
			{
				response.sendRedirect("clogin.jsp");
			}
			else
			{
				response.sendRedirect("cregistration.jsp");
			}
		}
		else if(action.equals("login"))
		{
			
			CustomerModel lmodel=new CustomerModel();
			lmodel.setEmail(request.getParameter("email"));
			lmodel.setPassword(request.getParameter("password"));
			
			CustomerModel model=new CustomerDao().customerLogin(lmodel);
			
			if(model != null)
			{
				HttpSession session=request.getSession();
				session.setAttribute("model", model);
				session.setAttribute("customerid", model.getCustomerid());
				session.setAttribute("firstname", model.getFirstname());
				session.setAttribute("lastname", model.getLastname());
				
				response.sendRedirect("cust-home.jsp");	
			}
			else
			{
				request.setAttribute("msg", "Error : Email or Password invalid");//not working
				request.getRequestDispatcher("clogin.jsp").forward(request, response);;
			}
			
		}
		else if(action.equals("booktable"))
		{
			TableModel tmodel=new TableModel();
			
			tmodel.setCustomername(request.getParameter("customername"));
			tmodel.setMobileno(request.getParameter("mobileno"));
			tmodel.setDate(request.getParameter("date"));
			tmodel.setPeople(request.getParameter("people"));
			tmodel.setSpecial(request.getParameter("special"));
			tmodel.setRestaurantname(request.getParameter("restaurantname"));
	
			
			int x=new adminDao().tableBook(tmodel);
			
			if(x>0)
			{
				response.sendRedirect("payment.jsp?people="+tmodel.getPeople());
			}
			else
			{
				System.out.println("details not addded");
			}
		}
	}

}
