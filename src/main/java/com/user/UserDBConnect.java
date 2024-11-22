package com.user;

import java.sql.Connection;
import java.sql.DriverManager;


public class UserDBConnect {
	
	private static String url = "jdbc:mysql://localhost:3306/Gaming_site";
	private static String user = "root";
	private static String password = "5326@psvm";
	private static Connection conn;
	
	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			conn = DriverManager.getConnection(url, user, password);
			
		} catch (Exception e) {
			System.out.println("Database connection faild..");
		}
		
		return conn;
	}
}

