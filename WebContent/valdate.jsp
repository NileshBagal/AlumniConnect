<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    
<%@ page import ="java.sql.*" %>
<%
    try{
    	String user="root";
    	String password = "";
        String cid1 = request.getParameter("cid");   
        String pwd1 = request.getParameter("pwd");
        /*Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/minipro", user, password);
        PreparedStatement pst = conn.prepareStatement("Select * from users where cid=? and pwd=?");
        pst.setString(1, cid1);
        pst.setString(2, pwd1);
        ResultSet rs = pst.executeQuery();                        
        if(rs.next())           
           out.println("Valid login credentials");        
        else
           out.println("Invalid login credentials");  */
           
        Class.forName("com.mysql.jdbc.Driver");
        Connection myConn = DriverManager.getConnection("JDBC:mysql://localhost:3306/minipro", "sagar", "Sagar@123");
        Statement myStmt = myConn.createStatement();

        ResultSet myRs = myStmt.executeQuery("Select * from users");
        if(myRs.next())           
            out.println("Valid login credentials");        
         else
            out.println("Invalid login credentials");
   }
   catch(Exception e){       
	   out.println(e.getMessage());
       //e.printStackTrace();     
   }      
%>