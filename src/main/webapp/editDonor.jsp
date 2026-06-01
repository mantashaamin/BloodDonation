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

<div style="text-align:center; margin-top:50px;">

    <div style="display:inline-block; padding:20px; border:1px solid #ccc; border-radius:10px;">

        <form action="updateDonor.jsp" method="post">

            <input type="hidden" name="id" value="<%=id%>">

            Name: <br>
            <input type="text" name="name"><br><br>

            Blood: <br>
            <input type="text" name="blood"><br><br>

            City: <br>
            <input type="text" name="city"><br><br>

            Contact: <br>
            <input type="text" name="contact"><br><br>

            <button type="submit">Update</button>

        </form>

    </div>

</div>

</body>
</html>
