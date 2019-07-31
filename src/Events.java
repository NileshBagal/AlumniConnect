import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class LoginDao
 */
@WebServlet("/Events")
public class Events extends HttpServlet{
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String title1 = request.getParameter("title").toString();
		String date1 = request.getParameter("date").toString();
		String info1 = request.getParameter("info").toString();
		String topic1 = request.getParameter("topic").toString();
		String venue1 = request.getParameter("venue").toString();
		String time1 = request.getParameter("time").toString();
		String brief1 = request.getParameter("brief").toString();
		String enddate1 = request.getParameter("enddate").toString();
	
		String url="jdbc:mysql://localhost:3306/minipro";
		String sql = "insert into events(title,date,info,brief,venue,time,topic,enddate) values(?,?,?,?,?,?,?,?)";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url, "sagar", "Sagar@123");
			PreparedStatement st = conn.prepareStatement(sql);
			st.setString(1, title1);
			st.setString(2, date1);
			st.setString(3, info1);
			st.setString(4, brief1);
			st.setString(5, venue1);
			st.setString(6, time1);
			st.setString(7, topic1);
			st.setString(8, enddate1);
			int count = st.executeUpdate();
			response.sendRedirect("events.jsp");
			
		}
		catch(Exception e){
			//response.sendRedirect("gallery.jsp");
			PrintWriter out = response.getWriter();
			out.print(e.getMessage());
			e.printStackTrace();
		}
}
}
