package com.cts.dao;
import org.springframework.stereotype.Repository;
import javax.transaction.Transactional;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import com.cts.model.PgDetailsnew;

@Repository
public class pgdaoimpl {
	@Autowired
	private SessionFactory sessionFactory;
	
		public SessionFactory getSessionFactory() {
		return sessionFactory;
		}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
		@Transactional
		public void adddetails(PgDetailsnew Det) { 
			sessionFactory.openSession();
			System.out.println("Pg Dao");
			sessionFactory.getCurrentSession().save(Det);
		
		
	}
	
	public PgDetailsnew getdetails(int pid) {
			PgDetailsnew pg1= (PgDetailsnew)sessionFactory.openSession().get(PgDetailsnew.class,pid);
			System.out.print("pg1"+ pg1);
			return pg1;
		
		
	}
}
