package com.bookbazaar.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.bookbazaar.dao.OrdersDAO;

@Repository
public class Demohandler {
 
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