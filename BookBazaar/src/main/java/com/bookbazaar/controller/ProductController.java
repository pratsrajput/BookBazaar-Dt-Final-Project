package com.bookbazaar.controller;

import java.io.BufferedOutputStream;

import java.io.File;
import java.io.FileOutputStream;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bookbazaar.dao.ProductDAO;
import com.bookbazaar.model.Cart;
import com.bookbazaar.model.Category;
import com.bookbazaar.model.Product;
import com.bookbazaar.model.Supplier;
import com.google.gson.Gson;

@Controller
public class ProductController {
	
	@Autowired
	ProductDAO productDAO;
	
	
	@RequestMapping("/product")
	public ModelAndView product()
	{
		ModelAndView mv=new ModelAndView("product");
	 List<Product> list=productDAO.getAllProductsData();
	 
	  Gson g=new Gson();
	  String json=g.toJson(list);
	  System.out.println("JSON DATA OF PRODUCT"+json);
	  mv.addObject("prlist", json);
	  return mv;	
	
	  
	}
	

	@RequestMapping("/addproduct")
	public ModelAndView addpage()
	{
	    ModelAndView mv=new ModelAndView("addproduct","command",new Product());
		List<Supplier> lists=productDAO.getSupplierName();
		System.out.println("supplier "+lists);
		List<Category> listc=productDAO.getCategoryName();
		System.out.println("supplier "+listc);
		mv.addObject("lists", lists);
		mv.addObject("listc", listc);
		return mv;
	}
	
	@RequestMapping("/viewproduct")
	public ModelAndView viewpage()
	{
		ModelAndView mv=new ModelAndView("viewproduct");
		List<Product> list=productDAO.getAllProductsData();
		mv.addObject("productlist", list);
	    return mv; 
	}
	
	@RequestMapping(value="/saveProduct", method = RequestMethod.POST)
	public ModelAndView saveProduct(@ModelAttribute Product product)
	{
		String filename=null;
		byte[] arr;
		if(!product.getFile().isEmpty())
		{
			try{
		arr=product.getFile().getBytes();
		productDAO.saveProduct(product);
		System.out.println("Insert product:"+product);
		String path="E:/DT-PROJECT-1/BookBazaar/src/main/webapp/resources/pics/"+product.getProductid()+".jpg";
		File f=new File(path);
		BufferedOutputStream bf=new BufferedOutputStream(new FileOutputStream(f));
		bf.write(arr);
		bf.close();
		System.out.println("Image Uploaded");
		
		}
			catch(Exception e){System.out.println(e.getMessage());}
		}
		return new ModelAndView("redirect:/viewproduct");
	}
	
	@RequestMapping("/deleteproduct/{productid}")
	public ModelAndView deleteproduct(@PathVariable String productid)
	{
		Product product=productDAO.getProductById(productid);
		productDAO.deleteProduct(product);
		return new ModelAndView("redirect:/viewproduct");
	}
	
	@RequestMapping("/editproduct/{productid}")
	public ModelAndView editproduct(@PathVariable String productid)
	{
		Product product=productDAO.getProductById(productid);
		return new ModelAndView("editproduct","command",product);
	}
	@RequestMapping("/editsave")
	public ModelAndView editsave(@ModelAttribute Product product)
	{
		productDAO.updateProduct(product);
		return new ModelAndView("redirect:/viewproduct");
	}
	

	@RequestMapping("/productdetail/{productid}")
	public ModelAndView productdetail(@PathVariable String productid)
	{
		ModelAndView mv = new ModelAndView("productdetail");
		Product product=productDAO.getProductById(productid);
		mv.addObject("product", product);
		return mv;
	}
	
	
}
