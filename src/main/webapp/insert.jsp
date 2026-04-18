<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		
<%@ include file="header.jsp" %>

<%
String name = request.getParameter("name");
String blood = request.getParameter("blood");
String city = request.getParameter("city");
String contact = request.getParameter("contact");
String email = request.getParameter("email");
String disease = request.getParameter("disease");

try{
    Class.forName("org.postgresql.Driver");

    Connection con = DriverManager.getConnection("jdbc:postgresql://192.168.1.17:5432/cse_db24", "24bcsi38", "24bcsi38");
    

    String qry = "insert into donors(name,blood,city,contact,email,disease) values(?,?,?,?,?,?)";
    PreparedStatement ps = con.prepareStatement(qry);

    ps.setString(1,name);
    ps.setString(2,blood);
    ps.setString(3,city);
    ps.setString(4,contact);
    ps.setString(5,email);
    ps.setString(6,disease);

    int row = ps.executeUpdate();

    if(row>0){
        out.println("<h3>Inserted Successfully</h3>");
    }

}catch(Exception e){
    out.println(e);
}
%>
</body>
</html>