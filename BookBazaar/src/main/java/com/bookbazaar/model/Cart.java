package com.bookbazaar.model;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class Cart {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int cart_id;
	
	private String username;
	private String productname;
	private String productid;
	private double productprice;
	//private String pBrand; 
	
	private int quantity;
	private int Flag;
	
		

	public int getCart_id() {
		return cart_id;
	}



	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}



	public String getUsername() {
		return username;
	}



	public void setUsername(String username) {
		this.username = username;
	}



	public String getProductname() {
		return productname;
	}



	public void setProductname(String productname) {
		this.productname = productname;
	}


	public String getProductid() {
		return productid;
	}



	public void setProductid(String productid) {
		this.productid = productid;
	}



	public double getPrice() {
		return productprice;
	}



	public void setproductprice(double productprice) {
		this.productprice = productprice;
	}



	public int getQuantity() {
		return quantity;
	}



	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}



	public int getFlag() {
		return Flag;
	}



	public void setFlag(int flag) {
		Flag = flag;
	}


	
}
