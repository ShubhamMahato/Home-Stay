package com.cts.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cts.dao.userdao;
import com.cts.model.User;

@Service
public class UserServicesImpl implements Userinterface{
	
	@Autowired
	private userdao userdao;
	public void setUserdao(userdao userdao)
	{
		this.userdao = userdao;
	}
	
	public void addUser(User user)
	{
		userdao.addUser(user);
	}
	

	  
       public boolean checkLogin(String user_id, String password){
              System.out.println("In Service class...Check Login");
              return userdao.checkLogin(user_id, password);
       }



}
