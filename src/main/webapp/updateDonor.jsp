<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UPDATE DONOR</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
		<%@ page import="java.sql.*" %>

<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String blood = request.getParameter("blood");
String city = request.getParameter("city");
String contact = request.getParameter("contact");

try{
Class.forName("org.postgresql.Driver");

Connection con = DriverManager.getConnection(
"jdbc:postgresql://localhost:5432/mantashaparween",
"mantashaparween",
""
);

String qry = "update donors set name=?,blood=?,city=?,contact=? where id=?";
PreparedStatement ps = con.prepareStatement(qry);

ps.setString(1,name);
ps.setString(2,blood);
ps.setString(3,city);
ps.setString(4,contact);
ps.setInt(5,Integer.parseInt(id));

int row = ps.executeUpdate();

if(row>0){
    out.println("Updated Successfully");
}

}catch(Exception e){
out.println(e);
}
%>
</body>
</html>