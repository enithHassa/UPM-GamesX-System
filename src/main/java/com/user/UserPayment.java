package com.user;


//Class representing user payment details

public class UserPayment {
	private int id;
	private String name;
	private String email;
	private String Address;
	private String city;
	private String mobile;
	private String Zip;
	private String type;
	private String Cardname;
	private String Number;
	private String year;
	private String cvv;
	
	
	
	
	
	 // Constructor to initialize user payment details
	

	public UserPayment(int id, String name, String email, String address, String city, String mobile, String zip, String type,
			String Cardname,String Number,String year,String cvv) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		Address = address;
		this.city = city;
		this.mobile = mobile;
		Zip = zip;
		this.type=type;
		this.Cardname=Cardname;
		this.Number=Number;
		this.year = year;
		this.cvv= cvv;
		
	}
	
	// Getter methods for accessing user payment details


	public int getId() {
		return id;
	}


	public String getName() {
		return name;
	}


	public String getEmail() {
		return email;
	}

	public String getAddress() {
		return Address;
	}


	public String getCity() {
		return city;
	}

	public String getMobile() {
		return mobile;
	}

	public String getZip() {
		return Zip;
	}
	
	public String getType() {
		return type;
	}
	
	public String getCardname() {
		return Cardname;
	}
	

	public String getNumber() {
		return Number;
	}
	
	public String getyear() {
		return year;
	}
	public String getcvv() {
		return cvv;
	}


	




	
	
	
}
