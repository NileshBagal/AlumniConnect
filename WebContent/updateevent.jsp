<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	
	try
	{
		String title1 = request.getParameter("title").toString();
		String date1 = request.getParameter("date").toString();
		String info1 = request.getParameter("info").toString();
		String topic1 = request.getParameter("topic").toString();
		String venue1 = request.getParameter("venue").toString();
		String time1 = request.getParameter("time").toString();
		String brief1 = request.getParameter("brief").toString();
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/minipro", "sagar", "Sagar@123");
		
		PreparedStatement st = conn.prepareStatement("DELETE FROM events WHERE title=?");
		st.setString(1, title1);
		int count = st.executeUpdate();
		
		
		////
		
		
		PreparedStatement st1 = conn.prepareStatement("insert into events(title,date,info,brief,venue,time,topic) values(?,?,?,?,?,?,?)");
		st1.setString(1, title1);
		st1.setString(2, date1);
		st1.setString(3, info1);
		st1.setString(4, brief1);
		st1.setString(5, venue1);
		st1.setString(6, time1);
		st1.setString(7, topic1);
		int count1 = st1.executeUpdate();
		conn.close();
		response.sendRedirect("events.jsp");
	}
	catch(Exception e)
	{
		out.print(e.getMessage());
	}
	
	%>

</body>
</html>