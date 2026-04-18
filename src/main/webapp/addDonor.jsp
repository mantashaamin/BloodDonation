<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%@ include file="header.jsp" %>

<form action="insert.jsp" method="post">
Name: <input type="text" name="name"><br><br>
Blood Group: <input type="text" name="blood"><br><br>
City: <input type="text" name="city"><br><br>
Contact: <input type="text" name="contact"><br><br>
Email: <input type="email" name="email"><br><br>
Disease: <input type="text" name="disease"><br><br>

<button type="submit">Submit</button>
</form>
</body>
</html>