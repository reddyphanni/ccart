package com.niit.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CategoryDAO;
import com.niit.dao.ProductDAO;



@Controller
public class DynamicNavbar {
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping("/")
	public ModelAndView dynamicNav(HttpSession session)
	{
		session.setAttribute("userId",1);
		session.setAttribute("name","phanni" );
		ModelAndView mv=new ModelAndView("home");
		mv.addObject("categoryList",categoryDAO.list());
		mv.addObject("productList",productDAO.list());
		return mv;
	}

}
