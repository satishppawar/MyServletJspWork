package app.demo.login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import demo.app.login.dto.User;
import demo.app.login.service.LoginService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	//STEP1 SIMPLE IMPLEMENTATION
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId,password;
		
		userId=request.getParameter("userId");
		password=request.getParameter("password");
		
		LoginService loginService=new LoginService();
		boolean result=loginService.authenticate(userId, password);
		
		//depending on result value, do redirection
		//STEP1 Simple Implementation
		 
		/* if(result){
			response.sendRedirect("Success.jsp");
			return;
		}
		else {
			response.sendRedirect("login.jsp");
			return;
		}*/
		
		//STEP2
		if(result){
			//Get Result from the business service
			User user=loginService.getUserDSetails(userId);
			
			//Save user to session scope for redirection
			//STEP2
			//request.getSession().setAttribute("user",user);
			
			//STEP3 :Request Dispatcher
			request.setAttribute("user",user);
			//Pass result of business service to view
			//STEP2
			//response.sendRedirect("Success.jsp");
			
			//STEP3 :Request Dispatcher
			RequestDispatcher dispatcher=request.getRequestDispatcher("Success.jsp");
			dispatcher.forward(request, response);
			return;
		}else {
			response.sendRedirect("login.jsp");
			return;
		}
	}

}
