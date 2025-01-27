package com.cts.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cts.dao.homedao;
import com.cts.model.Owner;
import com.cts.model.PgDetailsnew;
@Service
public class HomeServicesImpl implements Homeinterface
{
	@Autowired
	private homedao homedao;

	public void setHomedao(homedao homedao) {
		this.homedao = homedao;
	}
	public void addPgdetails(PgDetailsnew uploadFile) {
		homedao.addPgdetails(uploadFile);
		
	}
	public List<PgDetailsnew> showPgdetails() {
		// TODO Auto-generated method stub
		return homedao.showPgdetails();
	}
	
	public Owner getOwnerByUser(String ownerUser) {
		return homedao.getOwnerByUser(ownerUser);
		
	}
	@Override
	public void PgUpdate(PgDetailsnew PgUpdate) {
		homedao.PgUpdate(PgUpdate);
		
	}
	public List<PgDetailsnew> getpgbyfilter(String faclity1, String faclity8,String latitude,String longitude,String range_in_m) {
		return homedao.getpgbyfilter( faclity1,faclity8,latitude,longitude,range_in_m);
	}
	
	public List<PgDetailsnew> showLocations() {
		// TODO Auto-generated method stub
		return homedao.showLocations();
	}
	
}
