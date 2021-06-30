<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello JSP</title>
</head>
<body>
	<h3>Hello JSP</h3>

	<!-- Demo of JSP Declaration-->
	<%!public int age = 20;%>

	<!-- Demo of JSP Expression Element-->
	<%="Hello! This is JSP expression element. And age is " + age%>

	</br>
	<!-- Demo of JSP Declaration and JSP Expression Element-->
	<%=" Name is " + new String("Satish")%>
	</br>
	<%="Salary is " + 1000 * 30%>

	</br>
	<!-- JSP Scriplet element -->
	<%
	int birthYear = 2004;
	out.print("birthYear is " + birthYear);
	out.print("</br>");
	if (birthYear > 2000) {
		out.print(" Person is millennium as birthYear is > 2000");
	}
	%>
	</br>
	<!-- Declaration of Method using Declaration element-->
	<%!String message() {
	return "Hello from JSP!!!";
}%>

	<!-- Calling Method using Expression element-->
	<%=message()%>

	<!-- Java Comments -->
	<%
	/*
	int birthYear = 2004;
	out.print("birthYear is " + birthYear);
	out.print("</br>");
	if (birthYear > 2000) {
		out.print(" Person is millennium as birthYear is > 2000");
	}*/
	%>
	</br>
	<!-- BELOW JSP COMMENTs  and it will not redirect to studyeasy.org" -->
	<%-- response.sendRedirect("http://google.com"); --%>
	
	<!-- BELOW HTML COMMENTs won't work and it will redirect to studyeasy.org" -->
	<!--<%response.sendRedirect("http://studyeasy.org"); %>-->
</body>
</html>