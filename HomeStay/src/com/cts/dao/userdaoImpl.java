package com.cts.dao;

import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cts.model.User;
@Repository
public class userdaoImpl implements userdao
{
	@Autowired
	private SessionFactory sf;
	
	
	
	public void setSession(SessionFactory sf) {
		this.sf = sf;
	}


	@Transactional
	public void addUser(User user) { /*register the user*/
		// TODO Auto-generated method stub
        
       

		sf.getCurrentSession().save(user);
	}
	
	
		
		@Transactional
		@SuppressWarnings("unchecked") /*login the user using userid and password*/
		public boolean checkLogin(String user_id, String password)
		{
			System.out.println("In Check login");
			List<User> list = sf.getCurrentSession().createQuery("from User as o where o.user_id=? and o.password=? and status=1")
					.setParameter(0, user_id)
					.setParameter(1, password).list();
			boolean userFound = false;
			if ((list != null) && (list.size() > 0)) {
				userFound= true;
			}
			return userFound;              
	   }
	

}
