package com.cts.model;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="user_register")
public class User 
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="u_id")
	private Integer u_id;
	
	@OneToMany(mappedBy="user", orphanRemoval = true,fetch=FetchType.EAGER)
	private List<Booking> booking;
	
	@Column(name="first_name")
	@NotEmpty(message="firstname should not be blank")
	@Pattern(regexp="^[A-Za-z]+$" ,message="Invalid FirstName")
	@Size(min=1,max=50,message="FirstName must be between 1 to 50 characters")
	private String first_name;
	
	
	@Column(name="last_name")
	@NotEmpty(message="lastname should not be blank")
	@Pattern(regexp="^[A-Za-z]+$" ,message="Invalid LastName")
    @Size(min=1,max=50,message="LastName must be between 1 to 50 characters")
	private String last_name;
	
	
	@Column(name="age")
	@NotEmpty(message="age should not be blank")
    @Pattern(regexp="^[0-9]+$" ,message="Invalid Age")
	private String age;
	
	@NotEmpty(message="Gender  must not be blank")
	@Column(name="gender")
	private String gender;
	
	
	@Column(name="contact_number")
	@NotEmpty(message="contact_number should not be blank")
	@Size(min=10,max=10,message="ContactNumber must be 10 characters")
    @Pattern(regexp="^[0-9]+$" ,message="Invalid ContactNumber")
	private String contact_number;

	
	@Column(name="email")
	@Email(message = "Email should be valid")
	private String email;
	
	
	@Column(name="user_id")
	@NotEmpty(message="user id should not be blank")
	@Pattern(regexp="^[A-Za-z0-9]+$" ,message="Invalid UserID")
    @Size(min=1,max=15,message="UserID must be between 1 to 15 characters")
	private String user_id;
	
	
	@Column(name="password")
	@NotEmpty(message="password should not be blank")
	@Size(min=8,max=15,message="Password must be atleast 8 characters")
	private String password;
	
	@Column(name="status")
	private int status=0;
	
	@Column(name="delete_status")
	private int delete_status=0;

	
	public Integer getU_id() {
		return u_id;
	}
	public void setU_id(Integer u_id) {
		this.u_id = u_id;
	}
	public List<Booking> getBooking() {
		return booking;
	}
	public void setBooking(List<Booking> booking) {
		this.booking = booking;
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
