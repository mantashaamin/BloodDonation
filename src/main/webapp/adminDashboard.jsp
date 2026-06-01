<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADMIN DASHBOARD</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
		
<body>

<%@ include file="header.jsp" %>

<%
String admin = (String)session.getAttribute("admin");

if(admin == null){
    response.sendRedirect("adminLogin.jsp");
}
%>

<div class="dashboard-container">

    <div class="dashboard-card">
        <h2>Admin Dashboard</h2>

        <%
        try{
            Class.forName("org.postgresql.Driver");

            Connection con = DriverManager.getConnection(
                "jdbc:postgresql://localhost:5432/mantashaparween",
                "mantashaparween",
                ""
            );

            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select count(*) from donors");

            if(rs.next()){
        %>
                <p><b>Total Donors:</b> <%= rs.getInt(1) %></p>
        <%
            }

            con.close();

        }catch(Exception e){
            out.println(e);
        }
        %>

        <p><b>Email:</b> admin@gmail.com</p>

        <div class="dashboard-actions">
            <a href="viewAllDonor.jsp" class="btn">View All Donors</a>
             
        </div>

    </div>

</div>

</body>
</html>
