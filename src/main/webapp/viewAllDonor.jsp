%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>VIEW ALL DONOR</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
		
<%@ include file="header.jsp" %>

<h2 class="page-title">All Donors</h2>

<div class="table-container">

<table class="donor-table">

<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Blood</th>
    <th>City</th>
    <th>Contact</th>
    <th>Email</th>
    <th>Disease</th>
    <th>Edit</th>
    <th>Delete</th>
</tr>

<%
try {
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

    <!-- EDIT -->
   
    <!-- EDIT -->
    <td>
        <a href="editDonor.jsp?id=<%= rs.getInt(1) %>" class="edit-btn">Edit</a>
    </td>

    <!-- DELETE -->
    <td>
        <a href="deleteDonor.jsp?id=<%= rs.getInt(1) %>" 
           class="delete-btn"
           onclick="return confirm('Are you sure?')">
           Delete
        </a>
    </td>
</tr>

<%
    }

    con.close();

}catch(Exception e){
    out.println(e);
}
%>

</table>

</div>

</body>
</html>
