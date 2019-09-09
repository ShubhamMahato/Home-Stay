package com.cts.dao;

import com.cts.model.Owner;

public interface ownerdao 
{
	public void addOwner(Owner user); /*register the owner*/
	public boolean checkLoginOwner(String user_id, String password); /*login the owner using userid and password*/
}
