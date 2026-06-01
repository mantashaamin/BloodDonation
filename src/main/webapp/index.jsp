<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INDEX PAGE</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<%@ include file="header.jsp" %>

<div class="main-container">

    <!-- LEFT -->
    <div class="left-box">
        <img src="b.jpeg" class="hero-img">

        <div class="content">
            <h1>Make a Difference.<br>Become a Donor Today.</h1>

            <p>
                Join our mission to help save lives through blood donation.
                Your contribution can make a real impact.
            </p>

            <div class="btn-group">
                <a href="login.jsp" class="btn">Donor Login</a>
                <a href="addDonor.jsp" class="btn">Register Donor</a>
            </div>
        </div>
    </div>

    <!-- RIGHT -->
    <div class="right-box">
        <img src="logo.png" class="admin-img">

        <h2>System Administration</h2>

        <a href="adminLogin.jsp" class="btn admin-btn">Admin Login</a>
    </div>

</div>

</body>
</html>
