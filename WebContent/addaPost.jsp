<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Random" %>
    
    <%
    	Random rand = new Random();
    	int  n = rand.nextInt(10000) + 1;
    	String n1 = new Integer(n).toString();
		String mypost = (String)request.getParameter("val");
		String thecid = (String)session.getAttribute("id");
		String mypid = thecid+n1;
		try {
		String url="jdbc:mysql://localhost:3306/minipro";
		String sql = "insert into posts values(?,?,?,CURRENT_TIME(),DATE(NOW()))";
		
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url, "sagar", "Sagar@123");
			PreparedStatement st = conn.prepareStatement(sql);
			st.setString(1,thecid );
			st.setString(2, mypost);
			st.setString(3, mypid);	
			int count = st.executeUpdate();
			System.out.print(count);
			conn.close();
			response.sendRedirect("userinfo.jsp?userid="+thecid);
			
		}
		catch(Exception e){
			  
			out.print(e.getMessage());
			e.printStackTrace();
		}
			%>