package com.DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.VO.WardVO;
@Repository
public class WardDAO {
	@Autowired
	SessionFactory sessionFactory;
	
		public void insert(WardVO wardVO) 
		{
		Session session=sessionFactory.openSession();
		 Transaction transaction=session.beginTransaction();
		 session.save(wardVO);
		 transaction.commit();
		 session.close();
		 }
	

	public List search()
	{
		List ls = new ArrayList();
		try
			{

			 Session session=sessionFactory.openSession();
			 
			 Query q = session.createQuery("from WardVO");
			 ls = q.list();	
			 session.close();
				
			}
		catch(Exception ex)
			{
				ex.printStackTrace();
			}
		return ls;

	}
	public void delete(WardVO wardVO)
	{
		try
			{
				
			 Session session=sessionFactory.openSession();
			 Transaction transaction=session.beginTransaction();
			 session.delete(wardVO);
			 transaction.commit();
			 session.close();
			}
		catch(Exception ex)
			{
				ex.printStackTrace();
			}
	}


	public List editsearch(WardVO wardVO)
	{
		List ls = new ArrayList();
		try
			{

			 Session session=sessionFactory.openSession();
			 
			 Query q = session.createQuery("from WardVO where wardId='"+wardVO.getWardId()+"'");
			 ls = q.list();	
			 session.close();
				
			}
		catch(Exception ex)
			{
				ex.printStackTrace();
			}
		return ls;


	}


	public void update(WardVO wardVO) {
	
		try{
		Session session=sessionFactory.openSession();
		 Transaction transaction=session.beginTransaction();
		 session.saveOrUpdate(wardVO);
		 transaction.commit();
		 session.close();
		}
		catch(Exception ex)
		{
		
		}
	
}
}
