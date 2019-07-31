import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.annotation.WebServlet;
/**
 * Servlet implementation class LoginDao
 */
@WebServlet("/LoginDao")
public class LoginDao{
	String url="jdbc:mysql://localhost:3306/minipro";
	String sql = "select * from users where cid=? and pwd=?";
	public boolean check(String cid,String pwd)
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url, "sagar", "Sagar@123");
			PreparedStatement st = conn.prepareStatement(sql);
			st.setString(1, cid);
			st.setString(2, pwd);
			ResultSet rs = st.executeQuery();
			
			if(rs.next())
			{
				return true;
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return false;
	}

}
