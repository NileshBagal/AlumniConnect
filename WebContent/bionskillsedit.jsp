<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>

    
	<%
		String bio1 = request.getParameter("bio").toString();
		String skills1 = request.getParameter("sel1").toString();
		String skills2 = request.getParameter("sel2").toString();
		String skills3 = request.getParameter("sel3").toString();
		String uid = (String)session.getAttribute("id");
	
		String url="jdbc:mysql://localhost:3306/minipro";
		String sql = "update users set bio=?,skill1=?,skill2=?,skill3=? where cid=?";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url, "sagar", "Sagar@123");
			PreparedStatement st = conn.prepareStatement(sql);
			st.setString(1, bio1);
			st.setString(2, skills1);
			st.setString(3, skills2);
			st.setString(4, skills3);
			st.setString(5, uid);
			int count = st.executeUpdate();
			System.out.print(count);
			conn.close();
			response.sendRedirect("userinfo.jsp?userid="+uid);
			
		}
		catch(Exception e){
			out.print(e.getMessage());
			e.printStackTrace();
		}
	%>