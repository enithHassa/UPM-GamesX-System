package com.user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class UserDBUtil {
	
	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static boolean isSuccess;

	
	//validate the user info
	public static List<User> validate(String userName, String password) {
		
		ArrayList<User> usr = new ArrayList<>();
		
		
		try {
			
			conn = UserDBConnect.getConnection();
			stmt = conn.createStatement();
			String sql = "select * from user where userName='"+userName+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String birthdate = rs.getString(3);
				String email = rs.getString(4);
				String phone = rs.getString(5);
				String address = rs.getString(6);
				String passU = rs.getString(7);
				
				User u = new User(id, name, birthdate, email, phone, address, passU);
				usr.add(u);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return usr;
	}
	
	//insert user method
	public static boolean insertUser(String name, String birthdate, String email, String phone, String address, String password) {
		
		boolean isSuccess = false;

		
		try {

			conn = UserDBConnect.getConnection();
			stmt = conn.createStatement();
			String sql = "insert into user values(0,'"+name+"','"+birthdate+"','"+email+"','"+phone+"','"+address+"','"+password+"')";
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//update user details method
	public static boolean updateUser(String id, String name, String birthdate, String email, String phone, String address, String password) {
		
		try {
			
			conn = UserDBConnect.getConnection();
			stmt = conn.createStatement();
			String sql = "update user set userName='"+name+"',birthdate='"+birthdate+"',email='"+email+"',phone='"+phone+"',address='"+address+"',password='"+password+"'"
						+"where userId='"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
				isSuccess  = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//retrieve user details
	public static List<User> getUserDetails(String Id) {
		
		int convertedId = Integer.parseInt(Id);
		
		ArrayList<User> user = new ArrayList<>();
		
		try {
			
			conn = UserDBConnect.getConnection();
			stmt = conn.createStatement();
			String sql = "select * from user where userId='"+convertedId+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String birthdate = rs.getString(3);
				String email = rs.getString(4);
				String phone = rs.getString(5);
				String address = rs.getString(6);
				String password = rs.getString(7);
				
				User u = new User(id, name, birthdate, email, phone, address, password);
				user.add(u);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return user;
	}
	
	//delete the user
	public static boolean deleteUser(String Id) {
		
		int convId = Integer.parseInt(Id);
		
		try {
			
			conn = UserDBConnect.getConnection();
			stmt = conn.createStatement();
			String sql = "delete from user where userId='"+convId+"'";
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
				isSuccess =true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
}
