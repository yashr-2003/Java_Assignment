package com.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.AddEmpDAO;
import com.Model.EmpModel;

@WebServlet("/AddEmpController")
public class AddEmpController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public AddEmpController() {
        super();
       
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		EmpModel emodel=new EmpModel();
		
		emodel.setFirstname(request.getParameter("firstname"));
		emodel.setLastname(request.getParameter("lastname"));
		emodel.setEmail(request.getParameter("email"));
		emodel.setMobile(request.getParameter("mobile"));
		emodel.setAddress(request.getParameter("address"));
		emodel.setGender(request.getParameter("gender"));
		emodel.setPassword(request.getParameter("password"));
		emodel.setCpassword(request.getParameter("cpassword"));
		int x=new AddEmpDAO().addEmp(emodel);
		
		if(x>0)
		{
			request.setAttribute("msg","Employee Details Added Succesfully");
			request.getRequestDispatcher("Home.jsp").forward(request, response);;
		}
		else
		{
			request.setAttribute("msg","Employee Details not Added");
			request.getRequestDispatcher("AddEmployee.jsp").forward(request, response);;
		}
	}

}
