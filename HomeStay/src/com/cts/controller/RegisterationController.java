package com.cts.controller;

import java.util.List;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.cts.model.PgDetailsnew;
import com.cts.model.User;
import com.cts.service.UserServicesImpl;
import com.cts.service.HomeServicesImpl;
@Controller
public class RegisterationController {
	

	@Autowired(required=true)
	private UserServicesImpl registeration_services;
	public void setRegisteration_services(UserServicesImpl registeration_services)
	{
		this.registeration_services = registeration_services;
	}
	@Autowired
	private HomeServicesImpl homeservice;


	public HomeServicesImpl getHomeservice() {
		return homeservice;
	}


	@RequestMapping("/index")/*user registration page*/
	public org.springframework.web.servlet.ModelAndView index()
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("user", new User());
		mv.setViewName("userregister");
		return mv;
	}
	
	
	@RequestMapping("/add")/*user is registered*/
	public String adduser(@Valid @ModelAttribute("user") User user,BindingResult rs)
	{
		if(rs.hasErrors())
		{
			return "userregister";
		}
		
		JOptionPane.showMessageDialog(null, "Your details are submitted successfully");
		registeration_services.addUser(user);
		
		return "home";
	}
	
	@RequestMapping("/login")/* */
	public ModelAndView login()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("loginform");
		return mv;
	}
	@RequestMapping("/shubham")/* user logins*/
	public ModelAndView loginAuth(ModelMap model,@RequestParam("user_id") String user_id, @RequestParam("password") String password,HttpSession session)
	{
		
		ModelAndView mav=new ModelAndView();
		if(registeration_services.checkLogin(user_id, password))
		{
			List<PgDetailsnew> locations = homeservice.showPgdetails();
			session.setAttribute("UserSession", user_id);
			mav.addObject("list", locations);
			
			//System.out.println(locations.get(locations.size()-1).getOwner());
			mav.addObject("OwnerId",locations.get(locations.size()-1).getOwner().getU_id() );
			mav.setViewName("userprofile");
			return mav;
		}
		else{
			JOptionPane.showMessageDialog(null, "Invalid Username and Password or Admin Acceptance is pending");
			model.put("failed","Invalid Username and Password");
			mav.setViewName("home");	
		}
		
			return mav;
	}
	
}
