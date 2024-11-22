package com.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("userid");
		String name = request.getParameter("uname");
		String birthdate = request.getParameter("ubirthdate");
		String email = request.getParameter("uemail");
		String phone = request.getParameter("uphone");
		String address = request.getParameter("uaddress");
		String password = request.getParameter("upass");
		
		boolean isTrue;
		
		isTrue = UserDBUtil.updateUser(id, name, birthdate, email, phone, address, password);
		
		if (isTrue == true) {
			
			List<User> userDetails = UserDBUtil.getUserDetails(id);
			request.setAttribute("userDetails", userDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("userAccount.jsp");
			dis.forward(request, response);
		} else {
			
			List<User> userDetails = UserDBUtil.getUserDetails(id);
			request.setAttribute("userDetails", userDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("userAccount.jsp");
			dis.forward(request, response);
		}
	}

}
