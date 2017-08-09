package com.bookbazaar.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bookbazaar.dao.CartDAO;
import com.bookbazaar.dao.ProductDAO;
import com.bookbazaar.model.Cart;
import com.bookbazaar.model.Product;
import com.google.gson.Gson;

@Controller
public class CartController {
	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping("/Cart/{productid}")
	public ModelAndView cartPage1(@PathVariable String productid, @RequestParam String q, HttpSession session, HttpServletRequest request)
	{
		Cart c=new Cart();
		session=request.getSession(false);
		String username=(String) session.getAttribute("username");
		if(username == null)
		{
			return new ModelAndView("Login");
		}
		else
		{
		Product p=productDAO.getProductById(productid);
		
		c.setProductname(p.getProductname());
		c.setProductid(p.getProductid());
		c.setproductprice(p.getProductprice());
		c.setFlag(0);
		int qty=Integer.parseInt(q);
		c.setQuantity(qty);
		c.setUsername(username);
		cartDAO.insertUpdateCart(c);
		return new ModelAndView("redirect:/viewCart");
		}
	}
	
	
	
	@RequestMapping("/viewCart")
	public ModelAndView displayProducts(HttpSession session)
	{
		
			String username=(String)session.getAttribute("username");
			ModelAndView mv= new ModelAndView("Cart");
			List<Cart> list=cartDAO.viewCart(username);
			System.out.println("CartList is"+list);
			Gson g=new Gson();
			String str=g.toJson(list);
			System.out.println("JSON DATA IS "+str);
			mv.addObject("pr",str);
			return mv;
		
	}
	
	@RequestMapping("/deletecart/{cart_id}")
	public ModelAndView deletecart(@PathVariable int cart_id)
	{
		Cart cart=cartDAO.getCart(cart_id);
		cartDAO.deleteCart(cart);
		return new ModelAndView("redirect:/viewCart");
	}
	
	
	
	
}


