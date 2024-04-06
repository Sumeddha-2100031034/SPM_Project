<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Store</title>
</head>
<body>
<%
String id = request.getParameter("idno");
String name = request.getParameter("user[name]");
String password = request.getParameter("user[password]");
String checkpass = request.getParameter("user[password2]");
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","admin");
Statement stmt = conn.createStatement();
//stmt.executeUpdate("create table credentials(id number(20),name varchar(30),password varchar(50),confirm_password varchar(50))");
PreparedStatement ps = conn.prepareStatement("insert into credentials(?,?,?,?)");
ps.setString(1,id);
ps.setString(2, name);
ps.setString(3, password);
ps.setString(4, checkpass);
ps.execute();
out.println("Executed");
conn.close();
}
catch(Exception e)
{
	e.printStackTrace();
}

%>
</body>
</html>