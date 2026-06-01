<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Donor Home</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
		<%@ page import="java.sql.*" %>
<%@ include file="header.jsp" %>


<div class="container">

    
    <div class="card">

        <h2 class="title">Donor Dashboard</h2>

        
        <div class="dashboard-links">

    <div class="box">
        <a href="addDonor.jsp" class="btn">+ Add Donor</a>
    </div>

    <div class="box">
        <a href="viewDonor.jsp" class="btn">👤 View Profile</a>
    </div>

    <div class="box">
        <a href="search.jsp" class="btn">🔍 Search Donor</a>
    </div>

</div>

    </div>

</div>

</body>
</html>
