package com.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		 String username = request.getParameter("username");
		 String password = request.getParameter("password");
		 
		 try {
			 
			 List<User> userDetails = UserDBUtil.validate(username, password);
			 request.setAttribute("userDetails", userDetails);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		 
		 RequestDispatcher dis = request.getRequestDispatcher("userAccount.jsp");
		 dis.forward(request, response);
		 
	}

}
