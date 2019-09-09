package com.cts.dao;

import com.cts.model.User;

public interface userdao {
	
	public void addUser(User user); /*register the user*/
	public boolean checkLogin(String user_id, String password); /*login the user using userid and password*/

}
