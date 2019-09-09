package com.cts.service;

import java.util.List;

import com.cts.model.Owner;
import com.cts.model.User;

public interface AdminService 
{
	public boolean checkLogin(String user_id, String password);
	public List<User>getAllAcceptedUser();
	public List<User> getAllUser();
	public List<Owner> getPgOwnerRequests();
	public List<Owner> getAllAcceptedowners();
	public void deleteUser(int id);
	public void AcceptUser(int id);
	public List<User>getDeletedUsers();
	public void deleteOwner(int id);
	public void AcceptOwner(int id);
	public List<User>getDeletedOwners();
}
