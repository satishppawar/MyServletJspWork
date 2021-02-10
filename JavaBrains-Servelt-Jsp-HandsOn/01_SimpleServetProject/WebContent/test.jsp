<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Testing JSP</h2>
<!-- 1. Writing the JAVA code -->
<%
	int i=1;
	int j=2;
	int k;
	k=i+j;
	out.print("Value of K is: "+k);
%>
</br>
The value of K is :<%=k %>
</br>
The value of K is :<%=34 %>
</br>
The value of K is :<%=3+4 %>
</br>
Using Declaration tag
<%!
	int add(int a ,int b){
		return a+b;
	}
%>
</br>
<% 
k=add(1234,5678); 
%>
The value of add(1234+5678) is: <%=k%>
</body>
</html>