

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
/**
 * Servlet implementation class addaPost
 */
@WebServlet("/addaPost")
public class addaPost extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addaPost() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = new PrintWriter(System.out);
		try {
			out.print("Hi");
		String mypost = request.getParameter("post").toString();
		String thecid = request.getParameter("thecid");
	
		String url="jdbc:mysql://localhost:3306/minipro";
		String sql = "insert into posts values(?,?,DATE(NOW()))";
		
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url, "sagar", "Sagar@123");
			PreparedStatement st = conn.prepareStatement(sql);
			st.setString(1,thecid );
			st.setString(2, mypost);
			int count = st.executeUpdate();
			System.out.print(count);
			response.sendRedirect("userinfo.jsp?userid="+thecid);
			
		}
		catch(Exception e){
			  
			out.print(e.getMessage());
			e.printStackTrace();

}
	}
}
