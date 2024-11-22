package com.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//Servlet for handling payment validation

@WebServlet("/ paymentServlet")
public class paymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 // Retrieving parameters from the request
		
		String name = request.getParameter("fname");
		String email = request.getParameter("femail");
		
		
		try {
			 // Validating payment details using paymentDbUtil class
			
		List<UserPayment> cusDetails =  paymentDbUtil.validate(name, email); 
		
		
		request.setAttribute("cusDetails", cusDetails);
		
		// Forwarding to userPayment.jsp to display payment details

		RequestDispatcher dis  = request.getRequestDispatcher("userPayment.jsp");
		dis.forward(request, response);
		
		}catch (Exception e ) {
			e.printStackTrace();
		}
		
	}

}
