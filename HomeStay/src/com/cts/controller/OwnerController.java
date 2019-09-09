package com.cts.controller;


import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cts.model.Owner;
import com.cts.service.HomeServicesImpl;
import com.cts.service.OwnerServiceImpl;

@Controller
public class OwnerController 
{static Logger logger = Logger.getLogger(OwnerController.class);

	@Autowired(required=true)
	private OwnerServiceImpl Owner_services;

	public void setOwner_services(OwnerServiceImpl owner_services) {
		Owner_services = owner_services;
	}
	
	@Autowired(required=true)
	private HomeServicesImpl home_services;
	
	public void setHome_services(HomeServicesImpl home_services) {
		this.home_services = home_services;
	}
   
	@ModelAttribute
	void function(Model model)
	{
		List<String> list=new ArrayList<String>();
		list.add("Male");
		list.add("Female");
		
		model.addAttribute("genderlist",list);
		
	}
	
	@RequestMapping("/owner")/*owner is added  */
	public org.springframework.web.servlet.ModelAndView index()
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("owner", new Owner());
		mv.setViewName("ownerregister");
		return mv;
	}
	
	@RequestMapping("/add1")/*registers the owner  */
	public String adduser(@ModelAttribute("owner") Owner owner,HttpSession session)
	{
		
		String ownerUser=owner.getUser_id();
		
		session.setAttribute("ownerUser", ownerUser);
		Owner_services.addOwner(owner);
		return "home";
	}
	
	@RequestMapping("/owner_login")/*owner can login  */
	public ModelAndView login()
	{
	   logger.warn("warning about local vailable is present  in this method");
		ModelAndView mv=new ModelAndView();
		mv.setViewName("ownerlogin");
		return mv;
	}
	
	@RequestMapping("ownerlogin")/*owner's home page shown*/
	public ModelAndView loginAuth(@RequestParam("owner_id") String user_id, @RequestParam("password") String password, HttpSession session)
	{
		ModelAndView mav = new ModelAndView();
		Owner owner=	home_services.getOwnerByUser(user_id);
		if(Owner_services.checkLoginOwner(user_id, password))
		{
			String first_name=owner.getFirst_name();
			String last_name=owner.getLast_name();
			String email=owner.getEmail();
			String contact_number=owner.getContact_number();
			String user_idd=owner.getUser_id();
			mav.addObject("first_name",first_name);
			mav.addObject("last_name",last_name);
			mav.addObject("email",email);
			mav.addObject("contact_number",contact_number);
			mav.addObject("user_idd",user_idd);
			session.setAttribute("ownerUser", user_id);
            mav.setViewName("welcomeowner");
            return mav; 
		}
		else
			JOptionPane.showMessageDialog(null, "Invalid Username and Password or admin approval is pending");
		 	mav.setViewName("home");
		return mav; 
	}
	
}
