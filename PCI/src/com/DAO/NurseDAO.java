package com.DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.VO.LoginVO;
import com.VO.NurseVO;
import com.VO.WardVO;

@Repository
public class NurseDAO {
	@Autowired
	SessionFactory sessionFactory;
	public void insert(NurseVO nurseVO) 
	{
	Session session=sessionFactory.openSession();
	 Transaction transaction=session.beginTransaction();
	 session.save(nurseVO);
	 transaction.commit();
	 session.close();
	 }
	public List search() {
		List ls = new ArrayList();
		try
			{

			 Session session=sessionFactory.openSession();
			 
			 Query q = session.createQuery("from NurseVO");
			 ls = q.list();	
			 session.close();
				
			}
		catch(Exception ex)
			{
				ex.printStackTrace();
			}
		return ls;

	}
	public void delete(NurseVO nurseVO) {
		try
		{
			
		 Session session=sessionFactory.openSession();
		 Transaction transaction=session.beginTransaction();
		 session.delete(nurseVO);
		 transaction.commit();
		 session.close();
		}
	catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
	}
	
	public List editsearch(NurseVO nurseVO)
	{
		List ls = new ArrayList();
		try
			{

			 Session session=sessionFactory.openSession();
			 
			 Query q = session.createQuery("from NurseVO where nurseId='"+nurseVO.getNurseId()+"'");
			 ls = q.list();	
			 session.close();
				
			}
		catch(Exception ex)
			{
				ex.printStackTrace();
			}
		return ls;


	}
	public void update(NurseVO nurseVO) {
		try{
			Session session=sessionFactory.openSession();
			 Transaction transaction=session.beginTransaction();
			 session.saveOrUpdate(nurseVO);
			 transaction.commit();
			 session.close();
			}
			catch(Exception ex)
			{
			
			}
		
	}
	public List searchNurse(NurseVO nurseVO) 
	{
		List ls = new ArrayList();
		try
			{

			 Session session=sessionFactory.openSession();
			 
			 Query q = session.createQuery("from NurseVO where lvo_loginId='"+nurseVO.getLvo().getLoginId()+"'");
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
