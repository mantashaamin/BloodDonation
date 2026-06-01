<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADD DONOR</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
		
<%@ include file="header.jsp" %>

<div class="form-container">

    <div class="form-card">
        <h2>Register Donor</h2>

        <form action="insert.jsp" method="post">

            <label>Name:</label>
            <input type="text" name="name" required>

            <label>Blood Group:</label>
            <input type="text" name="blood" required>

            <label>City:</label>
            <input type="text" name="city" required>

            <label>Contact:</label>
            <input type="text" name="contact" required>

            <label>Email:</label>
            <input type="email" name="email" required>

            <label>Password:</label>
            <input type="password" name="password" required>

            <label>Disease:</label>
            <input type="text" name="disease">

            <button type="submit">Register</button>

        </form>

    </div>

</div>
</body>
</html>
