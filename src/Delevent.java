import java.io.*;
import java.sql.*;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import com.mysql.jdbc.Statement;
/**
 * Servlet implementation class LoginDao
 */
@WebServlet("/Delevent")
public class Delevent extends HttpServlet{
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String d1 = request.getParameter("d1").toString();	
		try {
		/*	Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url, "sagar", "Sagar@123");
			Statement st=conn.createStatement();
			int i=st.executeUpdate("delete * from events where title="+d1);
			response.sendRedirect("events.jsp");*/
				
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/minipro", "sagar", "Sagar@123");
			Statement st=conn.createStatement();
			int i=st.executeUpdate("DELETE FROM events WHERE title="+d1);
			if(i>0) {
				response.sendRedirect("index.jsp");
			}
			else {
				response.sendRedirect("gallery.jsp");
			}
			
		}
		catch(Exception e){
			PrintWriter out = response.getWriter();
			out.print(e.getMessage());
			e.printStackTrace();
		}
}
}
