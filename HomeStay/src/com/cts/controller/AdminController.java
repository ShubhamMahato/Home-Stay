package com.cts.controller;

import javax.swing.JOptionPane;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.cts.service.AdminServiceImpl;

@Controller
public class AdminController 
{
	static Logger logger = Logger.getLogger(AdminController.class); /*logger class for implementing all the loggs that user wants to get printed in file*/
	@Autowired(required=true)
	private AdminServiceImpl adminserviceimpl;  /*adminServiceimplementation class for CRUD Operations */

	public void setAdminserviceimpl(AdminServiceImpl adminserviceimpl) {
		this.adminserviceimpl = adminserviceimpl;
	}
	public static void infoBox(String infoMessage, String titleBar)  /* JoptionPane for showing the dialog box*/
	{
		JOptionPane.showMessageDialog(null, infoMessage, "InfoBox: " + titleBar, JOptionPane.INFORMATION_MESSAGE);
	}
	@RequestMapping("/adminlogin")
	public String loginAuth(ModelMap model,@RequestParam("admin_id") String admin_id, @RequestParam("password") String password) /* admin login module for the login */
	{  logger.info("Admin login page  started");
		if(adminserviceimpl.checkLogin(admin_id, password)==true)
		{
			return "redirect:admindashboard"; /*if a admin password is correct then the will be redirected to the admindashboard*/
		}
		else
		{
			infoBox("Invalid Credentials..!", "Alert !");
			logger.info("Admin login is completed ");/*if a admin password is incorrect then a pop up will be prompted*/
			return "home";
		}
		
	}
	 @RequestMapping(value={"deleteOwner/admindashboard","AcceptOwner/admindashboard","deleteUser/admindashboard","AcceptUser/admindashboard","/admindashboard"})
	 public ModelAndView getAllUserRequests() /*admin dashboard where first all the user request will come */
	    {
	    	ModelAndView mv = new ModelAndView();
	    	mv.addObject("UserList",adminserviceimpl.getAllAcceptedUser());  
	    	mv.setViewName("AdminDashboard");
	    	return mv;
	    }
	 @RequestMapping(value={"deleteOwner/adminUserList","AcceptOwner/adminUserList","deleteUser/adminUserList","AcceptUser/adminUserList","/adminUserList"})
	 public ModelAndView getAdminListUser() /*admin dashboard where all the accepted user are kept user request will come */
	    {
	    	ModelAndView mv = new ModelAndView();
	    	mv.addObject("adminUserList",adminserviceimpl.getAllUser());
	    	mv.setViewName("AdminUserList");
	    	return mv;
	    }
	
	
	 @RequestMapping(value={"deleteOwner/pgrequest","AcceptOwner/pgrequest","deleteUser/pgrequest","AcceptUser/pgrequest","/pgrequest"})
	 public ModelAndView getPgRequest() /*admin dashboard where owner requests will be shown */
	    {
	    	ModelAndView mv = new ModelAndView();
	    	mv.addObject("OwnerList",adminserviceimpl.getPgOwnerRequests());
	    	mv.setViewName("PgOwnerDashRequest");
	    	return mv;
	    }
	 @RequestMapping(value={"deleteOwner/allowner","AcceptOwner/allowner","deleteUser/allowner","AcceptUser/allowner","/allowner"})
	 public ModelAndView getPgOwners() /*admin dashboard where  all the owner request will come */
	    {
	    	ModelAndView mv = new ModelAndView();
	    	mv.addObject("listOwner",adminserviceimpl.getAllAcceptedowners());
	    	mv.setViewName("AllOwners");
	    	return mv;
	    }
	 @RequestMapping(value = "/deleteUser/{u_id}")
	    public String adminDeleteUser(@PathVariable("u_id") int id) /*admin dashboard where all the deleted user  will come */
	    {
		 adminserviceimpl.deleteUser(id);
    	 infoBox("Deleted User..!", "Information !");
    	 return "redirect:adminUserList";
	    }
	 
	 @RequestMapping(value = "/AcceptUser/{u_id}") /*the function where user accept requests are proceeded */
	    public String adminAcceptuser(@PathVariable("u_id") int id)
	    {
	    	 adminserviceimpl.AcceptUser(id);
	    	 infoBox("User Registered..!", "Information !");
	    	 return "redirect:adminUserList";
	    	
	    }
	 
	 @RequestMapping(value={"deleteOwner/deletedusers","AcceptOwner/deletedusers","deleteUser/deletedusers","AcceptUser/deletedusers","/deletedusers"})
		 public ModelAndView getDeleteUsers() /*admin dashboard where  all the deleted will come */
		    {
		    	ModelAndView mv = new ModelAndView();
		    	mv.addObject("DeletedUsers",adminserviceimpl.getDeletedUsers());
		    	mv.setViewName("DeletedUsers");
		    	return mv;
		    }
	 
	 
	 @RequestMapping(value={"/deleteOwner/{u_id}"})  /*the function where owner delete requests are proceeded */
	 
	 public String adminDeleteOwner(@PathVariable("u_id") int id)
	 {
		 adminserviceimpl.deleteOwner(id);
		 infoBox("Owner Deleted..!", "Information !");
		 return "redirect:allowner";
	 }
	 
	 @RequestMapping(value={"/AcceptOwner/{u_id}"})  /*the function where owner accept requests are proceeded */
	 public String adminAcceptOwner(@PathVariable("u_id") int id)
	 {
		 adminserviceimpl.AcceptOwner(id);
		 infoBox("User Registered..!", "Information !");
		 return "redirect:allowner";
	 }
	
	
	@RequestMapping(value={"AcceptOwner/deleteOwners","deleteOwner/deleteOwners","deleteUser/deleteOwners","AcceptUser/deleteOwners","/deleteOwners"})
	public ModelAndView getDeletedOwners()  /*admin dashboard where all the deleted owner  will come */
	{ 
		ModelAndView mv = new ModelAndView();
		mv.addObject("DeletedOwners",adminserviceimpl.getDeletedOwners());
		mv.setViewName("DeletedOwners");
		return mv;
	}

	
	
	
	
}
