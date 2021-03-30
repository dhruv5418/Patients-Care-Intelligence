package com.DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.VO.DatasetVO;
@Repository
public class DatasetDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	public void insert(DatasetVO datasetVO) {

		Session session=sessionFactory.openSession();
		 Transaction transaction=session.beginTransaction();
		 session.save(datasetVO);
		 transaction.commit();
		 session.close();
	}

	public List search() {
		List ls = new ArrayList();
		try
			{

			 Session session=sessionFactory.openSession();
			 
			 Query q = session.createQuery("from DatasetVO");
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
