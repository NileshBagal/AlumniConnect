<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
    <jsp:include page="nav.jsp" />
    
    
    

<%
	int cnt = 0;
	String sel11 = request.getParameter("thename").toString();
	//out.print(sel1+sel2+sel3);
	String driver1 = "com.mysql.jdbc.Driver";
	String connectionUrl1 = "jdbc:mysql://localhost:3306/";
	String database1 = "minipro";
	String userid1 = "sagar";
	String password1 = "Sagar@123";
	try {
	Class.forName(driver1);
	} catch (ClassNotFoundException e) {
	e.printStackTrace();
	}
	Connection connection1 = null;
	Statement statement1 = null;
	ResultSet resultSet1 = null;
	String adm1 = "1";
	String sql ="";
	String sel1122 = sel11;
	sel11 = "%"+sel1122+"%";
%>

<% 

response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
if((String)session.getAttribute("id")!=null){ %>



    
    
    
    
    
    

<div class="container">
<br>

<!--
<label>Filter by Name:</label>
<form class="form-inline">
    <input class="form-control mr-sm-2" type="search" placeholder="Filter by name" aria-label="Search" style="width: 100%;" id="inputname">
</form>
 -->

 <%
	String sel1 = request.getParameter("thename").toString();
	//out.print(sel1+sel2+sel3);
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
	String adm = "1";
%>

<% 

response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
if((String)session.getAttribute("id")!=null){ %>


<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
PreparedStatement st1=connection.prepareStatement("");
int c = 0;



	//sql="select * from users";	
	st1 = connection.prepareStatement("SELECT * FROM users WHERE name LIKE '"+sel11+"'");
	//st1.setString(1, sel1);


resultSet = st1.executeQuery();
%>

TAGS : <span class="badge badge-primary">Name : <%= sel1 %> </span>
<hr><br>

<%while(resultSet.next()){
	c++;
%>
<div class="col-sm-3" style="margin-bottom:20px;">
  <div class="card" > <div class="card-title" ><img class="mr-2" src="user.png" style="height: 50px;width: 50px;margin-top:0px;"> <a href="userinfo.jsp?userid=<%= resultSet.getString("cid") %>" class="text-dark"> <%= resultSet.getString("name") %> </a><br><label style="margin-left:70px;color:gray;font-size:15px;">  Works at <%= resultSet.getString("company") %> </label>   <br><label style="margin-left:70px;color:gray;font-size:15px;">  From : <%= resultSet.getString("batch") %> </label>     </div></div>
</div>
<%
}
if(c==0)
{
	out.print("<h5>No Results Found</h5>");
}
%>

<%
connection.close();
} catch (Exception e) {
e.printStackTrace();
out.print(e.getMessage());
}
%>


<% }else{ %>
	
	<h4>Login to Check the Content</h4>
	
<% }
}%>

</div>

</body>
</html>