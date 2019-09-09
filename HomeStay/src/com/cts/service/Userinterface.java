package com.cts.service;

import com.cts.model.User;

public interface Userinterface {

	public void addUser(User user);
	 public boolean checkLogin(String user_id, String password);
}
