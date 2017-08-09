package com.bookbazaar.dao;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bookbazaar.model.Payment;
import com.bookbazaar.model.Product;
import com.bookbazaar.model.ShippingAddress;

@Repository
public class OrdersDAO
{
	@Autowired
	private SessionFactory sessionFactory;
	

	public Session getSession()
	{
		return sessionFactory.openSession();
	} 
	
	public void saveOrders(com.bookbazaar.model.Orders orders)
	{
		Session sess=getSession();
		Transaction tx=sess.beginTransaction();
		Payment p=orders.getPm();
		ShippingAddress s=orders.getSa();
		sess.save(p);
		sess.save(s);
		sess.save(orders);
		tx.commit();
		sess.close();
		
	}

}
