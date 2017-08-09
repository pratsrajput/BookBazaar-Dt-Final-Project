package com.bookbazaar.controller;

import org.springframework.stereotype.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bookbazaar.dao.UserDAO;
import com.bookbazaar.model.User;


@Controller
public class HomeController 
{
	@Autowired
	UserDAO userDAO;
	
	@RequestMapping("/")
	public ModelAndView index()
	{
		return new ModelAndView("index");
	}
	
	@RequestMapping("/index")
	public ModelAndView index1()
	{
		return new ModelAndView("index");
	}

	@RequestMapping("/LoginPage")
	public ModelAndView login()
	{
		return new ModelAndView("Login");
	}
	
	@RequestMapping("/AboutUs")
	public ModelAndView AboutUs()
	{
		return new ModelAndView("AboutUs");
	}

	@RequestMapping("/Registration")
	public ModelAndView register()
	{
		return new ModelAndView("Registration");
	}
	
	@RequestMapping("/ContactPage")
	public ModelAndView contact()
	{
		return new ModelAndView("Contact");
	}
	
	@RequestMapping("/userregistration")
	public ModelAndView registeruser(@ModelAttribute User user)
	{
		user.setRole("ROLE_USER");
		user.setEnabled(true);
		try
		{
			userDAO.saveUser(user);
		}
		catch(Exception e)
		{
			return new ModelAndView("Registration");
		}
		
		return new ModelAndView("success");
	}


	@RequestMapping("/Contact")
	public ModelAndView Contact()
	{
		return new ModelAndView("Contact");
	}
 
	@RequestMapping("/loginconfirm")
	public ModelAndView loginconfirm(@RequestParam String username, @RequestParam String password,HttpSession session)
	{
		System.out.println("Inside Controller "+username+" "+password);
		boolean x=userDAO.validateUser(username, password);
		if(x==true)
		{
			session.setAttribute("username", username);
			return new ModelAndView("index");
		}
		else
		{
			return new ModelAndView("error");
		}
	}
		


}

