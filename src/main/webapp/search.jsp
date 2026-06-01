<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SEARCH </title>
<link rel="stylesheet" href="style.css">
</head>
<body>
			

<%@ include file="header.jsp" %>

<div class="page-container">

    <div class="form-card">
        <h2>Search Donor</h2>

        <form action="searchResult.jsp" method="post">

            <label>Blood Group:</label>
            <input type="text" name="blood" required>

            <label>City:</label>
            <input type="text" name="city" required>

            <button type="submit">Search</button>

        </form>
    </div>

</div>
</body>
</html>
