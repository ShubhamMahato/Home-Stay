package com.cts.dao;

import java.util.List;

import com.cts.model.Owner;
import com.cts.model.User;

public interface AdminDao 
{
	public boolean checkLogin(String user_id, String password);
	public List<User>getAllAcceptedUser();
	public List<User> getAllUser();
	public List<Owner> getPgOwnerRequests();
	public List<Owner> getAllAcceptedowners();
	public List<User>getDeletedUsers();
	public void deleteUser(int id);
	public void AcceptUser(int id);
	public void deleteOwner(int id);
	public void AcceptOwner(int id);
	public List<User>getDeletedOwners();
}
