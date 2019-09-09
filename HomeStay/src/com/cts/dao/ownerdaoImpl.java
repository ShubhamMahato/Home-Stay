package com.cts.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cts.model.Owner;


@Repository
public class ownerdaoImpl implements ownerdao
{
	@Autowired
private SessionFactory sf;
	
	
	
	public void setSession(SessionFactory sf) {
		this.sf = sf;
	}
	@Transactional
	public void addOwner(Owner owner) /*register the owner*/
	{
		sf.getCurrentSession().save(owner);
	}
	
	
	@Transactional
	@SuppressWarnings("unchecked")
	public boolean checkLoginOwner(String user_id, String password) /*login the owner using userid and password*/
	{
		System.out.println("In Check login");
		List<Owner> list = sf.getCurrentSession().createQuery("from Owner as o where o.user_id=? and o.password=? and status=1")
				.setParameter(0, user_id)
				.setParameter(1, password).list();
		boolean userFound = false;
		if ((list != null) && (list.size() > 0)) {
			userFound= true;
		}
		return userFound;              
   }
	
}
