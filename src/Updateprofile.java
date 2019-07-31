import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class LoginDao
 */
@WebServlet("/Updateprofile")
public class Updateprofile extends HttpServlet{
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String company1 = request.getParameter("company").toString();
		String lives1 = request.getParameter("lives").toString();
		String job1 = request.getParameter("job").toString();
	
		String url="jdbc:mysql://localhost:3306/minipro";
		String sql = "insert into users values(?,?,?,?,?,?)";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url, "sagar", "Sagar@123");
			PreparedStatement st = conn.prepareStatement(sql);
			st.setString(1, company1);
			st.setString(2, lives1);
			st.setString(3, job1);
			int count = st.executeUpdate();
			System.out.print(count);
			response.sendRedirect("userinfo.jsp?userid=<%  %>");
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
}
}
