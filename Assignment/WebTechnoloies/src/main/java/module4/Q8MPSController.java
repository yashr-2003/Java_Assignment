package module4;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.UserModel;

import DAO.AddRecord; 
@WebServlet("/Q8MPSController")
public class Q8MPSController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Q8MPSController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String action=null;
		if(action!=null)
		{
			if(action.equals("sendmessage"))
			{
			request.getParameter("action");
			response.sendRedirect("message.jsp");
			}
		}
		
		UserModel umodel=new UserModel();
		
		umodel.setFirstname(request.getParameter("firstname"));
		umodel.setLastname(request.getParameter("lastname"));
		umodel.setEmail(request.getParameter("email"));
		umodel.setMobile(Integer.parseInt(request.getParameter("mobile")));
		
		int x=new AddRecord().insertRecord(umodel);
		if(x>0)
		{
			response.sendRedirect("Q8MPS.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String from=request.getParameter("from");
		String to=request.getParameter("to");
		String msg=request.getParameter("msg");
		
		String firstname=new AddRecord().MsgSend(to);
		
		request.setAttribute("firstname", firstname);
		request.setAttribute("from", from);
		request.setAttribute("msg", msg);
		request.getRequestDispatcher("getmsg.jsp").forward(request, response);
	}

}
