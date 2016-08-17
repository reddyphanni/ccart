package com.niit.controllers;

import java.util.Collection;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.UserDetailsDAO;
import com.niit.models.UserDetails;


@Controller
public class usercontroller {
	@Autowired
	private UserDetailsDAO userdetailsDAO;
	
	       @RequestMapping("/register")
			public String register(@ModelAttribute("userdetails") UserDetails userdetails,Model mv ){
				
	    	   mv.addAttribute("userDetails", new UserDetails());
				mv.addAttribute("IfregisterClicked", "true");
				
				return "home";
				}
	       @RequestMapping("/login")
			public String login(@ModelAttribute("userdetails") UserDetails userdetails,Model mv ){
				
	    	   mv.addAttribute("userDetails", new UserDetails());
				mv.addAttribute("IfloginClicked", "true");
				
				return "home";
				}
	       
	       @RequestMapping("/regestration")
	   	public String Regestration(@ModelAttribute("userDetails") UserDetails userDetails, Model mv) {
	   		userdetailsDAO.saveOrUpdate(userDetails);
	   		
	   		return "home";
	   	}
	       
	       
			
			@RequestMapping(value = "loginvalidate", method = RequestMethod.POST)
			public String LoginValidation(@RequestParam("userName") String userName, @RequestParam("password") String password,
					@RequestParam("id") int id,HttpSession session) 
			{
				if(userdetailsDAO.isValidUser(userName, password))
				{
					UserDetails user=userdetailsDAO.get(id);
					if(user.getAdmin()==0)
					{
						session.setAttribute("userId",user.getId());
						session.setAttribute("name",user.getName());
						/*session.setAttribute("LoggedIn","true");
						*/
						return "AdminHome";
					}
					else if (user.getAdmin()==1) {
						session.setAttribute("userId",user.getId());
						session.setAttribute("name",user.getName());
						/*session.setAttribute("LoggedIn","true");*/
						
						return "home";
					}
					else
					{
						return "Login";
					}
				}
				else
				{
					return "Login";
				}	
			}
	
		
		
		
		
		
	}
	


