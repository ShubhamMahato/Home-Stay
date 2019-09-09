package com.cts.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cts.dao.ownerdao;
import com.cts.model.Owner;
@Service
public class OwnerServiceImpl implements Ownerinterface
{
	@Autowired
	private ownerdao ownerdao;

	public void setOwnerdao(ownerdao ownerdao) {
		this.ownerdao = ownerdao;
	}
	
	public void addOwner(Owner owner)
	{
		ownerdao.addOwner(owner);
	}
	 public boolean checkLoginOwner(String user_id, String password){
         System.out.println("In Service class...Check Login");
         return ownerdao.checkLoginOwner(user_id, password);
  }
	
}
