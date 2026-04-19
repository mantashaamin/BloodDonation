<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SEARCH RESULT </title>
<link rel="stylesheet" href="style.css">
</head>
<body>
		<%@ page import="java.sql.*" %>
<%@ include file="header.jsp" %>

<h3>Search Results</h3>

<table>
<tr>
<th>ID</th><th>Name</th><th>Blood</th><th>City</th><th>Contact</th>
<th>Email</th><th>Disease</th>
</tr>

<%
String blood = request.getParameter("blood");
String city = request.getParameter("city");

try{
    Class.forName("org.postgresql.Driver");

    Connection con = DriverManager.getConnection(
        "jdbc:postgresql://localhost:5432/mantashaparween",
        "mantashaparween",
        ""
    );

    String qry = "select * from donors where blood=? and city=?";
    PreparedStatement ps = con.prepareStatement(qry);

    ps.setString(1, blood);
    ps.setString(2, city);

    ResultSet rs = ps.executeQuery();

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