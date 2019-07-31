<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%

try
{
	String id = request.getParameter("t").toString();
	//String tit = request.getParameter("t");
	String title1="",date1="",info1="",brief1="",venue1="",time1="",topic1="";
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/minipro", "sagar", "Sagar@123");
/*Statement st = conn.createStatement();
out.print(id);
ResultSet rs = st.executeQuery("select * from events where title="+id);*/
PreparedStatement st = conn.prepareStatement("select * from events where title=?");
st.setString(1, id);
ResultSet rs = st.executeQuery();
while(rs.next())
{

%>

<form action="updateevent.jsp" method="post">
<input type="text" name="title" value="<%= rs.getString("title") %>"><br>
<input type="date" name="date" ><br>
<input type="text" name="info" value="<%= rs.getString("info") %>"><br>
<input type="text" name="topic" value="<%= rs.getString("topic") %>"><br>
<input type="text" name="venue" value="<%= rs.getString("venue") %>"><br>
<input type="text" name="time" value="<%= rs.getString("time") %>"><br>
<input type="text" name="brief" value="<%= rs.getString("brief") %>"><br>
<input type="submit" name="submit" value="submit"><br>

</form>

<%}
conn.close();
//response.sendRedirect("gallery.jsp");
}
catch(Exception e)
{
out.print(e.getMessage());
e.printStackTrace();
}
%>