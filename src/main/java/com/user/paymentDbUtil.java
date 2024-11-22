package com.user;

 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


//Class for interacting with the database regarding payment information

public class paymentDbUtil {
	
	public static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	 // Method to validate user credentials and retrieve payment details
	
	public static List<UserPayment> validate (String userName, String password){
		
		ArrayList <UserPayment> cus = new ArrayList<>();
		
		
		
		//validate
				
				try {
					con = UserDBConnect.getConnection();
					stmt = con.createStatement();
					
					
					String sql = "select * from Xgame_payment where name='"+userName+"' and  email='"+password +"'  ";
					
					rs = stmt.executeQuery(sql);
					
					if (rs.next()) {
						int id= rs.getInt(1);
						String name      = rs.getString(2);
						String email     = rs.getString(3);
						String address   = rs.getString(4);
						String city      = rs.getString(5);
						String mobile    = rs.getString(6);
						String zip       = rs.getString(7);
						String type      = rs.getString(8);
						String CardName  = rs.getString(9);
						String Number    = rs.getString(10);
						String year      = rs.getString(11);
						String cvv       = rs.getString(12);
						
						
						
						
						
					
						UserPayment c = new  UserPayment (id,name,email,address,city,mobile,zip,type,CardName,Number,year,cvv);
						cus.add(c);
						
					}
					
				}
				catch (Exception e) {
					e.printStackTrace();
					
				}
		
		return cus;
		 
	}
	
	public static boolean insertcustomer(String name,String email,String address,String city,String mobile,String zip,String type,String cardname,
			String number,String year,String cvv) {
		
		boolean isSuccess = false;
		
		
		
		try {
			
			con = UserDBConnect.getConnection();
			stmt = con.createStatement();
			
			
			// Method to insert new customer payment details into the database
			
			String sql= "insert into Xgame_payment values (0,'"+name+"', '"+email+"','"+address+"', '"+city+"','"+mobile+"', '"+zip+"', '"+type+"','"+cardname+"','"+number+"','"+year+"','"+cvv+"')";
			
			int rs = stmt.executeUpdate(sql);
			
			 if (rs > 0) {
				 isSuccess = true;
			 }else {
				 isSuccess = false;
			 }
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		return isSuccess;
		
	}
	
	// Method to update customer payment details in the database
	
	public static boolean updatecustomer(String id , String name, String email, String address,String city,String mobile,String zip,String type,String Cname, String Cnumber,String year,String cvv) 
	{
		
		
		try {
			
			con = UserDBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "UPDATE Xgame.Xgame_payment SET name='"+name+"',email='"+email+"',address='"+address+"',city='"+city+"',mobile='"+mobile+"',zip='"+zip+"',type='"+type+"',Cname='"+Cname+"',CNumber='"+Cnumber+"',exprYear='"+year+"',cvv='"+cvv+"'"
					+ "WHERE id='"+id+"'";
			
			
			
			int rs = stmt.executeUpdate(sql);
			
			
			
			
			if (rs > 0 ) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}
		
		return isSuccess;
	}
	
	// Method to retrieve customer payment details from the database
	
	public static List<UserPayment> getCustomerDetails(String Id){
		
		int convertedID = Integer.parseInt(Id);
		
		ArrayList<UserPayment> cus = new ArrayList();
		
		try {
			
			con = UserDBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from Xgame.Xgame_payment where id='"+convertedID+"'";
			
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String Address = rs.getString(4);
				String city = rs.getString(5);
				String mobile = rs.getString(6);
				String Zip = rs.getString(7);
				String type = rs.getString(8);
				String Cardname = rs.getString(9);
				String Number = rs.getString(10);
				String year = rs.getString(11);
				String cvv = rs.getString(12);
				
				UserPayment c = new UserPayment(id,name,email,Address,city,mobile,Zip,type,Cardname,Number,year,cvv);
				
				cus.add(c);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
			
		}
		
		
		return cus;
	}
	
	// Method to delete customer payment details from the database
	
	public static boolean deleteCustomer(String id ) {
		
		int convID = Integer.parseInt(id);
		
		
		try {
			
			con = UserDBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "delete from Xgame.Xgame_payment where id='"+convID+"'";
			
			int r = stmt.executeUpdate(sql);
			
			if (r > 0 ) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}

}
