package com.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//Servlet to handle deletion of customer details

@WebServlet("/DeleteCustomerServlet")
public class DeleteCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// Handling POST request
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Retrieving customer ID from the request parameter
		String id = request.getParameter("cusid");
		
		boolean isTrue;
		
		// Deleting customer from the database using utility class
		isTrue = paymentDbUtil.deleteCustomer(id);
		
		 // If deletion is successful
		if (isTrue == true) {
			RequestDispatcher  dispatcher = request.getRequestDispatcher("PaymentInsert.jsp");
			dispatcher.forward(request, response);
		}
		
		 // If deletion fails
		else {
			 // Retrieving customer details for display
			List<UserPayment> cusDetails = paymentDbUtil.getCustomerDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			
			 // Forwarding to user payment page
			RequestDispatcher  dispatcher = request.getRequestDispatcher("userPayment.jsp");
			dispatcher.forward(request, response);
		}
	}

}
