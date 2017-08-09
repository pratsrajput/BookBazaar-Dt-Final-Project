package com.bookbazaar.dao;

import java.util.List;


import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bookbazaar.model.Cart;
import com.bookbazaar.model.Orders;
import com.bookbazaar.model.Payment;
import com.bookbazaar.model.ShippingAddress;
import com.bookbazaar.model.Supplier;
import com.bookbazaar.model.Cart;

@Repository
public class CartDAO 
{
	
	@Autowired
	SessionFactory sessionFactory;
	
	public Session getSession()
	{
		return sessionFactory.openSession();
	}
	
	@Transactional
	public void insertUpdateCart(Cart cart)
	{
		Session session= getSession();
		Transaction tx=session.beginTransaction();
		session.saveOrUpdate(cart);
		tx.commit();
		session.close();
	}

	public List<Cart> viewCart(String username) {
		// TODO Auto-generated method stub
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		String hql="from Cart where username=:username and Flag=0";
	  Query q=sess.createQuery(hql);
		q.setParameter("username", username);
		List<Cart> l=q.list();
		return l;

	}

	public Cart getCart(int cartid)
	{
		Session session=sessionFactory.openSession();
		Cart cart=(Cart)session.get(Cart.class,cartid);
		session.close();
		return cart;
	}
	
	@Transactional
	public void deleteCart(Cart cart)
	{
		Session session=getSession();
		Transaction tx=session.beginTransaction();
		session.delete(cart);
		tx.commit();
		session.close();
		
	}
	
	public List<Cart> getCartDetails()
	{
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Cart");
		List<Cart> list=query.list();
		return list;
	}
}
