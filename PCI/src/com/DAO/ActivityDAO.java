package com.DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ActivityDAO {

	@Autowired
	SessionFactory sessionFactory;

	public List search() {
		List ls = new ArrayList();
		try
			{

			 Session session=sessionFactory.openSession();
			 
			 Query q = session.createQuery("from ActivityVO");
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
