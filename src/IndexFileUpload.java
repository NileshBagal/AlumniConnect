import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;
import java.io.*;

@WebServlet("/IndexFileUpload")
public class IndexFileUpload extends HttpServlet{
	
	
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
{
	String connectionURL = "jdbc:mysql://localhost:3306/minipro";
	PrintWriter out = response.getWriter();
ResultSet rs = null;
// Declare statement.
PreparedStatement psmnt = null;
// declare InputStream object to store binary stream of given image.
InputStream sImage;
try {
// Load JDBC driver "com.mysql.jdbc.Driver"
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection connection = DriverManager.getConnection(connectionURL, "sagar", "Sagar@123");

psmnt = connection.prepareStatement("SELECT bImage FROM upload_image");
rs = psmnt.executeQuery();
		out.print("<html>");
while(rs.next()) {

	out.print("<img src='data:image/png:base64,"+ Base64.getEncoder().encodeToString(rs.getBytes(1))+"'/>");

}
out.print("</html>");

rs.close();
psmnt.close();
connection.close();
}
catch(Exception ex){
out.println("error :"+ex);
}
}
}