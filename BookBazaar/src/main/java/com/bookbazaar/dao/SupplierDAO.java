package com.bookbazaar.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bookbazaar.model.Supplier;

@Repository
public class SupplierDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession()
	{
		return sessionFactory.openSession();
	} 
	
	public List<Supplier> getAllSupplierData()
	{
		Session sess=getSession();
		Query q=sess.createQuery("from Supplier");
		List<Supplier> l=q.list();
		return l;
		
	}
	
	public Supplier getSupplierById(String supplierid)
	{
		Session sess=getSession();
		Supplier supplier=(Supplier)sess.get(Supplier.class, supplierid);
	    return supplier;
	        
	}
	
	public void saveSupplier(Supplier supplier)
	{
		Session sess=getSession();
		Transaction tx=sess.beginTransaction();
		sess.save(supplier);
		tx.commit();
		sess.close();
		
	}
	
	public void deleteSupplier(Supplier supplier)
	{
		Session sess=getSession();
		Transaction tx=sess.beginTransaction();
		sess.delete(supplier);
		tx.commit();
		sess.close();
		
	}
	
	public void updateSupplier(Supplier supplier)
	{
		Session sess=getSession();
		Transaction tx=sess.beginTransaction();
		sess.update(supplier);
		tx.commit();
		sess.close();
		
	}
	
}
