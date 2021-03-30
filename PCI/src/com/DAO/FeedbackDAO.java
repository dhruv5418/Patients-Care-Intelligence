package com.DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.VO.FeedbackVO;
@Repository
public class FeedbackDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	public void insertFeedback(FeedbackVO feedbackVO) {
		try
		{
			Session session=sessionFactory.openSession();
			 Transaction transaction=session.beginTransaction();
			 session.save(feedbackVO);
			 transaction.commit();
			 session.close();
		}
		
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}

	public List search() {
		List ls = new ArrayList();
		try
			{

			 Session session=sessionFactory.openSession();
			 
			 Query q = session.createQuery("from FeedbackVO");
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
