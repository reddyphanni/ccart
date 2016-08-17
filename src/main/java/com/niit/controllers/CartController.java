package com.niit.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CartDAO;
import com.niit.dao.CategoryDAO;
import com.niit.dao.ProductDAO;
import com.niit.models.Cart;
import com.niit.models.Product;





@Controller
public class CartController {
	
	
	@Autowired
	private CartDAO cartDAO;
	
	@Autowired 
	private ProductDAO productDAO;
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	/*@RequestMapping("/home")
	public String UserHome(Model mv)
	{
		mv.addAttribute("categoryList",categoryDAO.list());
		mv.addAttribute("productList",productDAO.list());
		return "home";}*/
	
	@RequestMapping("{userId}/addtoCart/{id}")
	public String addToCart(@PathVariable("id") String Productid,@PathVariable("userId") int userId)throws Exception 
	{
		Cart item=new Cart();
		Product product=productDAO.get(Productid);
		item.setProductName(product.getName());
		item. setUserid(userId);
		item.setPrice(product.getPrice());
		item.setStatus("C");
		item.setQuantity(1);
		cartDAO.saveOrUpdate(item);
		return "redirect:/home";
	}
	

	@RequestMapping("{userId}/cart")
	public String viewCart(@PathVariable("userId") int userId,Model model)
	{
		model.addAttribute("CartList",cartDAO.get(userId));
		/*model.addAttribute("CartPrice",cartDAO.CartPrice(userId));*/
		return "Cart";
	}
	
	
}

