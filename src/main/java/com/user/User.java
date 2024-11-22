package com.user;

import java.sql.Date;

public class User {
	private int userId;
	private String name;
	private String birthdate;
	private String email;
	private String phone;
	private String address;
	private String password;
	
	public User(int userId, String name, String birthdate, String email, String phone, String address, String password) {
		this.userId = userId;
		this.name = name;
		this.birthdate = birthdate;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.password = password;
	}

	public int getUserId() {
		return userId;
	}

	public String getName() {
		return name;
	}
	
	public String getBirthdate() {
		return birthdate;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}

	public String getAddress() {
		return address;
	}

	public String getPassword() {
		return password;
	}

}
