package com.cts.service;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cts.dao.BookingDao;
import com.cts.model.Booking;
import com.cts.model.Owner;
import com.cts.model.PgDetailsnew;
import com.cts.model.User;

@Service
public class BookingServiceImpl implements BookingService
{
	@Autowired
	private BookingDao bookingdao;
	
	public void setBookingdao(BookingDao bookingdao) {
		this.bookingdao = bookingdao;
	}

	@Override
	public void bookpg(Booking booking) {
		bookingdao.bookpg(booking);
	}

	@Override
	public int getOwnerId(int id) {
		
		return bookingdao.getOwnerId(id);
	}

	public Owner getID(int id){
		return bookingdao.getID(id);
		
	}

	@Override
	public User getUsername(String username) {
		return bookingdao.getUsername(username);
	}

	public List<Booking> showbooking(Integer UserId,Date bookingdate) {
		return bookingdao.showbooking(UserId,bookingdate);
	}
	public List<Booking> showUserBookingList(int UserId)
	{
		return bookingdao.showUserBookingList(UserId);
	}

	@Override
	public void declineBooking(int id) {
		bookingdao.declineBooking(id);
		
	}

	@Override
	public List<Booking> showOwnerBookingList(int UserId) {
		return bookingdao.showOwnerBookingList(UserId);
	}
	@Override
	public void acceptBooking(int id) {
		bookingdao.acceptBooking(id);
		
	}
	public PgDetailsnew getpgID(int u_id)
	{
		return bookingdao.getpgID(u_id);
	}
	
	
}