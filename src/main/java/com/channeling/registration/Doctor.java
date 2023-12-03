package com.channeling.registration;

//encapsulate the properties and behavior of a doctor
//The use of private attributes and getter methods encapsulates the data and provides controlled 
//access to the attributes, ensuring data integrity and security.

public class Doctor {
	private int id;
	private String fullName;
	private String address;
	private String age;
	private String gender;
	private String phone;
	private String email;
	private String userName;
	private String password;
	
	public Doctor(int id, String fullName, String address, String age, String gender, String phone,String email,String userName,String password) {
		
		this.id = id;
		this.fullName = fullName;
		this.address = address;
		this.age = age;
		this.gender = gender;
		this.phone = phone;
		this.email = email;
		this.userName = userName;
		this.password = password;
	}

	public Doctor(int id, String fullName, String address, String age, String gender, String phone, String userName) {
		this.id = id;
		this.fullName = fullName;
		this.address = address;
		this.age = age;
		this.gender = gender;
		this.phone = phone;
		this.userName = userName;
		
	}
	
	//Getter methods allow encapsulation

	public int getId() {
		return id;
	}

	public String getFullName() {
		return fullName;
	}

	public String getAddress() {
		return address;
	}

	public String getAge() {
		return age;
	}

	public String getGender() {
		return gender;
	}

	public String getPhone() {
		return phone;
	}

	public String getEmail() {
		return email;
	}

	public String getUserName() {
		return userName;
	}

	public String getPassword() {
		return password;
	}


	
	
}

