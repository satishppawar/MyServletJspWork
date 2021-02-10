package com.basic.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SimpleServlet
 */
@WebServlet(description = "A simple servlet", urlPatterns = { "/SimpleServletPath" }, initParams = { @WebInitParam(name = "defaultUser", value = "Satish Pawar") })
public class SimpleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Hello From POST method.");
		PrintWriter printWriter = response.getWriter();
		// printWriter.println("<h3>Hello in html</h3>");

		String userName = request.getParameter("name");

		// Session demo
		HttpSession session = request.getSession();

		// Using Context object
		ServletContext context = request.getServletContext();

		if (userName != "" && userName != null) {
			// put userName in session
			session.setAttribute("savedUserName", userName);
			// add username to context
			context.setAttribute("savedUserName", userName);
		}

		printWriter.write("Request Parameter has username as :" + userName
				+ "!");
		// getAttribute ==> returns Object
		printWriter.write("Session Parameter has username as :"
				+ (String) session.getAttribute("savedUserName") + "!");
		printWriter.write("Context Parameter has username as :"
				+ (String) context.getAttribute("savedUserName") + "!");

		// using initParams
		printWriter.write("Init Parameter has default username as :"
				+ this.getServletConfig().getInitParameter("defaultUser"));

	}

}
