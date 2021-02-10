<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>test1</title>
</head>
<body>
<h2>Testing JSP</h2>
<!-- 1. Working of JSP code -->
<% for(int i=0;i<5;i++){ %>
	<br/>The value of i is: <%= i %>
<%} %>
</body>
</html>