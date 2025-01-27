package com.cts.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.transaction.Transactional;
import org.hibernate.Criteria;
import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.cts.model.Owner;
import com.cts.model.PgDetailsnew;

@Repository
@Transactional
public class homedaoimpl implements homedao
{
	
	
	@Autowired
	private SessionFactory sf;
	
	public void setSession(SessionFactory sf) {
		this.sf = sf;
	}
	

	@Transactional
	public void addPgdetails(PgDetailsnew pgdetails) {
		
		sf.getCurrentSession().save(pgdetails);
	}

	@Transactional
	@SuppressWarnings("unchecked")
	public List<PgDetailsnew> showPgdetails() { /*add the pgdata*/
		
		List<PgDetailsnew> list=sf.getCurrentSession().createQuery("from PgDetailsnew").list();
		if(list.size()==0||list==null)
			System.out.println("deep");
		return list;
	}

	@Override
	@SuppressWarnings("unchecked")
	public Owner getOwnerByUser(String ownerUser) { /*get the owner data using userid*/
		
		List<Owner> list=sf.getCurrentSession().createQuery("from Owner where user_id=? ").setParameter(0, ownerUser).list();
		
		return (Owner)list.get(0);
	}

	@Override
	public void PgUpdate(PgDetailsnew PgUpdate) { /*update the pgdata*/
		sf.getCurrentSession().update(PgUpdate);
		
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<PgDetailsnew> getpgbyfilter(String faclity1, String faclity8,String latitude,String longitude,String range_in_m) {
		List<PgDetailsnew>  pgList = new ArrayList<PgDetailsnew>();  /*filter the pg by the given zipcode and the range in km*/
		 if(faclity1.equals("None")&& faclity8.equals("None"))
		{
			System.out.println("facility1 and facility8 is equals to none");
			String sql = "SELECT zip, (((acos(sin(("+latitude+"*pi()/180)) * sin((dest.latitude*pi()/180))+cos(("+latitude+"*pi()/180))*cos((dest.latitude*pi()/180))*cos((("+longitude+"-dest.longitude)*pi()/180))))*180/pi())*60*1.1515*1609.344) as distance FROM ctsuser1.locations AS dest HAVING distance < "+range_in_m+" ORDER BY distance ASC LIMIT 10000000";
	        SQLQuery query = sf.getCurrentSession().createSQLQuery(sql);
	        query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
	        ArrayList<String>al=new ArrayList<String>();
	        @SuppressWarnings("rawtypes")
			List data = query.list();

	        for(Object object : data) {
	        	 @SuppressWarnings("rawtypes")
	           Map row = (Map)object;
	           al.add( row.get("zip").toString());
	           System.out.print("zip: " + row.get("zip"));
	           System.out.print("distance " + row.get("distance")+"\n");
	        }
	        for(int i=0;i<al.size();i++)
	        {
	        	System.out.println(al.get(i));
	        }
	        
	        for(int i=0;i<al.size();i++)
	        {
	        	String pin = al.get(i);
	        	List<PgDetailsnew> tempList = sf.getCurrentSession().createQuery("from PgDetailsnew where zipcode = ? ").setParameter(0, pin)
	        			.list();
	        	if(tempList!=null&&tempList.size()!=0)
	        	{
	        		System.out.println("deep"+pin);
	        		pgList.addAll(tempList);
	        	}
	        }
		}
		 else if(faclity1.equals("None"))
		{
			System.out.println("facility1 is equals to none");
			String sql = "SELECT zip, (((acos(sin(("+latitude+"*pi()/180)) * sin((dest.latitude*pi()/180))+cos(("+latitude+"*pi()/180))*cos((dest.latitude*pi()/180))*cos((("+longitude+"-dest.longitude)*pi()/180))))*180/pi())*60*1.1515*1609.344) as distance FROM ctsuser1.locations AS dest HAVING distance < "+range_in_m+" ORDER BY distance ASC LIMIT 10000000";
	        SQLQuery query = sf.getCurrentSession().createSQLQuery(sql);
	        query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
	        ArrayList<String>al=new ArrayList<String>();
	        @SuppressWarnings("rawtypes")
	        List data = query.list();

	        for(Object object : data) {
	        	@SuppressWarnings("rawtypes")
	           Map row = (Map)object;
	           al.add( row.get("zip").toString());
	           System.out.print("zip: " + row.get("zip"));
	           System.out.print("distance " + row.get("distance")+"\n");
	        }
	        for(int i=0;i<al.size();i++)
	        {
	        	System.out.println(al.get(i));
	        }
	        
	        
	        for(int i=0;i<al.size();i++)
	        {
	        	String pin = al.get(i);
	        	List<PgDetailsnew> tempList = sf.getCurrentSession().createQuery("from PgDetailsnew where zipcode = ? and faclity8 = ?").setParameter(0, pin).setParameter(1, faclity8)
	        			.list();
	        	if(tempList!=null&&tempList.size()!=0)
	        	{
	        		System.out.println("deep"+pin);
	        		pgList.addAll(tempList);
	        	}
	        }
		}
		else if(faclity8.equals("None"))
		{
			System.out.println("facility8 is equals to none");
			String sql = "SELECT zip, (((acos(sin(("+latitude+"*pi()/180)) * sin((dest.latitude*pi()/180))+cos(("+latitude+"*pi()/180))*cos((dest.latitude*pi()/180))*cos((("+longitude+"-dest.longitude)*pi()/180))))*180/pi())*60*1.1515*1609.344) as distance FROM ctsuser1.locations AS dest HAVING distance < "+range_in_m+" ORDER BY distance ASC LIMIT 10000000";
	        SQLQuery query = sf.getCurrentSession().createSQLQuery(sql);
	        query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
	        ArrayList<String>al=new ArrayList<String>();
	        @SuppressWarnings("rawtypes")
	        List data = query.list();

	        for(Object object : data) {
	        	@SuppressWarnings("rawtypes")
	           Map row = (Map)object;
	           al.add( row.get("zip").toString());
	           System.out.print("zip: " + row.get("zip"));
	           System.out.print("distance " + row.get("distance")+"\n");
	        }
	        for(int i=0;i<al.size();i++)
	        {
	        	System.out.println(al.get(i));
	        }
	        
	        
	        for(int i=0;i<al.size();i++)
	        {
	        	String pin = al.get(i);
	        	List<PgDetailsnew> tempList = sf.getCurrentSession().createQuery("from PgDetailsnew where zipcode = ? and faclity1 = ?").setParameter(0, pin).setParameter(1, faclity1)
	        			.list();
	        	if(tempList!=null&&tempList.size()!=0)
	        	{
	        		System.out.println("deep"+pin);
	        		pgList.addAll(tempList);
	        	}
	        }
		}
		
		else
		{
			String sql = "SELECT zip, (((acos(sin(("+latitude+"*pi()/180)) * sin((dest.latitude*pi()/180))+cos(("+latitude+"*pi()/180))*cos((dest.latitude*pi()/180))*cos((("+longitude+"-dest.longitude)*pi()/180))))*180/pi())*60*1.1515*1609.344) as distance FROM ctsuser1.locations AS dest HAVING distance < "+range_in_m+" ORDER BY distance ASC LIMIT 10000000";
	        SQLQuery query = sf.getCurrentSession().createSQLQuery(sql);
	        query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
	        ArrayList<String>al=new ArrayList<String>();
	        @SuppressWarnings("rawtypes")
	        List data = query.list();

	        for(Object object : data) {
	        	@SuppressWarnings("rawtypes")
	           Map row = (Map)object;
	           al.add( row.get("zip").toString());
	           System.out.print("zip: " + row.get("zip"));
	           System.out.print("distance " + row.get("distance")+"\n");
	        }
	        for(int i=0;i<al.size();i++)
	        {
	        	System.out.println(al.get(i));
	        }
	        
	        for(int i=0;i<al.size();i++)
	        {
	        	String pin = al.get(i);
	        	List<PgDetailsnew> tempList = sf.getCurrentSession().createQuery("from PgDetailsnew where zipcode = ? and faclity8 = ? and faclity1 = ?").setParameter(0, pin).setParameter(1, faclity8).setParameter(2, faclity1)
	        			.list();
	        	if(tempList!=null&&tempList.size()!=0)
	        	{
	        		System.out.println("deep"+pin);
	        		pgList.addAll(tempList);
	        	}
	        }
		}
          
        
		
		return pgList;
		
		
	}
	
	
	@Transactional
	@SuppressWarnings({ "unchecked", "null" })
	public List<PgDetailsnew> showLocations() { /*show all the locations*/
		double lat=31.63310;
		double log=74.86560;
		int distance=25000;
		String sql = "SELECT zip, (((acos(sin(("+lat+"*pi()/180)) * sin((dest.latitude*pi()/180))+cos(("+lat+"*pi()/180))*cos((dest.latitude*pi()/180))*cos((("+log+"-dest.longitude)*pi()/180))))*180/pi())*60*1.1515*1609.344) as distance FROM ctsuser1.locations AS dest HAVING distance < "+distance+" ORDER BY distance ASC LIMIT 100";
        SQLQuery query = sf.getCurrentSession().createSQLQuery(sql);
        query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
        ArrayList<String>al=new ArrayList<String>();
        @SuppressWarnings("rawtypes")
        List data = query.list();

        for(Object object : data) 
        {
        	 @SuppressWarnings("rawtypes")
           Map row = (Map)object;
           al.add( row.get("zip").toString());
           System.out.print("zip: " + row.get("zip"));
           System.out.print("distance " + row.get("distance")+"\n");
        }
        for(int i=0;i<al.size();i++)
        {
        	System.out.println(al.get(i));
        }
        
        List<PgDetailsnew>  pgList = new ArrayList<PgDetailsnew>();
        for(int i=0;i<al.size();i++)
        {
        	String pin = al.get(i);
        	List<PgDetailsnew> tempList = sf.getCurrentSession().createQuery("from PgDetailsnew where zipcode = ?").setParameter(0, pin)
        			.list();
        	if(tempList!=null&&tempList.size()!=0)
        	{
        		System.out.println("deep"+pin);
        		pgList.addAll(tempList);
        	}
        }
        
        
        
		
		return pgList;
}
}
