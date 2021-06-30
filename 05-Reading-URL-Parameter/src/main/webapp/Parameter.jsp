<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Parameter JSP Demo</title>
</head>
<body>
	<%
	out.println("Parameter JSP Demo :: param1 value is "
			+ request.getParameter("param1"));

	out.println("Parameter JSP Demo :: param2 value is "
			+ request.getParameter("param2"));
	%>
</body>
</html>