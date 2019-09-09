package com.cts.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name="locations")
public class Locations 
{
	@Id
	@Column(name="zip")
	private Integer zip;
	
	@Column(name="place_name")
	private String place_name;
	
	@Column(name="admin_name1")
	private String admin_name1;
	
	@Column(name="latitude")
	private double latitude;
	
	@Column(name="longitude")
	private double longitude;
	
	@Column(name="accuracy")
	private double accuracy;
	
	
	@Override
	public String toString() {
		return "zip= " + zip ;
	}

	public int getZip() {
		return zip;
	}

	public void setZip(int zip) {
		this.zip = zip;
	}

	public String getPlace_name() {
		return place_name;
	}

	public void setPlace_name(String place_name) {
		this.place_name = place_name;
	}

	public String getAdmin_name1() {
		return admin_name1;
	}

	public void setAdmin_name1(String admin_name1) {
		this.admin_name1 = admin_name1;
	}

	public double getLatitude() {
		return latitude;
	}

	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}

	public double getLongitude() {
		return longitude;
	}

	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}

	public double getAccuracy() {
		return accuracy;
	}

	public void setAccuracy(double accuracy) {
		this.accuracy = accuracy;
	}


	
	
}
