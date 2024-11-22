package com.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//Servlet  payment insertion

@WebServlet("/paymentInsertServlet")
public class paymentInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	 
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Retrieving parameters from the request
		
		String name = request.getParameter("fname");
		String email = request.getParameter("femail");
		String address = request.getParameter("faddress");
		String city = request.getParameter("fcity");
		String phone = request.getParameter("fnumber");
		String zip =  request.getParameter("fzip");
		String type =  request.getParameter("ctype");
		String CardName =  request.getParameter("cardname");
		String CardNumber =  request.getParameter("fcnum");
		String expYear =  request.getParameter("expyear");
		String cvv = request.getParameter("cvv");
		
		boolean isTrue;
		
		// Inserting payment details using paymentDbUtil class
		
		isTrue = paymentDbUtil.insertcustomer(name, email, address, city, phone, zip, type, CardName, CardNumber, expYear, cvv);
		
		
		if (isTrue == true ) {
			
			 // Forwarding to payment success page
			RequestDispatcher dis = request.getRequestDispatcher("payment_T-9.jsp");
			dis.forward(request, response);
			
		}
		
		else {
			
            // Forwarding to unsuccessful payment page

			RequestDispatcher dis2 =  request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response); 
		}
		
	}

}
