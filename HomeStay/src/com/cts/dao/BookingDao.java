package com.cts.dao;

import java.sql.Date;
import java.util.List;

import com.cts.model.Booking;
import com.cts.model.Owner;
import com.cts.model.PgDetailsnew;
import com.cts.model.User;

public interface BookingDao 
{
	public void bookpg(Booking booking);
	public int getOwnerId(int id);
	public Owner getID(int id);
	public User getUsername(String username);
	public List<Booking> showbooking(Integer UserId, Date bookingdate);
	public List<Booking> showUserBookingList(int UserId);
	public List<Booking> showOwnerBookingList(int UserId);
	public void declineBooking(int id);
	public void acceptBooking(int id);
	public PgDetailsnew getpgID(int u_id);
}