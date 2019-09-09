package com.cts.controller;

import java.io.UnsupportedEncodingException;
import java.sql.Date;
import java.time.LocalDate;
import java.util.List;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.cts.dao.pgdaoimpl;
import com.cts.model.Booking;
import com.cts.model.Owner;
import com.cts.model.PgDetailsnew;
import com.cts.model.User;
import com.cts.service.BookingServiceImpl;
import com.cts.service.HomeServicesImpl;

@Controller
public class BookingController 
{	
	@Autowired(required=true)
	private BookingServiceImpl bookserv;
	
	@Autowired(required=true)
	private HomeServicesImpl homeservice;
	
	@Autowired(required=true)
	private pgdaoimpl pg1;
	
	public static void infoBox(String infoMessage, String titleBar)
	{
		JOptionPane.showMessageDialog(null, infoMessage, "InfoBox: " + titleBar, JOptionPane.INFORMATION_MESSAGE);
	}
	@RequestMapping(value = "/bookingpro", method = RequestMethod.GET) 
	public ModelAndView displayLogin(@RequestParam("id")int id,Model model,HttpSession session) { 
		
		String username=(String)session.getAttribute("UserSession");
		
		PgDetailsnew pgdet=bookserv.getpgID(id);
		int ownerid=pgdet.getOwner().getU_id();
		Owner owner=bookserv.getID(ownerid);
		
		User user=bookserv.getUsername(username);
		//User us=userservicesimpl.getdetails(id);
		PgDetailsnew pg=pg1.getdetails(id);
		ModelAndView mv=new ModelAndView();
		mv.addObject("qwe",owner);
		mv.addObject("xyz",pg);
		mv.addObject("abc",user);
		mv.setViewName("booking");
	    return mv;
	}
	
	@RequestMapping(value="/booking123", method=RequestMethod.GET)/*  booking for user is made*/
	public String bookpg(@ModelAttribute("booking1")Booking book,@RequestParam("bookingdate")String s,@RequestParam("ownerid")int id,@RequestParam("timeshift") String t,HttpSession session)
	{	
		
		String username=(String)session.getAttribute("UserSession");
		Owner owner=bookserv.getID(id);
		User user=bookserv.getUsername(username);
		Booking booking=new Booking();
		booking.setOwner(owner);
		booking.setFirstname(book.getFirstname());
		booking.setLastname(book.getLastname());
		booking.setPgname(book.getPgname());
		booking.setUser(user);
		booking.setBooking_show(book.getBooking_show(s));
		Integer a=Integer.parseInt(t);
		LocalDate l=LocalDate.parse(s);
		LocalDate f=l.plusDays(a);
		Date day=Date.valueOf(f);
		booking.setBookingdate(day);
		bookserv.bookpg(booking);
		
		return "redirect:UserBookingList";
	}

	@RequestMapping("showbookings")/*user is shown all his bookings made-*/
	public String bookpg(HttpSession session) throws UnsupportedEncodingException
	{
		String username=(String)session.getAttribute("UserSession");
		User user=bookserv.getUsername(username);
		int user_id=user.getU_id();
		LocalDate n=LocalDate.now();
		Date g=Date.valueOf(n);
		List<Booking> my= bookserv.showbooking(user_id,g);
		if(my.size()!=0)
		{
			infoBox("Your Previous Booking has been canceled..!", "Information !");
		}
		return "redirect:UserBookingList";
	}
	
	@RequestMapping("UserBookingList")/*user is shown all his bookings made-*/
	public ModelAndView showUserBookingList(HttpSession session)
	{
		ModelAndView mav=new ModelAndView();
		String username=(String)session.getAttribute("UserSession");
		User user=bookserv.getUsername(username);
		int user_id=user.getU_id();
		List<Booking> userList= bookserv.showUserBookingList(user_id);
		mav.addObject("list", userList);
		mav.setViewName("UserBookingList");
		return mav;
	}
	
	@RequestMapping("declineBooking/{bookingid}")/*functionality to decline booking by user*/
	public ModelAndView getDeleteUsers(HttpSession session,@PathVariable("bookingid") int id)
    {
		ModelAndView mav=new ModelAndView();
		bookserv.declineBooking(id);
   	 	infoBox("Deleted User..!", "Information !");
    	String username=(String)session.getAttribute("UserSession");
		User user=bookserv.getUsername(username);
		int user_id=user.getU_id();
		List<Booking> userList= bookserv.showUserBookingList(user_id);
		mav.addObject("list", userList);
		mav.setViewName("UserBookingList");
    	return mav;
    }
	
	@RequestMapping("OwnerBookingList")/*owner is shown with all the bookings made for his pgs*/
	public ModelAndView showOwnerBookingList(HttpSession session)
	{
		ModelAndView mav=new ModelAndView();
		String ownerUser=(String)session.getAttribute("ownerUser");
		Owner owner=homeservice.getOwnerByUser(ownerUser);
		int ownerid=owner.getU_id();
		List<Booking> ownerList= bookserv.showOwnerBookingList(ownerid);
		mav.addObject("list", ownerList);
		for(int i=0;i<ownerList.size();i++)
		{
		System.out.println(ownerList.get(i).getBookingid());
		}
		mav.setViewName("OwnerBookingList");
		return mav;
	}
	@RequestMapping("AcceptBooking/{bookingid}")/*owner can accept the booking made by user*/
	public ModelAndView acceptOwnerBooking(HttpSession session,@PathVariable("bookingid") int id)
    {
		ModelAndView mav=new ModelAndView();
		bookserv.acceptBooking(id);
   	 	infoBox("Booking Accepted..!", "Information !");
   	 	String ownerUser=(String)session.getAttribute("ownerUser");
		Owner owner=homeservice.getOwnerByUser(ownerUser);
		int ownerid=owner.getU_id();
		List<Booking> ownerList= bookserv.showOwnerBookingList(ownerid);
		mav.addObject("list", ownerList);
		mav.setViewName("OwnerBookingList");
    	return mav;
    }
	
	@RequestMapping("declineBookingowner/{bookingid}")/*owner can decline the booking made by user*/
	public ModelAndView getDeleteOwner(HttpSession session,@PathVariable("bookingid") int id)
    {
		ModelAndView mav=new ModelAndView();
		bookserv.declineBooking(id);
   	 	infoBox("Booking Deleted..!", "Information !");
   	 	String ownerUser=(String)session.getAttribute("ownerUser");
		Owner owner=homeservice.getOwnerByUser(ownerUser);
		int ownerid=owner.getU_id();
		List<Booking> ownerList= bookserv.showOwnerBookingList(ownerid);
		mav.addObject("list", ownerList);
		mav.setViewName("OwnerBookingList");
    	return mav;
    }
	 @RequestMapping("/logout")
	 public String logout(HttpSession session)
	 {
		 session.invalidate();
		return "home";
				
	 }
	
}