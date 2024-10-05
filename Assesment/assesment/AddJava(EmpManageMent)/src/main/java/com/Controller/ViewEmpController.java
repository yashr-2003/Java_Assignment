package com.Controller;

import java.io.IOException; 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Model.EmpModel;
import com.DAO.*;

@WebServlet("/ViewEmpController")
public class ViewEmpController extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public ViewEmpController() 
    {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String action=request.getParameter("action");
		
		if(action.equals("edituser"))
		{
			
			int empid=Integer.parseInt(request.getParameter("empid"));
			EmpModel eemodel=new ViewEmpDAO().editRecord(empid);
			request.setAttribute("eemodel", eemodel);
			request.getRequestDispatcher("ViewEmp.jsp").forward(request, response);
			
		}
		else if(action.equals("deleteuser"))
		{
			int empid=Integer.parseInt(request.getParameter("empid"));
			int x=new ViewEmpDAO().deleteRecord(empid);
			if(x>0)
			{
				request.setAttribute("msg","Record Delete");
				request.getRequestDispatcher("ViewEmp.jsp").forward(request, response);;
			}
		}
		
		
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		EmpModel updatemodel=new EmpModel();
		
		updatemodel.setFirstname(req.getParameter("firstname"));
		updatemodel.setLastname(req.getParameter("lastname"));
		updatemodel.setEmail(req.getParameter("email"));
		updatemodel.setMobile(req.getParameter("mobile"));
		updatemodel.setAddress(req.getParameter("address"));
		updatemodel.setGender(req.getParameter("gender"));
		updatemodel.setPassword(req.getParameter("password"));
		updatemodel.setCpassword(req.getParameter("cpassword"));
		updatemodel.setEmpid(Integer.parseInt(req.getParameter("empid")));
		
		int x=new ViewEmpDAO().updateEmp(updatemodel);
		
		if(x>0)
		{
			req.getRequestDispatcher("ViewEmp.jsp").forward(req, resp);;
		}
	}
}
