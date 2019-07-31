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
try{
String sel1=request.getParameter("sel1");
out.print(sel1);//
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select name from users where batch="+sel1;
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
String city_name=resultSet.getString("name");
i++;
out.println(city_name);
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>