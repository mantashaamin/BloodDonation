<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>VIEW DONOR</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
		
<%@ include file="header.jsp" %>

<h3>Donor List</h3>

<table>
<tr>
<th>ID</th><th>Name</th><th>Blood</th><th>City</th><th>Contact</th>
<th>Email</th><th>Disease</th><th>Action</th>
</tr>

<%
try{
    

    Class.forName("org.postgresql.Driver");
    Connection con = DriverManager.getConnection(
    		 "jdbc:postgresql://localhost:5432/mantashaparween",
    		 "mantashaparween",
    		 ""
    		);

    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery("select * from donors");

    while(rs.next()){
%>
<tr>
<td><%= rs.getInt(1) %></td>
<td><%= rs.getString(2) %></td>
<td><%= rs.getString(3) %></td>
<td><%= rs.getString(4) %></td>
<td><%= rs.getString(5) %></td>
<td><%= rs.getString(6) %></td>
<td><%= rs.getString(7) %></td>
<td>
<a href="deleteDonor.jsp?id=<%=rs.getInt(1)%>">Delete</a>
<a href="editDonor.jsp?id=<%=rs.getInt(1)%>">Edit</a>
</td>
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
