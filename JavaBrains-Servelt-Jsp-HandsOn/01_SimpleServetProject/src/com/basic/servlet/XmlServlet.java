package com.basic.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class XmlServlet </br>
 * </br>
 * 1. Configure web.xml - add <servlet> configuration </br>
 * 
 * 2. Define servlet-mapping tag to define name and url pattern </br>
 * 
 * 3. Override doGet, doPost
 * 
 * 
 */

public class XmlServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// STEP1
		System.out.println("XML Servlet Called...");

		// STEP2: setContentType 
		response.setContentType("text/html");
		PrintWriter writer = response.getWriter();
		writer.println("Hello from GET method :");

		// STEP3 : PASSING QUERY PARAMETERS TO URL
		// http://localhost:8080/01_SimpleServetProject/xmlServletpath?userName=mahi
		String userName = request.getParameter("userName");
		writer.println("Hello " + userName + "!");
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// STEP1 : Demo of userName
		response.setContentType("text/html");
		PrintWriter writer = response.getWriter();
		writer.println("Hello from POST method<br/>");

		String userName = request.getParameter("userName");
		// step2 : Demo of fullName
		String fullName = request.getParameter("fullName");
		writer.println("Hello " + userName + "! Full Name is " + fullName);

		// step3 : Demo of radio button prof
		String prof = request.getParameter("prof");
		writer.println("You are " + prof);

		// step4 : Demo of select options : Single value
		String location = request.getParameter("location");
		writer.println("You are from single location " + location);

		// step4 : Demo of select options : Single value
		String[] locations = request.getParameterValues("locations");
		writer.println("<br/>You are from ");
		for (int i = 0; i < locations.length; i++) {
			writer.print(locations[i] + " ");
		}
	}
}
