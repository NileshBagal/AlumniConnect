<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.sql.*"%>

    
	<%
		String lives1 = request.getParameter("lives").toString();
		out.print(lives1);
		String job1 = request.getParameter("job").toString();
		String fromwhere1 = request.getParameter("fromwhere").toString();
		String company1 = request.getParameter("company").toString();
		String linkedin1 = request.getParameter("linkedin").toString();
		String uid = (String)session.getAttribute("id");
		
		//out.print(job1);
		String url="jdbc:mysql://localhost:3306/minipro";
		String sql = "update users set company=?,lives=?,job=?,fromwhere=?,linkedin=? where cid=?";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url, "sagar", "Sagar@123");
			PreparedStatement st = conn.prepareStatement(sql);
			st.setString(1, company1);
			st.setString(2, lives1);
			st.setString(3, job1);
			st.setString(4, fromwhere1);
			st.setString(5, linkedin1);
			st.setString(6, uid);
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