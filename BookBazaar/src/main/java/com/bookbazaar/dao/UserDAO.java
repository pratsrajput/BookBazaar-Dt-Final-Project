package com.bookbazaar.dao;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bookbazaar.model.Product;
import com.bookbazaar.model.User;

// DAO MEANS CLASS USED FOR DATA RELATED OPERATIONS

@Repository
public class UserDAO {
	  
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession()
	{
		return sessionFactory.openSession();
	} 
	
	public boolean validateUser(String username, String password)
	{
		
		System.out.println("Inside validateUsr"+username +" "+password);
		Session sess=getSession();
	   Query q=sess.createQuery("from User where username=:username and password=:password");
	   q.setParameter("username", username);
	   q.setParameter("password", password);
	   List<User> l=q.list();
	   
	   if(l.size()>0)
	   {
		   return true;
	   }
	   else
	   {
		   return false;
	   }
	   
	   }
	public void saveUser(User user)
	{
		Session sess=getSession();
		Transaction tx=sess.beginTransaction();
		sess.save(user);
		tx.commit();
		sess.close();
		
	}
	
}

