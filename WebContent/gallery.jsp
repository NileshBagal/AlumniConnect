<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <jsp:include page="nav.jsp" />
    
	<%@page import="java.util.Base64"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<html>
<body>

<div class="container-fluid">
	<div align="center" class="jumbotron" style="padding: 15px; background-image: linear-gradient(SkyBlue, PowderBlue);">
	  <h4 >GALLERY</h4>
	  <p style="font-size: 16px;">Check out Gallery of Latest Events</p>
	</div>
</div>
<div class="container-fluid">
  
   
  
  <div class="row">
<!-- 
  
  	  
  
  </div>
  
  
  
</div> -->

<% // declare a connection by using Connection interface Connection connection = null;
/* Create string of connection url within specified format with machine 
name, port number and database name. Here machine name id localhost 
and database name is mahendra. */
String connectionURL = "jdbc:mysql://localhost:3306/minipro";
/*declare a resultSet that works as a table resulted by execute a specified 
sql query. */
ResultSet rs = null;
// Declare statement.
PreparedStatement psmnt = null;
// declare InputStream object to store binary stream of given image.
InputStream sImage;
try {
// Load JDBC driver "com.mysql.jdbc.Driver"
Class.forName("com.mysql.jdbc.Driver").newInstance();
/* Create a connection by using getConnection() method that takes 
parameters of string type connection url, user name and password to 
connect to database. */
Connection connection = DriverManager.getConnection(connectionURL, "sagar", "Sagar@123");
/* prepareStatement() is used for create statement object that is 
used for sending sql statements to the specified database. */
psmnt = connection.prepareStatement("SELECT bImage FROM upload_image");
rs = psmnt.executeQuery();
while(rs.next()) {

	out.print("<div class='col-sm-4'><div class='card'> <img style='height:250px;width:410px;margin-bottom:10px;' src='data:image/png;base64,"+ Base64.getEncoder().encodeToString(rs.getBytes(1))+"'/></div></div>");

}

rs.close();
psmnt.close();
connection.close();
}
catch(Exception ex){
out.println("error :"+ex);
}

%>
</div></div>
</body>
</html>