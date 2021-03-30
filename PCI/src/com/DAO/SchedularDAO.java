package com.DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.VO.SchedularVO;
@Repository
public class SchedularDAO {
@Autowired
SessionFactory sessionFactory;


	public void insert(SchedularVO schedularVO) {
	
	
	Session session=sessionFactory.openSession();
	 Transaction transaction=session.beginTransaction();
	 session.save(schedularVO);
	 transaction.commit();
	 session.close();
	 }


	public List search() {
		List ls = new ArrayList();
		try
			{

			 Session session=sessionFactory.openSession();
			 
			 Query q = session.createQuery("from SchedularVO");
			 ls = q.list();	
			 session.close();
				
			}
		catch(Exception ex)
			{
				ex.printStackTrace();
			}
		
		return ls;
	}


	public void delete(SchedularVO schedularVO) {
		try
		{
			
		 Session session=sessionFactory.openSession();
		 Transaction transaction=session.beginTransaction();
		 session.delete(schedularVO);
		 transaction.commit();
		 session.close();
		}
	catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}


	public List editsearch(SchedularVO schedularVO) {
		List ls = new ArrayList();
		try
			{

			 Session session=sessionFactory.openSession();
			 
			 Query q = session.createQuery("from SchedularVO where schedularId='"+schedularVO.getSchedularId()+"'");
			 ls = q.list();	
				
			}
		catch(Exception ex)
			{
				ex.printStackTrace();
			}
		
		return ls;
	}


	public void update(SchedularVO schedularVO) {
		Session session=sessionFactory.openSession();
		 Transaction transaction=session.beginTransaction();
		 session.saveOrUpdate(schedularVO);
		 transaction.commit();
		 session.close();
		
	}


	public List usersearch(SchedularVO schedularVO) {
		List ls = new ArrayList();
		try
			{

			 Session session=sessionFactory.openSession();
			 
			 Query q = session.createQuery("from SchedularVO where nurseVO_nurseId='"+schedularVO.getNurseVO().getNurseId()+"'");
			 ls = q.list();	
			 session.close();
				
			}
		catch(Exception ex)
		
			{
				ex.printStackTrace();
			}
		return ls;
	}



	
		
}


