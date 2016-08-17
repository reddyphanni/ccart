package com.niit.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import org.springframework.stereotype.Component;

@Entity
@Table
@Component
public class UserDetails {
	
	@Id
	@GeneratedValue
	private int id;

	private String name;

	private String password;

	private int mobile;
	
	private String mail;
	
	private String address;
	
	private int admin;

	public int getAdmin() {
		return admin;
	}

	public void setAdmin(int admin) {
		this.admin = admin;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getPassword() {
		return password;
	}

	public int getMobile() {
		return mobile;
	}

	public String getMail() {
		return mail;
	}

	public String getAddress() {
		return address;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setMobile(int mobile) {
		this.mobile = mobile;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public void setAddress(String address) {
		this.address = address;
	}
}
