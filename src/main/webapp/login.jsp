<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN </title>
<link rel="stylesheet" href="style.css">
</head>
<body>
		
<%@ include file="header.jsp" %>

<%
String email = request.getParameter("email");
String password = request.getParameter("password");

if(email != null && password != null){
    try{
        Class.forName("org.postgresql.Driver");

        Connection con = DriverManager.getConnection(
            "jdbc:postgresql://localhost:5432/mantashaparween",
            "mantashaparween",
            ""
        );

        String qry = "select * from donors where email=? and password=?";
        PreparedStatement ps = con.prepareStatement(qry);

        ps.setString(1,email);
        ps.setString(2,password);

        ResultSet rs = ps.executeQuery();

        if(rs.next()){
            session.setAttribute("email", email);
            response.sendRedirect("donorDashboard.jsp");
        }else{
            out.println("Invalid login");
        }

    }catch(Exception e){
        out.println(e);
    }
}
%>



<div class="form-container">

    <div class="form-card">
        <h2>Donor Login</h2>

       <form method="post">
    
    <label>Email:</label>
    <input type="email" name="email" required>

    <label>Password:</label>
    <input type="password" name="password" required>

    <button type="submit">Login</button>

</form>

    </div>

</div>
</body>
</html>
