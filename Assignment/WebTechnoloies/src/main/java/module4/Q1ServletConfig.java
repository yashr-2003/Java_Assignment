package module4;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/Q1ServletConfig")
public class Q1ServletConfig extends HttpServlet 
{
	ServletConfig config=null;
	private static final long serialVersionUID = 1L;
   
    public Q1ServletConfig() 
    {
        super();
    }
   @Override
public void init(ServletConfig config) throws ServletException 
   {
	   this.config=config;
   }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String username=config.getInitParameter("username");
		String password=config.getInitParameter("password");
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		out.println("<h1> Username is :"+username);
		out.println("<br>password is :"+password);
	}

}
