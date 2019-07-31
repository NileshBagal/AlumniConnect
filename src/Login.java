

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String id = request.getParameter("cid").toString();
		String password = request.getParameter("pwd").toString();
		
		LoginDao l = new LoginDao();
		
		if(l.check(id, password))
		{
			HttpSession session = request.getSession();
			session.setAttribute("id",id);
			response.sendRedirect("index.jsp");
		}
		else
		{
			response.sendRedirect("index.jsp?val=Invalid Credentials");
		}
	}

}
