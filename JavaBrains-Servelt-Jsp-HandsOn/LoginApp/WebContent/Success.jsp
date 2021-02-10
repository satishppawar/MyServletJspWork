<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="demo.app.login.dto.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Success</title>
</head>
<body>
<!-- STEP1 Simple Implementation -->
<h3>Login Successful!</h3>
<!-- STEP2 -->
<%--
	User user=(User)session.getAttribute("user");
--%>

<!-- STEP3 USING REQUEST DISPATCHER -->
<%--<%User user=(User)request.getAttribute("user"); 

Hello <%=user.getUserName()%>!--%>

<!-- STEP4 Using the JSTL  -->
<%-- <jsp:useBean id="user" class="demo.app.login.dto.User" scope="request"></jsp:useBean>
Hello <%=user.getUserName()%>!
--%>

<jsp:useBean id="user" class="demo.app.login.dto.User" scope="request">
	<%-- Using setProperty to set bean property--%>
	<jsp:setProperty property="userName" name="user" value="NewUser"></jsp:setProperty>
</jsp:useBean>
<!-- STEP4 Using the JSTL  -->
Hello: <jsp:getProperty property="userName" name="user"/>
</body>
</html>