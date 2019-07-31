<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

    <jsp:include page="nav.jsp" />
    <%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "minipro";
String userid = "sagar";
String password = "Sagar@123";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;


String s= (String)session.getAttribute("id");

if(s!=null){
%>

<div class="container-fluid">
<div align="center" class="jumbotron" style="padding: 15px;background-color: #E0FFFF  ;">
  <h4 >Events</h4>
  <p style="font-size: 16px;">Discover and participate at events organized for alumni</p>
</div>
 
 
 <h5>Upcoming Events</h5><br>
 
  <div class="row" style="background-color:white;">
  <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select title,date_format(date,'%d-%m-%Y'),info,brief,DAYNAME(date) AS day,venue,date_format(date,'%Y') as myyear,date_format(date,'%M') as mymonth,date_format(date,'%d') as mydate,DATE_FORMAT(date, '%M %d %Y') as maindate ,time,topic from events where CURDATE()<date order by date desc limit 10";
resultSet = statement.executeQuery(sql);

while(resultSet.next()){
	//resultSet.getString("title");
	String s1 = resultSet.getString("title");
%>
    <div class="col-sm-3">         




	<div class="card mb-3">
          <div align="center" class="card-title zoom" style="background-color: #66CDAA;color: white;"> 
            <br>
            <p ><%=resultSet.getString("day") %></p>
            <h4 style="padding: 0px;font-size:30px;"><b> <%=resultSet.getString("mydate") %> </b></h4>
            <p><%=resultSet.getString("mymonth") %> <%=resultSet.getString("myyear") %></p>
            <br>

          </div>


        <div class="card-body">
          <h5 class="card-title" style="font-size:19px;"><i class="fa fa-calendar-o" style="font-size:14px;margin-right:9px;"></i><%= resultSet.getString("title") %></h5>
          <p style="font-size: 15px;"><%=resultSet.getString("maindate") %> - <%=resultSet.getString("time") %> </p>
          <p class="card-text" style="font-size: 16px;"> <%=resultSet.getString("venue") %></p>
        </div>

        <div class="card-footer">
          <a href="eventfullinfo.jsp?eventno=<%= resultSet.getString("title") %>" class="btn btn-info btn-sm" style="float: right;color: white;">View</a>
        
      

    <% if(s.equals("1")){ %>
    <!-- <div class="card-footer"> -->
    		<!-- <a href="Edevent.jsp?t=<%= resultSet.getString("title") %>"  class="btn btn-info btn-sm">Edit</a>  --> 	
    	<form method="post" action="Delevent.jsp">
    		<input type="hidden" id="uid" name="d1" value="<%= resultSet.getString("title") %>">
    		<input type="submit" value="Delete" class="btn btn-danger btn-sm">
    	</form>
    	
    
    <% } %>
    </div> 
    </div>
  	<!-- </div> -->
    </div>
   <% 
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
  
///////////////////////////////////
%>






    </div>
    
    
    
    
    
    <hr>
    
    
    
    
    
    
    
    
     <h5>Current Events</h5><br>
 
  <div class="row" style="background-color:white;">
  <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select title,date_format(date,'%d-%m-%Y'),info,brief,DAYNAME(date) AS day,venue,date_format(date,'%Y') as myyear,date_format(date,'%M') as mymonth,date_format(date,'%d') as mydate,DATE_FORMAT(date, '%M %d %Y') as maindate ,time,topic from events where CURDATE()>= date and CURDATE()<=enddate order by date desc limit 10";
resultSet = statement.executeQuery(sql);

while(resultSet.next()){
	//resultSet.getString("title");
	String s1 = resultSet.getString("title");
%>
    <div class="col-sm-3">         




	<div class="card mb-3">
          <div align="center" class="card-title zoom" style="background-color: SteelBlue;color: white;"> 
            <br>
            <p ><%=resultSet.getString("day") %></p>
            <h4 style="padding: 0px;font-size:30px;"><b> <%=resultSet.getString("mydate") %> </b></h4>
            <p><%=resultSet.getString("mymonth") %> <%=resultSet.getString("myyear") %></p>
            <br>

          </div>


        <div class="card-body">
          <h5 class="card-title" style="font-size:19px;"><i class="fa fa-calendar-o" style="font-size:14px;margin-right:9px;"></i><%= resultSet.getString("title") %></h5>
          <p style="font-size: 17px;"><%=resultSet.getString("maindate") %> - <%=resultSet.getString("time") %> </p>
          <p class="card-text" style="font-size: 17px;"> <%=resultSet.getString("venue") %></p>
        </div>

        <div class="card-footer">
          <a href="eventfullinfo.jsp?eventno=<%= resultSet.getString("title") %>" class="btn btn-info btn-sm" style="float: right;color: white;">View</a>
        
      

        
    <% if(s.equals("1")){ %>
    <!-- <div class="card-footer"> -->
    	<div>
    		<!-- <a href="Edevent.jsp?t=<%= resultSet.getString("title") %>"  class="btn btn-info btn-sm">Edit</a>  	
    	 --><form method="post" action="Delevent.jsp"><br>
    		<input type="hidden" id="uid" name="d1" value="<%= resultSet.getString("title") %>">
    		<input type="submit" value="Delete" class="btn btn-danger btn-sm">
    	</form>
    	
    	</div>
     
    <% } %>
    </div> 
    </div>
  	<!-- </div> -->
    </div>
   <% 
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
  
///////////////////////////////////
%>






    </div>
    <hr>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
     <h5>Past Events</h5><br>
 
  <div class="row" style="background-color:white;">
  <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select title,date_format(date,'%d-%m-%Y'),info,brief,DAYNAME(date) AS day,venue,date_format(date,'%Y') as myyear,date_format(date,'%M') as mymonth,date_format(date,'%d') as mydate,DATE_FORMAT(date, '%M %d %Y') as maindate ,time,topic from events where CURDATE()>enddate order by date desc limit 10";
resultSet = statement.executeQuery(sql);

while(resultSet.next()){
	//resultSet.getString("title");
	String s1 = resultSet.getString("title");
%>
    <div class="col-sm-3">         




	<div class="card mb-3">
          <div align="center" class="card-title zoom" style="background-color: Crimson;color: white;"> 
            <br>
            <p ><%=resultSet.getString("day") %></p>
            <h4 style="padding: 0px;font-size:30px;"><b> <%=resultSet.getString("mydate") %> </b></h4>
            <p><%=resultSet.getString("mymonth") %> <%=resultSet.getString("myyear") %></p>
            <br>

          </div>


        <div class="card-body">
          <h5 class="card-title" style="font-size:19px;"><i class="fa fa-calendar-o" style="font-size:14px;margin-right:9px;"></i><%= resultSet.getString("title") %></h5>
          <p style="font-size: 17px;"><%=resultSet.getString("maindate") %> - <%=resultSet.getString("time") %> </p>
          <p class="card-text" style="font-size: 17px;"> <%=resultSet.getString("venue") %></p>
        </div>

        <div class="card-footer">
          <a href="eventfullinfo.jsp?eventno=<%= resultSet.getString("title") %>" class="btn btn-info btn-sm" style="float: right;color: white;">View</a>
        
      


        
    <% if(s.equals("1")){ %>
    <!-- <div class="card-footer"> -->
    	<div>
    		<!-- <a href="Edevent.jsp?t=<%= resultSet.getString("title") %>"  class="btn btn-info btn-sm">Edit</a>  	
    	 --><form method="post" action="Delevent.jsp"><br>
    		<input type="hidden" id="uid" name="d1" value="<%= resultSet.getString("title") %>">
    		<input type="submit" value="Delete" class="btn btn-danger btn-sm">
    	</form>
    	
    	</div>
    
    <% } %>
    </div> 
    </div>
  	<!-- </div> -->
    </div>
   <% 
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
  
  
}
else
{
	out.print("<br><h4>You need to Login</h4>");	
}
///////////////////////////////////
%>






    </div>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
</div> 



</body>
</html>