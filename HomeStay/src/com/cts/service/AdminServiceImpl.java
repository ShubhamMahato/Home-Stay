package com.cts.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cts.dao.AdminDao;
import com.cts.model.Owner;
import com.cts.model.User;

@Service
public class AdminServiceImpl implements AdminService
{
	@Autowired
	private AdminDao admindao;
	 public boolean checkLogin(String user_id, String password){
         System.out.println("In Service class...Check Login");
         return admindao.checkLogin(user_id, password);
  }
	@Override
	public List<User> getAllAcceptedUser() {
		List<User>UserList=admindao.getAllAcceptedUser();
		return UserList;
	}
	@Override
	public List<User> getAllUser() {
		
		return admindao.getAllUser();
	}
	public List<User>getDeletedUsers(){
		List<User>deletedList=admindao.getDeletedUsers();
		return deletedList;
	}
	@Override
	public List<Owner> getPgOwnerRequests() {
		
		return admindao.getPgOwnerRequests();
	}
	@Override
	public List<Owner> getAllAcceptedowners() {
		// TODO Auto-generated method stub
		return admindao.getAllAcceptedowners();
	}
	@Override
	public void deleteUser(int id) {
		admindao.deleteUser(id);
		
	}
	@Override
	public void AcceptUser(int id) {
		admindao.AcceptUser(id);;
		
	}
	@Override
	public void deleteOwner(int id) {
		admindao.deleteOwner(id);
		
	}
	@Override
	public void AcceptOwner(int id) {
		admindao.AcceptOwner(id);
		
	}
	public List<User>getDeletedOwners(){
		List<User>deletedList=admindao.getDeletedOwners();
		return deletedList;
	}
	
	
}
