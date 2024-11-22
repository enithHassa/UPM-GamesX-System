package com.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//Servlet for updating customer details
@WebServlet("/UpdateCustomerServlet")
public class UpdateCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// Handling POST request for updating customer details
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Retrieving parameters from the request
		
		String id = request.getParameter("cusid");
		String name = request.getParameter("Uname");
		String email = request.getParameter("Uemail");
		String  address = request.getParameter("Uaddress");
		String city= request.getParameter("Ucity");
		String mobile = request.getParameter("Umobile");
		String zip = request.getParameter("Uzip");
		String type = request.getParameter("Utype");
		String Cname = request.getParameter("Ucname");
		String Cnumber = request.getParameter("Ucnumber");
		String year = request.getParameter("UexpYr");
		String cvv = request.getParameter("Ucvv");
		
		
		boolean isTrue;
		
		 // Updating customer details using paymentDbUtil class
		isTrue = paymentDbUtil.updatecustomer(id, name, email, address, city, mobile, zip, type, Cname, Cnumber, year, cvv);
		
		if (isTrue == true) {
			// Retrieving updated customer details and setting them as request attribute
			
			List <UserPayment> cusDetails =  paymentDbUtil.getCustomerDetails(id);
			request.setAttribute("cusDetails",cusDetails );
			
			// Forwarding to userPayment.jsp to display updated details
			
			RequestDispatcher dis = request.getRequestDispatcher("userPayment.jsp");
			dis.forward(request, response);
			
			
		}
		else {
			
			// Handling case where update is not successful
            // Retrieving current customer details and setting them as request attribute
			
			List <UserPayment> cusDetails =  paymentDbUtil.getCustomerDetails(id);
			request.setAttribute("cusDetails",cusDetails );
			
			
			// Forwarding to userPayment.jsp to display current details

			RequestDispatcher dis = request.getRequestDispatcher("userPayment.jsp");
			dis.forward(request, response);
		}
		
	}

}
