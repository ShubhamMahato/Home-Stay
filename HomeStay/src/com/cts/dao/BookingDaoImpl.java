package com.cts.dao;

import java.sql.Date;
import java.util.List;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.cts.model.Booking;
import com.cts.model.Owner;
import com.cts.model.PgDetailsnew;
import com.cts.model.User;


@Repository
@Transactional
public class BookingDaoImpl implements BookingDao
{
	@Autowired
	private SessionFactory sf;
	
	public void setSession(SessionFactory sf) {
		this.sf = sf;
	}

	public void bookpg(Booking booking)/* save the booking details*/
	{
		sf.getCurrentSession().save(booking);
	}
	public int getOwnerId(int id) { /*get the owner user_id by the uid*/
		
		PgDetailsnew pg = (PgDetailsnew)sf.getCurrentSession().get(PgDetailsnew.class, id);
		
		return Integer.parseInt(pg.getOwner().getUser_id());
	}
	@SuppressWarnings("unchecked")
	public Owner getID(int u_id)  /*get the owner data by the uid*/
	{ 
		List<Owner> list=sf.getCurrentSession().createQuery("from Owner where u_id=? ").setParameter(0, u_id).list();
		return (Owner) list.get(0);
	}
	@SuppressWarnings("unchecked") /*get all the pg details*/
	public PgDetailsnew getpgID(int u_id)
	{
		List<PgDetailsnew> list=sf.getCurrentSession().createQuery("from PgDetailsnew where id=? ").setParameter(0, u_id).list();
		return (PgDetailsnew) list.get(0);
	}

	@Override
	@SuppressWarnings("unchecked")
	public User getUsername(String username) { /*get all the user details using the user_id*/
		
		List<User> list=sf.getCurrentSession().createQuery("from User where user_id=? ").setParameter(0, username).list();
		return (User)list.get(0);
	}
	@SuppressWarnings("unchecked")
	public List<Booking> showbooking(Integer UserId, Date bookingdate) /* get all the booking details*/
	{
		List<Booking> list=sf.getCurrentSession().createQuery("from Booking where UserId=? and bookingdate<=? and accept_status=0 and delete_status=0 ").setParameter(0,UserId).setParameter(1,bookingdate).list();
		for(int i=0;i<list.size();i++)
		{
			int id=list.get(i).getBookingid();
			Session session = this.sf.getCurrentSession();
			Query query=session.createQuery("update Booking set delete_status=1  where bookingid = ?");
			query.setParameter(0,id);
			query.executeUpdate();
		}
		return list;
	}
	@SuppressWarnings("unchecked")
	public List<Booking> showUserBookingList(int UserId)/*all bookings of user are displayed*/
	{
		List<Booking> list=sf.getCurrentSession().createQuery("from Booking where UserId=? and delete_status=0 and accept_status=0").setParameter(0,UserId).list();
		return list;
	}
	@Transactional
	public void declineBooking(int id)/*a particular booking is declined  */
	{
		Session session = this.sf.getCurrentSession();
		Query query=session.createQuery("update Booking set delete_status=1 where bookingid = ?");
		query.setParameter(0,id);
		query.executeUpdate();
	}

	@Override/*show all bookings of a particular owner  */
	@SuppressWarnings("unchecked")
	public List<Booking> showOwnerBookingList(int UserId) {
		List<Booking> list=sf.getCurrentSession().createQuery("from Booking where OwnerId=? and delete_status=0 and accept_status=0").setParameter(0,UserId).list();
		return list;
	}

	@Transactional
	public void acceptBooking(int id)/*booking is accepted*/
	{
		Session session = this.sf.getCurrentSession();
		Query query=session.createQuery("update Booking set accept_status=1 where bookingid = ?");
		query.setParameter(0,id);
		query.executeUpdate();
	}
	

}