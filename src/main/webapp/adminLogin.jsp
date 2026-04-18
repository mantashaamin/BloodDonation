<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
</head>
<body>
		<%@ include file="header.jsp" %>

<%
String email = request.getParameter("email");
String password = request.getParameter("password");

if(email != null && password != null){
    if(email.equals("admin@gmail.com") && password.equals("admin")){
        response.sendRedirect("adminDashboard.jsp");
    } else {
        out.println("<h3 style='color:red'>Invalid Credentials</h3>");
    }
}
%>

<form method="post">
    Email: <input type="email" name="email"><br><br>
    Password: <input type="password" name="password"><br><br>
    <button type="submit">Login</button>
</form>
</body>
</html>