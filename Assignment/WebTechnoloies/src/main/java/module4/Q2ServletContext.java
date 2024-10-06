package module4;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Q2ServletContext")
public class Q2ServletContext extends HttpServlet 
{	
	ServletContext context=null;
	private static final long serialVersionUID = 1L;
    
    public Q2ServletContext() 
    {
        super();
       
    }
    @Override
    public void init(ServletConfig config) throws ServletException
    {
    	context=config.getServletContext();
    }
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String username=context.getInitParameter("username");
		String password=context.getInitParameter("password");
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		out.println("<h1> Usename is :"+username);
		out.println("<br><h1> Password is :"+password);
	}

}
