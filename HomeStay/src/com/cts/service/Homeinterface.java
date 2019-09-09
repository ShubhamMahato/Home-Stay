package com.cts.service;

import java.util.List;
import com.cts.model.Owner;
import com.cts.model.PgDetailsnew;

public interface Homeinterface {
	public void addPgdetails(PgDetailsnew uploadFile);
	public List<PgDetailsnew> showPgdetails();
	public Owner getOwnerByUser(String ownerUser);
	public void PgUpdate(PgDetailsnew PgUpdate);
	public List<PgDetailsnew> getpgbyfilter(String faclity1, String faclity8,String latitude,String longitude,String range_in_m);
	public List<PgDetailsnew> showLocations();
}
