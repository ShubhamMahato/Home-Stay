package com.cts.model;

import java.util.List;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name="owner_register2")
public class Owner 
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer u_id;
	
	@OneToMany(mappedBy="owner",fetch=FetchType.EAGER) /*mapping of the pg details type*/
	private List<PgDetailsnew> pgdetails;
	
	@OneToMany(mappedBy="owner",fetch=FetchType.EAGER)
	private Set<Booking> booking;
	
	@Column(name="first_name")
	private String first_name;
	
	
	@Column(name="last_name")
	private String last_name;
	
	
	@Column(name="age")
	private String age;
	

	@Column(name="gender")
	private String gender;
	
	
	@Column(name="contact_number")
	private String contact_number;

	
	@Column(name="email")
	private String email;
	
	
	@Column(name="user_id")
	private String user_id;
	
	
	@Column(name="password")
	private String password;

	@Column(name="status")
	private int status=0;
	
	@Column(name="delete_status")
	private int delete_status=0;

	public Set<Booking> getBooking() {
		return booking;
	}


	public void setBooking(Set<Booking> booking) {
		this.booking = booking;
	}


	public Integer getU_id() {
		return u_id;
	}


	public void setU_id(Integer u_id) {
		this.u_id = u_id;
	}

	

	public List<PgDetailsnew> getPgdetails() {
		return pgdetails;
	}


	public void setPgdetails(List<PgDetailsnew> pgdetails) {
		this.pgdetails = pgdetails;
	}


	public String getFirst_name() {
		return first_name;
	}


	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}


	public String getLast_name() {
		return last_name;
	}


	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}


	public String getAge() {
		return age;
	}


	public void setAge(String age) {
		this.age = age;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getContact_number() {
		return contact_number;
	}


	public void setContact_number(String contact_number) {
		this.contact_number = contact_number;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getUser_id() {
		return user_id;
	}


	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public int getStatus() {
		return status;
	}


	public void setStatus(int status) {
		this.status = status;
	}


	public int getDelete_status() {
		return delete_status;
	}


	public void setDelete_status(int delete_status) {
		this.delete_status = delete_status;
	}
	
	
	
	
}
