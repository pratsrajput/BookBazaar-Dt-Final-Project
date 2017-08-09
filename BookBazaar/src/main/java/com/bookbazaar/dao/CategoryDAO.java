package com.bookbazaar.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bookbazaar.model.Category;

@Repository
public class CategoryDAO 
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession()
	{
		return sessionFactory.openSession();
	} 
	
	public List<Category> getAllCategoryData()
	{
		Session sess=getSession();
		Query q=sess.createQuery("from Category");
		
		List<Category> l=q.list();
		System.out.println("value of list " +l);
		return l;
		
	}
	
	public Category getCategoryById(int categoryid)
	{
		Session sess=getSession();
		Category category=(Category)sess.get(Category.class, categoryid);
	    return category;
	        
	}
	
	public void saveCategory(Category category)
	{
		Session sess=getSession();
		Transaction tx=sess.beginTransaction();
		sess.save(category);
		tx.commit();
		sess.close();
		
	}
	
	public void deleteCategory(Category category)
	{
		Session sess=getSession();
		Transaction tx=sess.beginTransaction();
		sess.delete(category);
		tx.commit();
		sess.close();
		
	}
	
	public void updateCategory(Category category)
	{
		Session sess=getSession();
		Transaction tx=sess.beginTransaction();
		sess.update(category);
		tx.commit();
		sess.close();
		
	}
	

}
