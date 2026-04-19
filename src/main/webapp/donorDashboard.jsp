<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DONOR DASHBOARD</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
		
<%@ include file="header.jsp" %>

<%
String email = (String)session.getAttribute("email");

if(email == null){
    response.sendRedirect("login.jsp");
}
%>

<h3>Donor Dashboard</h3>

<table>
<tr><th>Name</th><th>Blood</th><th>City</th><th>Contact</th><th>Email</th><th>Disease</th></tr>

<%
try{
    Class.forName("org.postgresql.Driver");

    Connection con = DriverManager.getConnection(
        "jdbc:postgresql://localhost:5432/mantashaparween",
        "mantashaparween",
        ""
    );

    String qry = "select * from donors where email=?";
    PreparedStatement ps = con.prepareStatement(qry);

    ps.setString(1,email);

    ResultSet rs = ps.executeQuery();

    while(rs.next()){
%>
<tr>
<td><%= rs.getString(2) %></td>
<td><%= rs.getString(3) %></td>
<td><%= rs.getString(4) %></td>
<td><%= rs.getString(5) %></td>
<td><%= rs.getString(6) %></td>
<td><%= rs.getString(7) %></td>
</tr>
<%
    }
}catch(Exception e){
    out.println(e);
}
%>

</table>
</body>
</html>