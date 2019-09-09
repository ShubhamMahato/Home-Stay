package com.cts.dao;

import java.util.List;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.cts.model.Admin;
import com.cts.model.Owner;
import com.cts.model.User;

@Repository
public class AdminDaoImpl implements AdminDao
{
	@Autowired
	private SessionFactory sf;
	public void setSession(SessionFactory sf) 
	{
		this.sf = sf;
	}
	@Transactional
	@SuppressWarnings("unchecked")
	public boolean checkLogin(String admin_id, String password)/*admin's credentials checked and logins the admin*/
	{
		System.out.println("In Check login");
		List<Admin> list = sf.getCurrentSession().createQuery("from Admin as o where o.admin_id=? and o.password=?")
				.setParameter(0, admin_id)
				.setParameter(1, password).list();
		boolean userFound = false;
		if ((list != null) && (list.size() > 0)) {
			userFound= true;
		}
		return userFound;              
   }
	@Transactional
	@SuppressWarnings("unchecked")
	public List<User> getAllAcceptedUser() /*displays all accepted users requests by admin*/
	{
		List<User> UserList=sf.getCurrentSession().createQuery("from User where status=0 and delete_status=0").list();
		return UserList;
	}
	@Transactional
	@SuppressWarnings("unchecked")
	public List<User> getAllUser() /*displays all user requests to admin*/
	{
		List<User> user=sf.getCurrentSession().createQuery("from User where status=1 and delete_status=0").list();
		return user;
	}
	@Transactional
	@SuppressWarnings("unchecked")
	public List<User> getDeletedUsers() /*displays all deleted users requests by admin*/
	{
		List<User> user=sf.getCurrentSession().createQuery("from User where delete_status=1").list();
		return user;
	}
	@Transactional
	@SuppressWarnings("unchecked")
	public List<Owner> getPgOwnerRequests()/*displays all pg owners requests to register their pg to admin*/
	{
		List<Owner>owner=sf.getCurrentSession().createQuery("from Owner where status=0 and delete_status=0").list();
		return owner;
	}
	@Transactional
	@SuppressWarnings("unchecked")
	public List<Owner> getAllAcceptedowners() /*displays all accepted  pg owners requests  to admin*/
	{
		List<Owner>owner=sf.getCurrentSession().createQuery("from Owner where status=1 and delete_status=0").list();
		return owner;
	}
	
	@Transactional
	public void deleteUser(int id)/*admin can delete a user request*/
	{
		Session session = this.sf.getCurrentSession();
		Query query=session.createQuery("update User set delete_status=1,status=0  where u_id = ?");
		query.setParameter(0,id);
		query.executeUpdate();
	}
	
	@Transactional
	public void AcceptUser(int id)/*admin can accept a user request*/
	{
		Session session = this.sf.getCurrentSession();
		Query query=session.createQuery("update User set status=1,delete_status=0  where u_id = ?");
		query.setParameter(0,id);
		query.executeUpdate();
	}
	@Transactional
	public void deleteOwner(int id) /*admin can delete a owner request*/
	{
		Session session = this.sf.getCurrentSession();
		Query query=session.createQuery("update Owner set delete_status=1,status=0  where u_id = ?");
		query.setParameter(0,id);
		query.executeUpdate();	
	}
	@Transactional
	public void AcceptOwner(int id) /*admin can accept a owner request*/
	{	
		Session session = this.sf.getCurrentSession();
		Query query=session.createQuery("update Owner set status=1, delete_status=0  where u_id = ?");
		query.setParameter(0,id);
		query.executeUpdate();
	}
	@Transactional
	@SuppressWarnings("unchecked")
	public List<User> getDeletedOwners() /*all deleted owner requests are displayed*/
	{
		List<User> user=sf.getCurrentSession().createQuery("from Owner where delete_status=1").list();
		return user;
	}
	
}
