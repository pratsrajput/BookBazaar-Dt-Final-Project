package com.bookbazaar.model;

import java.io.Serializable;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.bookbazaar.dao.OrdersDAO;


@Component("orderFlow")
public class OrderFlow {
	
	@Autowired
     OrdersDAO ordersDAO;
	
	public String addShippingAddress(Orders orders,ShippingAddress shippingAddress)
	{
		orders.setSa(shippingAddress);
		return "success";
	}
	
	public String addPaymentMethod(Orders orders,Payment paymentMethod)
	{
		orders.setPm(paymentMethod);
		return "success";
	}
	
	public String addOrder(Orders orders)
	{
		ordersDAO.saveOrders(orders);
		return "success";
	}
}
 