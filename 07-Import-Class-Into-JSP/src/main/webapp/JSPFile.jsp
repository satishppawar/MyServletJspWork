<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>JSP File</title>
</head>
<body>
	<!--===================================================-->
	<!--PRINT DATE WITHOUT IMPORT-->
	<!--===================================================-->
	<%
	out.print(new java.util.Date());
	%>
	</br>

	<!--===================================================-->
	<!--PRINT DATE WITH IMPORT-->
	<!--===================================================-->
	<%@ page import="java.util.Date"%>
	<%
	out.print(new java.util.Date());
	%>
	</br>


	<!--===================================================-->
	<!--USER DEFINED CLASS IMPORT-->
	<!--===================================================-->
	
	<%@page import="demo.jsp.UserDefined,java.util.Date"%>
	<%
	out.print(new UserDefined().demo()+ " @ "+new Date());
	%>
</br>



</body>
</html>