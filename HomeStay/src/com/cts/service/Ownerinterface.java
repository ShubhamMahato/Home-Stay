package com.cts.service;

import com.cts.model.Owner;

public interface Ownerinterface 
{
	public void addOwner(Owner owner);
	public boolean checkLoginOwner(String user_id, String password);
}
