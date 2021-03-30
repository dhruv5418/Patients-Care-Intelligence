package com.DAO;





import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.VO.ComplaintVO;
@Repository
public class ComplaintDAO {
	@Autowired
	SessionFactory sessionFactory;


	public void insertCom(ComplaintVO complaintVO) {
		try
		{
			Session session=sessionFactory.openSession();
			 Transaction transaction=session.beginTransaction();
			 session.save(complaintVO);
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
			 
			 Query q = session.createQuery("from ComplaintVO");
			 ls = q.list();	
			 session.close();
				
			}
		catch(Exception ex)
			{
				ex.printStackTrace();
			}
		return ls;

	}


	public List editsearch(ComplaintVO complaintVO) {
		
		List ls = new ArrayList();
		try
			{

			 Session session=sessionFactory.openSession();
			 
			 Query q = session.createQuery("from ComplaintVO where complaintId='"+complaintVO.getComplaintId()+"'");
			 ls = q.list();	
			 session.close();
			 
			 System.out.println(ls.size()+"dao");
				
			}
		catch(Exception ex)
			{
				ex.printStackTrace();
			}
		return ls;
	}


	public void compileReply(ComplaintVO complaintVO) {
		try{
			Session session=sessionFactory.openSession();
			 Transaction transaction=session.beginTransaction();
			 session.saveOrUpdate(complaintVO);
			 transaction.commit();
			 session.close();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
		
	}


	public List oldsearch(ComplaintVO complaintVO) {
		List ls = new ArrayList();
		try
			{

			 Session session=sessionFactory.openSession();
			 
			 Query q = session.createQuery("from ComplaintVO where lvo_loginId='"+complaintVO.getLvo().getLoginId()+"'");
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
