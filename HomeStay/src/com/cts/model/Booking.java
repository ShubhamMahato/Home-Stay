package com.cts.model;

import java.time.LocalDate;
import java.util.Date;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


@Entity
@Table(name="booking11")
public class Booking 
{
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)

	private Integer bookingid; 
	
	
	@Column(name="bookingdate")
	@Temporal(TemporalType.DATE)/* date type temporal date for date only,the date which will be incremented according the time to shift*/
	private Date bookingdate;
	@Column(name="Booking_show")
	@Temporal(TemporalType.DATE) /* date type temporal date for date only, the booking date which will be shown to the user and owner bookings*/
	private Date Booking_show;
	

	public java.sql.Date getBooking_show(String t) { /*converting date type to the local date*/
LocalDate l=LocalDate.parse(t);
		
		return java.sql.Date.valueOf(l);
		
	}
	

	

	public void setBooking_show(java.sql.Date booking_show) {
		this.Booking_show = booking_show;
	}

	public Integer getBookingid() {
		return bookingid;
	}

	public void setBookingid(Integer bookingid) {
		this.bookingid = bookingid;
	}
	@ManyToOne(cascade=CascadeType.ALL,fetch=FetchType.EAGER)/*mapping of the owner type*/
	@JoinColumn(name="OwnerId")
	private Owner owner;
	
	@ManyToOne(cascade=CascadeType.ALL,fetch=FetchType.EAGER) /*mapping of the user type*/
	@JoinColumn(name="UserId")
	private User user;
/*	private String userid;*/
	private String firstname;
	private String lastname;
	private String pgname;
	private int accept_status=0;
	public int getAccept_status() {
		return accept_status;
	}

	public void setAccept_status(int accept_status) {
		this.accept_status = accept_status;
	}

	public int getDelete_status() {
		return delete_status;
	}

	public void setDelete_status(int delete_status) {
		this.delete_status = delete_status;
	}
	private int delete_status=0;
	/*public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}*/

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getPgname() {
		return pgname;
	}

	public void setPgname(String pgname) {
		this.pgname = pgname;
	}

	public java.sql.Date getBookingdate(String s) {
		LocalDate l=LocalDate.parse(s);
		
		return java.sql.Date.valueOf(l);
	}

	

	public void setBookingdate(java.sql.Date date) {
		this.bookingdate = date;
	}

	public Owner getOwner() {
		return owner;
	}

	public void setOwner(Owner owner) {
		this.owner = owner;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	

}
