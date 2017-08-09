package com.bookbazaar.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bookbazaar.dao.SupplierDAO;
import com.bookbazaar.model.Supplier;
import com.google.gson.Gson;

@Controller
public class SupplierController
{
	@Autowired
	SupplierDAO supplierDAO;
	
	@RequestMapping("supplier")
	public ModelAndView supplier()
	{
		ModelAndView mv=new ModelAndView("supplier");
		 List<Supplier> list=supplierDAO.getAllSupplierData();
	 
	  Gson g=new Gson();
	  String json=g.toJson(list);
	  System.out.println(" JSON DATA OF Supplier"+json);
	  mv.addObject("list", json);
	  return new ModelAndView("supplier");	
	
	  
	}

	@RequestMapping("/addsupplier")
	public ModelAndView addsupplier()
	{
		ModelAndView mv=new ModelAndView("addsupplier","command",new Supplier());
	    return mv; 
	}
	
	@RequestMapping("/viewsupplier")
	public ModelAndView viewsupplier()
	{
		ModelAndView mv=new ModelAndView("viewsupplier");
		List<Supplier> list=supplierDAO.getAllSupplierData();
		mv.addObject("supplierlist", list);
	    return mv; 
	}
	
	@RequestMapping("/savesupplier")
	public ModelAndView saveSupplier(@ModelAttribute Supplier supplier)
	{
		supplierDAO.saveSupplier(supplier);
		return new ModelAndView("redirect:/viewsupplier");
	}
	
	@RequestMapping("/deletesupplier/{supplierid}")
	public ModelAndView deletesupplier(@PathVariable String supplierid)
	{
		Supplier supplier=supplierDAO.getSupplierById(supplierid);
		supplierDAO.deleteSupplier(supplier);
		return new ModelAndView("redirect:/viewsupplier");
	}
	
	@RequestMapping("/editsupplier/{supplierid}")
	public ModelAndView editsupplier(@PathVariable String supplierid)
	{
		Supplier supplier=supplierDAO.getSupplierById(supplierid);
		return new ModelAndView("editsupplier","command",supplier);
	}
	@RequestMapping("/editsavesupplier")
	public ModelAndView editsavesupplier(@ModelAttribute Supplier supplier)
	{
		supplierDAO.updateSupplier(supplier);
		return new ModelAndView("redirect:/viewsupplier");
	}

}
