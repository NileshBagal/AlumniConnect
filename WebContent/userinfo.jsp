<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@ page import="java.io.*" %> 

<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "minipro";
String userid = "sagar";
String password = "Sagar@123";
InputStream sImage;
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<jsp:include page="nav.jsp" />
   
    <% String s = request.getParameter("userid");%>
    
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from users where cid='"+s+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
	String cid1 = resultSet.getString("cid");
	String name = resultSet.getString("name");
	String batch = resultSet.getString("batch");
	String branch = resultSet.getString("branch");
	String email = resultSet.getString("email");
	String cmp = resultSet.getString("company");
	String lvs = resultSet.getString("lives");
	String jb = resultSet.getString("job");
	String linkedin1 = resultSet.getString("linkedin");
	String fromwhere1 = resultSet.getString("fromwhere");
	String sessionid = (String)session.getAttribute("id");
	
	
	%>

  
   
   <div class="container-fluid" style="padding: 10px;font-size:16px;	">
    
    <div class="row">
      <div class="col-md-3" style="background-color: white; height: 650px;" id="madiv">
        
        
           <!-- <img src="tig.jpg" style="margin-top: 30px;margin-left: 60px; width: 180px;height:170px;border-radius:50%;">--><br><br><br> 
			<%//out.print("<img style='margin-top: 30px;margin-left: 60px; width: 170px;height:150px;border-radius:50%;' src='data:image/png;base64,"+ Base64.getEncoder().encodeToString(resultSet.getBytes(15))+"'/>"); %>
			<% //if(sessionid.equals(cid1)){ %>
				<!-- <form name="frm" action="Uploadprofile.jsp" enctype="multipart/form-data" method="post">
					 <input type="file" name="uProperty"/> <br>
					 <input type="submit" name="goUpload" value="Upload" />
				</form> -->
			<% //} %>
			
          <!-- info -->
          <ul class="list-group" style="font-family: 'Roboto', serif;font-size: 14px;">
          	  <% if(jb!=""){ %>
              <li class="list-group-item list-group-item"><span class="glyphicon glyphicon-map-marker" style="margin-right: 0px;"></span><i class="fa fa-code" style="margin-right: 5px;"></i> Works as: <%= resultSet.getString("job") %> </li>
              <% }
          	  //else{
          		  
          	  //}
          	  %>
          	  <% if(cmp!=""){ %>
              <li class="list-group-item list-group-item"><span class="glyphicon glyphicon-scale" ></span><i class="fa fa-hashtag" style="margin-right: 5px;"></i> Works at : <%= resultSet.getString("company") %> </li>
              <% }
          	  else{}
          	  %>
              <% if(batch!=""){ %>
              <li class="list-group-item list-group-item"><span class="glyphicon glyphicon-link"></span><i class="fa fa-graduation-cap" style="margin-right: 5px;"></i>From batch : <%= resultSet.getString("batch") %> </li>
              <% } else{} %>
              <% if(branch!=""){ %>
              <li class="list-group-item list-group-item"><span class="glyphicon glyphicon-link"></span><i class="fa fa-group" style="margin-right: 5px;"></i> Branch : <%= resultSet.getString("branch") %> </li>
              <% } %>
              <% if(lvs!=""){ %>
              <li class="list-group-item list-group-item"><span class="glyphicon glyphicon-link"></span><i class="fa fa-home" style="margin-right: 5px;"></i> Lives at : <%= resultSet.getString("lives") %> </li>
              <% } %>
              <% if(fromwhere1!=""){ %>
              <li class="list-group-item list-group-item"><span class="glyphicon glyphicon-link"></span><i class="fa fa-home" style="margin-right: 5px;"></i> From : <%= resultSet.getString("fromwhere") %> </li>
              <% } %>
              
              <% if(email!=""){ %>
              <li class="list-group-item list-group-item"><span class="glyphicon glyphicon-link"></span><i class="fa fa-plus-circle" style="margin-right: 5px;"></i> Email at : <%= resultSet.getString("email") %> </li>
              <% } %>
          </ul>
			
      </div>

      <div class="col-md-6">
      <br>
      <% if(sessionid.equals(cid1)){ %>
      <a href="editprofile.jsp?userid=<%= sessionid %>" style="float:right;color:#20B2AA;"> <i class="fa fa-edit" style="margin-right: 0px;"></i> Edit</a>
      <% } %>
        <h3 style="margin-left: 10px; font-family: 'Rubik', sans-serif;"> <%= resultSet.getString("name") %> </h3>   <!-- name -->
        	

        
        <hr><br>
        
        <div class="card">
          <div class="card-body">BIO : <%= resultSet.getString("bio") %></div>
        </div>
        
        
        <% if(sessionid.equals(cid1)){ %>
        <br><br>
        <div class="card">
          <div class="card-header" id="myflip3" style="background-image: linear-gradient(-90deg,Tomato, DarkOrange	);color: white;"><i class="fa fa-plus" style="font-size:16px;margin-right: 8px;"></i>Click to Add a Post</div>
          <div class="card-body" id="mypanel3">
            
            <form method="post" action="addaPost.jsp?thecid=<%= resultSet.getString("cid") %>">
				            	
            	<input type="text" style="width:80%;display:inline-block;" class="form-control" name="val" placeholder="detail">
            	<button class="btn btn-outline-warning " style="display:inline-block;margin-bottom:4px;">Post</button>
            </form>

          </div>
        </div>
        <% } %>
        <br><hr><br>
        
        
        
        
        <!-- start of profile -->
        <p><b>Profile Updates</b></p>
        <% 
        try {
			PreparedStatement st = connection.prepareStatement("select pid,postcid,post,date_format(date,'%d/%m/%y') as mydate from posts where postcid=? order by post desc,date desc");
			st.setString(1, s);
			ResultSet rs1 = st.executeQuery();
			
		while(rs1.next()){
        %>
        <div class="card">
          <div class="card-header"  style="background-image: linear-gradient(-90deg,DarkCyan, MediumAquamarine	);color: white;">
          <i class="fa fa-clock-o" style="font-size:16px;margin-right: 8px;"></i>Posted on  <%= rs1.getString("mydate") %>  <% if(sessionid.equals(cid1)){  %>  <div style="float:right;"><a href="deletepost.jsp?val=<%= rs1.getString("pid" )%>&val2=<%= rs1.getString("postcid" )%>"> <img src="deleteicon.png" class="zoom1" style="width:20px;height:20px;"> </a></div> <% } %> 
          </div>
          
          <div class="card-body" style="background-color:#f5f5f0;">
       
            <%= rs1.getString("post") %>

          </div>
        </div>
        <br>  
        
        <% 
		}
		}
		catch(Exception e){
			out.print(e.getMessage());
			e.printStackTrace();
		} %>      
        

      </div>
		<!-- end of profile updates -->
		
		
		<!-- start of skills -->
      <div class="col-md-3" style="background-color: white; height: 700px;">
        <br><br><br><br>
        <div class="card">

          <div class="card">
              <div class="card-header" style="background-color: LightSeaGreen ;color: white;">
                Top 3 Skills
              </div>
              <ul class="list-group list-group-flush">
                <li class="list-group-item"><%= resultSet.getString("skill1") %> </li>
                <li class="list-group-item" style="background-color:#f5f5f0;"><%= resultSet.getString("skill2") %> </li>
                <li class="list-group-item"><%= resultSet.getString("skill3") %> </li>
              </ul>
            </div>
          </div>
			<br>
			
			<% if(linkedin1!=""){ %>
			<div class="card">
				<div class="card-header" style="background-color: LightSeaGreen ;color: white;">
                Follow on LinkedIn<i class="fa fa-level-down" style="font-size:24px"></i>
              </div>
              <div class="card-body">
              	<a href="<%= linkedin1 %>" style="color:LightSeaGreen;" style="margin-left:10px;"> <%= linkedin1 %></a>
              </div>
			</div>
			<% } %>
      </div>
      <!-- end of skills -->

    </div>

  </div>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

</body>
</html>
   