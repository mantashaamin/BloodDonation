<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DELETE DONOR</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
		
<%@ include file="header.jsp" %>

<%
String id = request.getParameter("id");

try{
    Class.forName("org.postgresql.Driver");

    Connection con = DriverManager.getConnection(
    		 "jdbc:postgresql://localhost:5432/mantashaparween",
    		 "mantashaparween",
    		 ""
    		);
    

    String qry = "delete from donors where id=?";
    PreparedStatement ps = con.prepareStatement(qry);

    ps.setInt(1,Integer.parseInt(id));

    int row = ps.executeUpdate();

    if(row>0){
        out.println("<h3>Deleted Successfully</h3>");
    }

}catch(Exception e){
    out.println(e);
}
%>
</body>
</html>
