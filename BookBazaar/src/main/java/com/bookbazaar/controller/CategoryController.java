package com.bookbazaar.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bookbazaar.dao.CategoryDAO;
import com.bookbazaar.model.Category;
import com.google.gson.Gson;

@Controller
public class CategoryController 
{
	@Autowired
	CategoryDAO categoryDAO;
	
	@RequestMapping("/category")
	public ModelAndView category()
	{
		ModelAndView mv=new ModelAndView("category");
		 List<Category> list=categoryDAO.getAllCategoryData();
	 
	  Gson g=new Gson();
	  String json=g.toJson(list);
	  System.out.println(" JSON DATA OF CATEGORY"+json);
	  mv.addObject("list", json);
	  return new ModelAndView("category");	
	
	  
	}
	
	
	@RequestMapping("/addcategory")
	public ModelAndView addcategory()
	{
		ModelAndView mv=new ModelAndView("addcategory","command",new Category());
	    return mv; 
	}
	
	@RequestMapping("/viewcategory")
	public ModelAndView viewcategory()
	{
		ModelAndView mv=new ModelAndView("viewcategory");
		List<Category> list=categoryDAO.getAllCategoryData();
		mv.addObject("categorylist", list);
	    return mv; 
	}
	
	@RequestMapping("/savecategory")
	public ModelAndView savecategory(@ModelAttribute Category category)
	{
		categoryDAO.saveCategory(category);
		return new ModelAndView("redirect:/viewcategory");
	}
	
	@RequestMapping("/deletecategory/{categoryid}")
	public ModelAndView deletecategory(@PathVariable int categoryid)
	{
		Category category=categoryDAO.getCategoryById(categoryid);
		categoryDAO.deleteCategory(category);
		return new ModelAndView("redirect:/viewcategory");
	}
	
	@RequestMapping("/editcategory/{categoryid}")
	public ModelAndView editcategory(@PathVariable int categoryid)
	{
		Category category=categoryDAO.getCategoryById(categoryid);
		return new ModelAndView("editcategory","command",category);
	}
	@RequestMapping("/editsavecategory")
	public ModelAndView editsavecategory(@ModelAttribute Category category)
	{
		categoryDAO.updateCategory(category);
		return new ModelAndView("redirect:/viewcategory");
	}
	

}
