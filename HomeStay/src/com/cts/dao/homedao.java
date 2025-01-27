package com.cts.dao;

import java.util.List;
import com.cts.model.Owner;
import com.cts.model.PgDetailsnew;

public interface homedao 
{
	public void addPgdetails(PgDetailsnew uploadFile); /*add the pgdata*/
	public List<PgDetailsnew> showPgdetails(); /*get the pg details*/
	public Owner getOwnerByUser(String ownerUser); /*get the owner data using userid*/
	public void PgUpdate(PgDetailsnew PgUpdate); /*update the pgdata*/
	public List<PgDetailsnew> getpgbyfilter(String faclity1, String faclity8,String latitude,String longitude,String range_in_m); /*filter the pg by the given zipcode and the range in km*/
	public List<PgDetailsnew> showLocations();/*show all the locations*/
	
}
