<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
    <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	
	
	<%
String currentPassword=request.getParameter("pass1");
String Newpass=request.getParameter("pass2");
String conpass=request.getParameter("pass3");
String uid = (String)session.getAttribute("id");
String connurl = "jdbc:mysql://localhost:3306/minipro";
Connection con=null;
String pass="";
int id=0;
try{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection(connurl, "sagar", "Sagar@123");
PreparedStatement st = con.prepareStatement("select * from users where pwd=?");
st.setString(1, currentPassword);
ResultSet rs=st.executeQuery();
while(rs.next()){
pass=rs.getString("pwd");
} 
if(pass.equals(currentPassword)){
	PreparedStatement st1 = con.prepareStatement("update users set pwd=? where cid=?");
	st1.setString(1, Newpass);
	st1.setString(2, uid);
int i=st1.executeUpdate();
response.sendRedirect("userinfo.jsp?userid="+uid+"&passwordChanged=1");
st1.close();
con.close();
}
else{
out.println("Invalid Current Password");
}
}
catch(Exception e){
out.println(e);
}
%>
	
	

</body>
</html>