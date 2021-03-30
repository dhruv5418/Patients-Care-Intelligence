package com.DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.VO.LoginVO;



@Repository
public class LoginDAO {

	@Autowired
	SessionFactory sessionFactory;
	public void insert(LoginVO v1)
	{
		try
		{
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			session.save(v1);
			transaction.commit();
			session.close();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
}
	public void delete(LoginVO loginVO) {
		try
		{
			
		 Session session=sessionFactory.openSession();
		 Transaction transaction=session.beginTransaction();
		 session.delete(loginVO);
		 transaction.commit();
		 session.close();
		}
	catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}
	
	public List editsearch(LoginVO loginVO)
	{
		List ls = new ArrayList();
		try
			{

			 Session session=sessionFactory.openSession();
			 
			 Query q = session.createQuery("from LoginVO where loginId='"+loginVO.getLoginId()+"'");
			 ls = q.list();	
			 session.close();
				
			}
		catch(Exception ex)
			{
				ex.printStackTrace();
			}
		return ls;


	}
	public void update(LoginVO v1) {
		try{
			Session session=sessionFactory.openSession();
			 Transaction transaction=session.beginTransaction();
			 session.update(v1);
			 transaction.commit();
			 session.close();
			}
			catch(Exception ex)
			{
			
			}
	}
	public List getLoginId(LoginVO loginVO)
	{
		List ls = new ArrayList();
		try
			{

			 Session session=sessionFactory.openSession();
			 
			 Query q = session.createQuery("from LoginVO where email='"+loginVO.getEmail()+"'");
			 ls = q.list();	
			 session.close();
				
			}
		catch(Exception ex)
			{
				ex.printStackTrace();
			}
		return ls;

	}
	public List forgetpass(LoginVO loginVo) {
		// TODO Auto-generated method stub
		List ls = new ArrayList();
		try{
		Session s = sessionFactory.openSession();
		Transaction tr = s.beginTransaction();
		Query q = s.createQuery("from LoginVO where email= '"+loginVo.getEmail()+"'");
		ls = q.list();
		s.close();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			
		}
		return ls;
	}


	public void updatePassword(LoginVO loginVo) {
		// TODO Auto-generated method stub
		try{
			
			Session session = sessionFactory.openSession();
			Transaction tr= session.beginTransaction();
			Query q = session.createQuery("update LoginVO set password='"+loginVo.getPassword()+"' where email= '"+loginVo.getEmail()+"'");
			q.executeUpdate();
			tr.commit();
			}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}
}
