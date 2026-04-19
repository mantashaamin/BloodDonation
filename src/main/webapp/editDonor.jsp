<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EDIT DONOR</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
		
<%@ include file="header.jsp" %>

<%
String id = request.getParameter("id");
%>

<form action="updateDonor.jsp" method="post">
<input type="hidden" name="id" value="<%=id%>">

Name: <input type="text" name="name"><br><br>
Blood: <input type="text" name="blood"><br><br>
City: <input type="text" name="city"><br><br>
Contact: <input type="text" name="contact"><br><br>

<button type="submit">Update</button>
</form>
</body>
</html>