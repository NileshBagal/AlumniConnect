<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>

    <jsp:include page="nav.jsp" />


<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/minipro", "sagar", "Sagar@123");
String eventno = request.getParameter("eventno");

PreparedStatement st = conn.prepareStatement("select title,date,info,brief,venue,time,topic,date_format(date,'%d/%m/%Y') as thedate,date_format(enddate,'%d/%m/%Y') as theenddate from events where title=?");
st.setString(1, eventno);
ResultSet resultSet = null;
resultSet = st.executeQuery();
int eid=0;
String t="";
while(resultSet.next()){
	t = resultSet.getString("title");
%>

<div class="container-fluid" style="font-family: 'Roboto', sans-serif;background-color:#f5f5f0;">

  <div class="jumbotron" style="padding: 15px;color: white;background-image: linear-gradient(to right, MediumSpringGreen  , SeaGreen  );">
    
    <h3><b><%= resultSet.getString("title") %></b></h3>
    <p><i class="fa fa-calendar" style="font-size:20px;margin-right: 8px;"></i><%= resultSet.getString("thedate") %></p>

  </div>  

  <div class="row">
    
    <div class="col-sm-8">
      

      <div class="card">
        <div class="card-header" style="background-color: white;">Details</div>
        <div class="card-body" style="font-size: 15px;color: gray;">
          

		  <%= resultSet.getString("info") %>
          


        </div> 
        <div class="card-footer" style="font-size: 15px;color: gray;background-color: white;">
          
          <%= resultSet.getString("brief") %>

        </div>
      </div>


    </div>



    <div class="col-sm-4">
      
        <div class="card" style="color: gray;font-size: 15px;">
          <div class="card-body">
              <i class="fa fa-map-marker" style="font-size:15px;margin-right: 5px;"></i>
              <label style="color: black;">LOCATION</label>
              <p>
                <%= resultSet.getString("venue") %>
              </p>
              <br>
              <i class="fa fa-clock-o" style="font-size:15px;margin-right: 5px;"></i>
              <label style="color: black;">TIME</label>
              <p>
                Starts at <%=resultSet.getString("time") %> IST on <%=resultSet.getString("thedate") %><br>
                Ends at <%=resultSet.getString("theenddate") %>
              </p>

          </div> 
        </div>
        <br>

        <div class="card" style="color: gray;font-size: 16px;padding: 10px;">
          
          <div id="flip123"><p>Click to invite a friend</p></div>
<div id="panel123">
  
   <form action="indexsendmail.jsp">
    <div class="form-group">
      <input type="email" name="email" placeholder="Email of your friend" class="form-control form-control-sm">
    </div>
    <button type="submit" class="btn btn-outline-success btn-sm">Invite</button>
  </form>

</div>

        </div>

    </div>



  </div>
  
  <br>
  <!-- comments-->
  <div class="row">
  	
  	<div class="col-sm-8">
  		
  		<div class="card">
		  <div class="card-body">
		  
		  	<h5 style="font-size:18px;">Comments :- </h5><hr>
		  	
		  	
		  	<!-- input comment -->
		  	
		  	<form method="post" action="addAComment.jsp">
		  	<input type="hidden" id="thisField" name="hddn" value=" <%= resultSet.getString("title") %> ">
				  <div class="form-group">
				    <textarea class="form-control" name="txta" rows="2" cols="10" style="display:inline-block;width:50%;" placeholder="add a comment..."></textarea>
				  </div>
				  
				  <input value="comment" type="submit" class="btn btn-sm" style="background-image: linear-gradient(to bottom right, LightSeaGreen, PaleGreen);color:white;"></input>
			</form>
		   
		  
		  <hr>
		  
	<% } conn.close();%>	  
			
  	
  	
  	<!-- show comments -->
  	<%
  	
Connection conn1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/minipro", "sagar", "Sagar@123");
	String t1=""+t;
	PreparedStatement st1 = conn1.prepareStatement("select * from comments where eventkey=? order by date desc");
	st1.setString(1, t1);
	ResultSet resultSet1 ;
	resultSet1 = st1.executeQuery();
  	while(resultSet1.next()){
  	
  	%>
  	
  	
  	
  	<div class="card" style="width:90%;">
  	
  	  <div class="card-body" style="padding:6px ;font-size:14px;box-shadow: 5px 10px 18px #DCDCDC;"><label style="float:right;padding-right:10px;"><%= resultSet1.getString("date") %> </label><img src="profiles.png" style="width: 30px;margin-right:4px;"><b><%= resultSet1.getString("name") %> </b>
	   <br> <br><p style="margin-left:50px;"><%= resultSet1.getString("info") %></p>  </div>
	</div><br>
	
	
  	
  	<% } %>
  	
  	
			  
		  
		  </div> 
		  
		  
		  
		  
		  
		</div>
  	
  	
  	
  		
  	</div>
  	
  	
  </div>




<%
/*
	Connection conn1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/minipro", "sagar", "Sagar@123");
	
	PreparedStatement st1 = conn1.prepareStatement("select * from comments where eventkey=?");
	st1.setString(1, thetitle);
	ResultSet resultSet1 = null;
	resultSet1 = st1.executeQuery();
*/
%>


</div>

</body>
</html>