package com.niit.models;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;
@Entity
@Table
@Component
public class Cart {
	@Id
    private int id;
	private String productname;
	private int price;
	private int quantity;
	private String status;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getProductName() {
		return productname;
	}

	public void setProductName(String productName) {
		this.productname = productName;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getUserid() {
		return userId;
	}

	public void setUserid(int userid) {
		this.userId = userid;
	}

	@Transient
	private int userId;
	
}
