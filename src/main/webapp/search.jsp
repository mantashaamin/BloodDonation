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

<h3>Search Donor</h3>

<form action="searchResult.jsp" method="post">
    Blood Group: <input type="text" name="blood"><br><br>
    City: <input type="text" name="city"><br><br>
    <button type="submit">Search</button>
</form>
</body>
</html>