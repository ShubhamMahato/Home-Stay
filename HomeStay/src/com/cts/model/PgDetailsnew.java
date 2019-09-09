package com.cts.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="pgdetail1")

public class PgDetailsnew {
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;
	 
	@ManyToOne(cascade=CascadeType.ALL,fetch=FetchType.EAGER) /*mapping of the owner type*/
	@JoinColumn(name="OwnerId")
	private Owner owner;
	
	@Column(length=1000000) /*byte array with length*/
	private String encimg;
	
	public String getEncimg() {
		return encimg;
	}
	public void setEncimg(String encimg) {
		this.encimg = encimg;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Owner getOwner() {
		return owner;
	}
	public void setOwner(Owner owner) {
		this.owner = owner;
	}
	@Column(name="homestay")
	private String homestay;

	@Column(name="addressline1")
	private String addressline1;

	@Column(name="addressline2")
	private String addressline2;
	@Column
    private String city;
	@Column
    private String state;
	 
	@Column(name="zipcode")
	private String zipcode;

	@Column(name="mailId")
	private String mailId;

	@Column(name="contactno")
	private String contactno;
	
	@Column(name="altcontactno")
	private String altcontactno;
	
	@Column(name="faclity1")
	private String faclity1;
	@Column(name="faclity2")
	private String faclity2;
	@Column(name="faclity3")
	private String faclity3;
	@Column(name="faclity4")
	private String faclity4;
	@Column(name="faclity5")
	private String faclity5;
	@Column(name="faclity6")
	private String faclity6;
	@Column(name="faclity7")
	private String faclity7;
	@Column(name="faclity8")
	private String faclity8;
	@Column(name="faclity9")
	private String faclity9;
	@Column(name="faclity10")
	private String faclity10;

	public String getAddressline1() {
		return addressline1;
	}
	public void setAddressline1(String addressline1) {
		this.addressline1 = addressline1;
	}
	public String getAddressline2() {
		return addressline2;
	}
	public void setAddressline2(String addressline2) {
		this.addressline2 = addressline2;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	
	public String getContactno() {
		return contactno;
	}
	public void setContactno(String contactno) {
		this.contactno = contactno;
	}
	public String getAltcontactno() {
		return altcontactno;
	}
	public void setAltcontactno(String altcontactno) {
		this.altcontactno = altcontactno;
	}
	public String getFaclity1() {
		return faclity1;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getMailId() {
		return mailId;
	}
	public void setMailId(String mailId) {
		this.mailId = mailId;
	}
	public void setFaclity1(String faclity1) {
		this.faclity1 = faclity1;
	}
	public String getFaclity2() {
		return faclity2;
	}
	public void setFaclity2(String faclity2) {
		this.faclity2 = faclity2;
	}
	public String getFaclity3() {
		return faclity3;
	}
	public void setFaclity3(String faclity3) {
		this.faclity3 = faclity3;
	}
	public String getFaclity4() {
		return faclity4;
	}
	public void setFaclity4(String faclity4) {
		this.faclity4 = faclity4;
	}
	public String getFaclity5() {
		return faclity5;
	}
	public void setFaclity5(String faclity5) {
		this.faclity5 = faclity5;
	}
	public String getFaclity6() {
		return faclity6;
	}
	public void setFaclity6(String faclity6) {
		this.faclity6 = faclity6;
	}
	public String getFaclity7() {
		return faclity7;
	}
	public void setFaclity7(String faclity7) {
		this.faclity7 = faclity7;
	}
	public String getFaclity8() {
		return faclity8;
	}
	public void setFaclity8(String faclity8) {
		this.faclity8 = faclity8;
	}
	public String getFaclity9() {
		return faclity9;
	}
	public void setFaclity9(String faclity9) {
		this.faclity9 = faclity9;
	}
	public String getFaclity10() {
		return faclity10;
	}
	public void setFaclity10(String faclity10) {
		this.faclity10 = faclity10;
	}
	public String getHomestay() {
		return homestay;
	}
	public void setHomestay(String homestay) {
		this.homestay = homestay;
	}
	private String fileName;
	@Lob
	@Column(name="IMAGE", nullable=false, columnDefinition="blob")
    private byte[] image;
 
    @Column(name = "FILE_NAME")
    public String getFileName() {
        return fileName;
    }
     public void setFileName(String fileName) {
        this.fileName = fileName;
    }
	public byte[] getImage() {
		return image;
	}
	public void setImage(byte[] image) {
		this.image = image;
	}
    
    }
