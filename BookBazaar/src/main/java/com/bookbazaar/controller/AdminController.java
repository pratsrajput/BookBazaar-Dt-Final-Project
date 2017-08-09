package com.bookbazaar.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.lang.ProcessBuilder.Redirect;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import com.bookbazaar.dao.SupplierDAO;
import com.bookbazaar.model.Supplier;

import com.bookbazaar.dao.CategoryDAO;
import com.bookbazaar.model.Category;


import com.google.gson.Gson;

@Controller
public class AdminController {

	
	
	@RequestMapping("/adminhome")
	public ModelAndView adminhome()
	{
		ModelAndView mv=new ModelAndView("adminhome");
	    return mv; 
	}
	@RequestMapping("/adminlogin")
	public ModelAndView adminlogin()
	{
		ModelAndView mv=new ModelAndView("adminlogin");
	    return mv; 
	}
	@RequestMapping("/adminloginerror")
	public ModelAndView adminloginerror()
	{
		ModelAndView mv=new ModelAndView("adminloginerror");
	    return mv; 
	}
	
	
}
