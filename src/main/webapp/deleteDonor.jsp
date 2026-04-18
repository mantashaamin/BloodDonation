<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%@ page import="java.sql.*" %>
<%@ include file="header.jsp" %>

<%
String id = request.getParameter("id");

try{
    Class.forName("org.postgresql.Driver");

    Connection con = DriverManager.getConnection("jdbc:postgresql://192.168.1.17:5432/cse_db24", "24bcsi38", "24bcsi38");
    

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