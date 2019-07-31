<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

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
%>

<jsp:include page="nav.jsp" />
   
    <% String s = request.getParameter("userid");
    
    String temp=s;
	for(int i=0;i<temp.length();i++)
	{
		char t = temp.charAt(i);
		t-=4;
		temp.replace(temp.charAt(i), t);
	}
	s=temp;
    
    %>
    
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
	String company1 = resultSet.getString("company");
	String lives1 = resultSet.getString("lives");
	String job1 = resultSet.getString("job");
	String bio1 = resultSet.getString("bio");
	String linkedin1 = resultSet.getString("linkedin");
	String fromwhere1 = resultSet.getString("fromwhere");
	String sessionid = (String)session.getAttribute("id");
	
	
	%>

  
   
   <div class="container">
  <br>

<!-- 1 -->
  <div class="row">
    <div class="col-sm-4" >
      <div class="card mb-3" style="box-shadow: 4px 5px 10px 2px #DCDCDC;background-color:#f5f5f0;">
        <div class="card-body">
      <br>
      <h5 align="center" style="font-size: 20px;">Professional Info</h5><br><br>
        <form method="get" action="updateproinfo.jsp">
          <div class="form-group">
            <input type="text" class="form-control fc-2" id="company" value="<%= company1 %>" name="company" placeholder="Update company...">
          </div>
          <div class="form-group">
            <input type="text" name="lives" class="fc-2 form-control" name="lives" value="<%= lives1 %>" placeholder="Update lives at...">
          </div>
          <div class="form-group">
            <input type="text" name="job" class="form-control fc-2" name="job" value="<%= job1 %>" placeholder="Update job...">
          </div>
          <div class="form-group">
            <input type="text" name="fromwhere" class="form-control fc-2" name="fromwhere" value="<%= fromwhere1 %>" placeholder="Update home...">
          </div>
          <div class="form-group">
            <input type="text" name="linkedin" class="form-control fc-2" name="linkedin" value="<%= linkedin1 %>" placeholder="Update linkedin...">
          </div>
          <input type="submit" class="btn btn-primary" value="Update">
        </form>
        </div>
        </div>
    </div>



<!-- 2 -->
    <div class="col-sm-4" >
      <div class="card mb-3" style="box-shadow: 4px 5px 10px 2px gray;background-color:#f5f5f0;" >
        <div class="card-body">
      <br>
      <h5 align="center" style="font-size: 20px;">Private Info</h5><br><br>

        <form method="post" action="bionskillsedit.jsp">
          <div class="form-group">
            <textarea rows="3" cols="35" name="bio" class="form-control" placeholder="Your Bio..."><%= bio1 %></textarea>
          </div>
          <div class="form-group">
            <h5 style="font-size: 16px;">YOUR SKILLS:</h5>
            <select class="form-control" name="sel1">
              <option value="Vue">Vue</option>
              <option value="Meteor">Meteor</option>
              <option value="Backbone">Backbone<option>
              <option value="Kraken">Kraken</option>
              <option value="Nodejs">NodeJs</option>
              <option value="Express">Express</option>
              <option value="Vanila">Vanilla<option>
              <option value="React">React</option>
              <option value="Angular">Angular</option>
              <option value="ML">ML<option>
              <option value="Cloud Computing">Cloud Computing</option>
              <option value="Blockchain">Blockchain</option>
            </select>
          </div>

          <div class="form-group">
            <select class="form-control" name="sel2">
              <option value="Vue">Vue</option>
              <option value="Meteor">Meteor</option>
              <option value="Backbone">Backbone<option>
              <option value="Kraken">Kraken</option>
              <option value="Nodejs">NodeJs</option>
              <option value="Express">Express</option>
              <option value="Vanila">Vanilla<option>
              <option value="React">React</option>
              <option value="Angular">Angular</option>
              <option value="ML">ML<option>
              <option value="Cloud Computing">Cloud Computing</option>
              <option value="Blockchain">Blockchain</option>
            </select>
          </div>

          <div class="form-group">
            <select class="form-control" name="sel3">
              <option value="Vue">Vue</option>
              <option value="Meteor">Meteor</option>
              <option value="Backbone">Backbone<option>
              <option value="Kraken">Kraken</option>
              <option value="Nodejs">NodeJs</option>
              <option value="Express">Express</option>
              <option value="Vanila">Vanilla<option>
              <option value="React">React</option>
              <option value="Angular">Angular</option>
              <option value="ML">ML<option>
              <option value="Cloud Computing">Cloud Computing</option>
              <option value="Blockchain">Blockchain</option>
            </select>
          </div>
          <br>

          <button type="submit" class="btn btn-primary">Update</button>
        </form>


</div></div>
    </div>



<!-- 3 -->
    <div class="col-sm-4">
      <div class="card mb-3" style="box-shadow: 4px 5px 10px 2px #DCDCDC ;background-color:#f5f5f0;">
        <div class="card-body"><br>
      <h5 align="center" style="font-size: 20px;">Change Password</h5><br><br>
      <form method="post" action="changepass.jsp">
        
        <div class="form-group">
            <input type="password" name="pass1" class="form-control fc-2" placeholder="Old password">
          </div>
          <div class="form-group">
            <input type="password" name="pass2" class="form-control fc-2" placeholder="New password">
          </div>
          <div class="form-group">
            <input type="password" name="pass3" class="form-control fc-2" placeholder="Confirm">
          </div>
          <input type="submit" value="Update" name="changepass" class="btn btn-info">

      </form>


    </div>

  </div>

</div></div></div>


<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

   