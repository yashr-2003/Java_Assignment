package module4;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Q3ServletStudInfo")
public class Q3ServletStudInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Q3ServletStudInfo() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String firstname=request.getParameter("firstname");
		String lastname=request.getParameter("lastname");
		String email=request.getParameter("email");
		String mobile=request.getParameter("mobile");
		String gender=request.getParameter("gender");
		String password=request.getParameter("password");
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		System.out.println("FirstName is :"+firstname);
		System.out.println("LastName is :"+lastname);
		System.out.println("Email is :"+email);
		System.out.println("Mobile No. is :"+mobile);
		System.out.println("Gender is :"+gender);
		System.out.println("PassWord is :"+password);
		
		out.println("Data Shown in consol.");
		
		
		request.setAttribute("firstname",firstname);
		request.setAttribute("lastname",lastname);
		request.setAttribute("email",email);
		request.setAttribute("mobile",mobile);
		request.setAttribute("gender",gender);
		request.setAttribute("password",password);
		request.getRequestDispatcher("Q4StudInfo.jsp").forward(request, response);
		}

}
