<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("ucid");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/minipro", "sagar", "Sagar@123");
/*Statement st=conn.createStatement();
st.executeUpdate("DELETE FROM events WHERE title="+id);*/
PreparedStatement st = conn.prepareStatement("DELETE FROM users WHERE cid=?");
st.setString(1, id);
int count = st.executeUpdate();
out.println("Data Deleted Successfully!");
conn.close();
response.sendRedirect("adminset.jsp?val=User Deleted");
}
catch(Exception e)
{
out.print(e.getMessage());
e.printStackTrace();
}
%>