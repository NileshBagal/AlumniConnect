import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet("/Register")
public class Register extends HttpServlet{
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		String id = request.getParameter("cid").toString();
		String email1 = request.getParameter("email").toString();
		String branch1 = "";
		String batch1 = request.getParameter("batch").toString();
		String pwd1 = request.getParameter("pwd").toString();
		String name = request.getParameter("dname").toString();
		
	
		String url="jdbc:mysql://localhost:3306/minipro";
		String sql = "insert into users(cid,email,pwd,batch,branch,name) values(?,?,?,?,?,?)";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url, "sagar", "Sagar@123");
			
			
			PreparedStatement st11 = conn.prepareStatement("SELECT COUNT(*) FROM users where email=?");
			st11.setString(1, email1);
			ResultSet rs1 = st11.executeQuery();
			rs1.next();
			String Countrow1 = rs1.getString(1);
			
			
			
			PreparedStatement st1 = conn.prepareStatement("SELECT COUNT(*) FROM users where cid=?");
			st1.setString(1, id);
			ResultSet rs = st1.executeQuery();
			rs.next();
			String Countrow = rs.getString(1);
			out.println(Countrow);
			if(Countrow.equals("0")){
				
				if(!Countrow1.equals("0"))
				{
					response.sendRedirect("index.jsp?val=email exists");
				}
				
				char hoo = id.charAt(0);
				String h = Character.toString(hoo);
				if(h.equals("I"))
				{
					branch1 = "IT";
				}
				else if(h.equals("C"))
				{
					branch1 = "COMP";
				}
				else if(h.equals("E"))
				{
					branch1 = "ENTC";
				}
				
				if(pwd1.length()<3)
				{
					response.sendRedirect("index.jsp?val=password is too weak");
				}
				
				PreparedStatement st = conn.prepareStatement(sql);
				st.setString(1, id);
				st.setString(2, email1);
				st.setString(3, pwd1);
				st.setString(4, batch1);
				st.setString(5, branch1);
				st.setString(6, name);
				int len = id.length();
				int k=len;
				out.println(k);
				String checkinitial = "";
					checkinitial+=checkinitial+id.charAt(0)+id.charAt(1)+id.charAt(2);
					out.print(checkinitial);out.print(id);
					
					
					if(k!=11)
					{
						out.println(k);
						response.sendRedirect("index.jsp?val=invalid id");
					}
					else {
						out.print(k);
					}
					
					for(int i=3;i<k;i++)
					{
						if(id.charAt(i)<48 || id.charAt(i)>57)
						{
							response.sendRedirect("index.jsp?val=invalid id");
						}
					}
					
					
				if(len==11 && (checkinitial.equals("I2K") || checkinitial.equals("C2K") || checkinitial.equals("E2K")))
				{
					out.print(checkinitial);out.print(len);
					if(email1.equals(null) || batch1.equals(null) || branch1.equals(null) || name.equals(null) || pwd1.equals(null))
					{
						
					    response.sendRedirect("index.jsp?val=incomplete data");
						    
					}
					else
					{
						int f = Integer.parseInt(batch1);
						if(f>=1980 && f<=2018)					//check year
						{
								
							for(int i=0;i<name.length();i++)	//check name
							{
								if(name.charAt(i)!=32 && (name.charAt(i)<'A' || name.charAt(i)>'z' || ( name.charAt(i)>'Z' && name.charAt(i)<'a' )))
								{
									response.sendRedirect("index.jsp?val=invalid name"+name.charAt(i));
								}
							}									//check name end
							
							
							if(email1.length()>11)				//check email
							{
								char d = email1.charAt(email1.length()-10);
								char g = '@';
								if(d!=g) { 
									response.sendRedirect("index.jsp?val=invalid email");
								}
								String[] parts = email1.split("@"); //returns an array with the 2 parts
								String SecondPart = parts[1];
								if(SecondPart.equals("gmail.com"))
								{
									//int count = st.executeUpdate();	
								}
								else
								{
									response.sendRedirect("index.jsp?val=invalid email");
								}
							}
							else
							{
								response.sendRedirect("index.jsp?val=invalidemail");
							}
															//check email end
							int count = st.executeUpdate();
							response.sendRedirect("index.jsp?val=Successfully registered");
						}										//check year end
						else
						{
							response.sendRedirect("index.jsp?val=invalidyear");
						}
					
					}
					//
				}
				else
				{
					
					response.sendRedirect("index.jsp?val=invalid id");
					
				}
				
				
			}
			else
			{
				response.sendRedirect("index.jsp?val=already exists");
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
			out.print(e.getMessage());
		}
}
}
