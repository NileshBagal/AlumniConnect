<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
    
    
    <%
    
    	String thecid = (String)session.getAttribute("id");
	    String mypost = (String)request.getParameter("txta");
		String theskey = (String)request.getParameter("hddn");
    	String url="jdbc:mysql://localhost:3306/minipro";
		String sql = "select name from users where cid=?";
	
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection(url, "sagar", "Sagar@123");
		PreparedStatement st = conn.prepareStatement(sql);
		st.setString(1,thecid );
		ResultSet rs = st.executeQuery();
		String realname="";
		while(rs.next())
		{
			realname=rs.getString("name");
		}
		
		
	%>
    
    
    <%
    	
    	out.print(realname);out.print(theskey);
    	theskey = theskey.trim();
    
		try {
		String url1="jdbc:mysql://localhost:3306/minipro";
		String sql1 = "insert into comments(name,info,eventkey,date) values(?,?,?,DATE(NOW()))";
		
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn1 = DriverManager.getConnection(url, "sagar", "Sagar@123");
			PreparedStatement st1 = conn.prepareStatement(sql1);
			st1.setString(1,realname);
			st1.setString(2, mypost);
			st1.setString(3, theskey);
			//out.print(realname);out.print(mypost);out.print(theskey);
			int count=0;
			if(mypost!="" && mypost!=null)
			{
				count = st1.executeUpdate();
			}
			else
			{
				response.sendRedirect("events.jsp?sorry=2");
			}
			theskey=theskey.trim();
			System.out.print(count);
			response.sendRedirect("eventfullinfo.jsp?eventno="+theskey);
			conn.close();	
		}
		catch(Exception e){
			  
			out.print(e.getMessage());
			e.printStackTrace();
		}
			%>