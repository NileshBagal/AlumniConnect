<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
    <jsp:include page="nav.jsp" />
  
  
  
  
  
  
  
  <%
  int cnt=0;
 	int counter1 = 0;
	String sel11 = request.getParameter("sel1").toString();
	String sel21 = request.getParameter("sel2").toString();
	String sel31 = request.getParameter("sel3").toString();
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
%>
<%  if((String)session.getAttribute("id")!=null){ %>



<% try{
connection1 = DriverManager.getConnection(connectionUrl1+database1, userid1, password1);
PreparedStatement st1=connection1.prepareStatement("");




String sql1 ="";
if(!sel11.equals("All") && sel21.equals("All") && sel31.equals("All"))
{
	//sql="select * from users";	
	st1 = connection1.prepareStatement("select cid,name,company,batch,count(*) as thecount from users where branch=? and cid!=? group by cid");
	st1.setString(1, sel11);
	st1.setString(2, adm1);
}
else if(sel11.equals("All") && !sel21.equals("All") && sel31.equals("All"))
{
	st1 = connection1.prepareStatement("select cid,name,company,batch,count(*) as thecount from users where batch=? and cid!=? group by cid");
	st1.setString(1, sel21);
	st1.setString(2, adm1);
	//sql="select * from users where batch="+sel2;		
}
else if(sel11.equals("All") && sel21.equals("All") && !sel31.equals("All"))
{
	st1 = connection1.prepareStatement("select cid,name,company,batch,count(*) as thecount from users where company=? and cid!=? group by cid");
	st1.setString(1, sel31);
	st1.setString(2, adm1);
	//sql="select * from users where branch="+sel1;
}
else if(!sel11.equals("All") && !sel21.equals("All") && sel31.equals("All"))
{
	st1 = connection1.prepareStatement("select cid,name,company,batchcount(*) as thecount from users where branch=? and batch=? and cid!=? group by cid");
	st1.setString(1, sel11);
	st1.setString(2, sel21);
	st1.setString(3, adm1);
	//sql="select * from users where branch="+sel1;
}
else if(!sel11.equals("All") && sel21.equals("All") && !sel31.equals("All"))
{
	st1 = connection1.prepareStatement("select cid,name,company,batch,count(*) as thecount from users where branch=? and company=? and cid!=? group by cid");
	st1.setString(1, sel11);
	st1.setString(2, sel31);
	st1.setString(3, adm1);
	//sql="select * from users where branch="+sel1;
}
else if(sel11.equals("All") && !sel21.equals("All") && !sel31.equals("All"))	///////
{
	st1 = connection1.prepareStatement("select cid,name,company,batch,count(*) as thecount from users where batch=? and company=? and cid!=? group by cid");
	st1.setString(1, sel21);
	st1.setString(2, sel31);
	st1.setString(3, adm1);
	//sql="select * from users where branch="+sel1+" and batch="+sel2;
}
else if(!sel11.equals("All") && !sel21.equals("All") && !sel31.equals("All"))
{
	st1 = connection1.prepareStatement("select cid,name,company,batch,count(*) as thecount from users where branch=? and batch=? and company=? and cid!=? group by cid");
	st1.setString(1, sel11);
	st1.setString(2, sel21);
	st1.setString(3, sel31);
	st1.setString(4, adm1);
	//sql="select * from users where branch="+sel1+" and batch="+sel2;
}
else if(sel11.equals("All") && sel21.equals("All") && sel31.equals("All"))
{
	st1 = connection1.prepareStatement("select cid,name,company,batch,count(*) as thecount from users where cid!=? group by cid");
	st1.setString(1, adm1);
	//sql="select * from users where branch="+sel1+" and batch="+sel2;
}


resultSet1 = st1.executeQuery();

%>
<%while(resultSet1.next()){
	cnt++;
%>
<%
}
connection1.close();
} catch (Exception e) {
e.printStackTrace();
out.print(e.getMessage()+" ye");
}
%>


<% } %>
  
<!-- /////////////////////////////// -->
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
    

<div class="container">
<br>




 <%
 	int counter = 0;
	String sel1 = request.getParameter("sel1").toString();
	String sel2 = request.getParameter("sel2").toString();
	String sel3 = request.getParameter("sel3").toString();
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
PreparedStatement st=connection.prepareStatement("");




String sql ="";
if(!sel1.equals("All") && sel2.equals("All") && sel3.equals("All"))
{
	//sql="select * from users";	
	st = connection.prepareStatement("select cid,name,company,batch,count(*) as thecount from users where branch=? and cid!=? group by cid");
	st.setString(1, sel1);
	st.setString(2, adm);
}
else if(sel1.equals("All") && !sel2.equals("All") && sel3.equals("All"))
{
	st = connection.prepareStatement("select cid,name,company,batch,count(*) as thecount from users where batch=? and cid!=? group by cid");
	st.setString(1, sel2);
	st.setString(2, adm);
	//sql="select * from users where batch="+sel2;		
}
else if(sel1.equals("All") && sel2.equals("All") && !sel3.equals("All"))
{
	st = connection.prepareStatement("select cid,name,company,batch,count(*) as thecount from users where company=? and cid!=? group by cid");
	st.setString(1, sel3);
	st.setString(2, adm);
	//sql="select * from users where branch="+sel1;
}
else if(!sel1.equals("All") && !sel2.equals("All") && sel3.equals("All"))
{
	st = connection.prepareStatement("select cid,name,company,batchcount(*) as thecount from users where branch=? and batch=? and cid!=? group by cid");
	st.setString(1, sel1);
	st.setString(2, sel2);
	st.setString(3, adm);
	//sql="select * from users where branch="+sel1;
}
else if(!sel1.equals("All") && sel2.equals("All") && !sel3.equals("All"))
{
	st = connection.prepareStatement("select cid,name,company,batch,count(*) as thecount from users where branch=? and company=? and cid!=? group by cid");
	st.setString(1, sel1);
	st.setString(2, sel3);
	st.setString(3, adm);
	//sql="select * from users where branch="+sel1;
}
else if(sel1.equals("All") && !sel2.equals("All") && !sel3.equals("All"))	///////
{
	st = connection.prepareStatement("select cid,name,company,batch,count(*) as thecount from users where batch=? and company=? and cid!=? group by cid");
	st.setString(1, sel2);
	st.setString(2, sel3);
	st.setString(3, adm);
	//sql="select * from users where branch="+sel1+" and batch="+sel2;
}
else if(!sel1.equals("All") && !sel2.equals("All") && !sel3.equals("All"))
{
	st = connection.prepareStatement("select cid,name,company,batch,count(*) as thecount from users where branch=? and batch=? and company=? and cid!=? group by cid");
	st.setString(1, sel1);
	st.setString(2, sel2);
	st.setString(3, sel3);
	st.setString(4, adm);
	//sql="select * from users where branch="+sel1+" and batch="+sel2;
}
else if(sel1.equals("All") && sel2.equals("All") && sel3.equals("All"))
{
	st = connection.prepareStatement("select cid,name,company,batch,count(*) as thecount from users where cid!=? group by cid");
	st.setString(1, adm);
	//sql="select * from users where branch="+sel1+" and batch="+sel2;
}


resultSet = st.executeQuery();
resultSet1 = resultSet;
int c=0;
%>


<br><h5><%= cnt %> alumni's found : </h5>
TAGS : <span class="badge badge-primary">Branch : <%= sel1 %> </span>
<span class="badge badge-primary">Batch : <%= sel2 %> </span>
<span class="badge badge-primary">Company : <%= sel3 %> </span>
<hr><br>

<div class="row">

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
connection.close();
} catch (Exception e) {
e.printStackTrace();
out.print(e.getMessage()+" ye");
}
%>


<% }else{ %>
	
	<h4>Login to Check the Content</h4>
	
<% } %>
</div>
</div>

</body>
</html>