package com.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.DAO.ComplaintDAO;
import com.DAO.LoginDAO;
import com.VO.ComplaintVO;
import com.VO.LoginVO;



@Controller
public class ComplaintController {

	@Autowired
	ComplaintDAO complaintDAO;
	
	@Autowired
	LoginDAO loginDAO;
	
	@RequestMapping(value="complaint.html",method=RequestMethod.GET)
	public ModelAndView addcomplaint()
		{
			return new ModelAndView("user/complaint","data",new ComplaintVO());
		}
	
	@RequestMapping(value="insertComplaint.html",method=RequestMethod.POST)
	public ModelAndView insertCom(@ModelAttribute ComplaintVO complaintVO,LoginVO loginVO,HttpSession session)
	{
		int loginId=(Integer)session.getAttribute("loginId");
		loginVO.setLoginId(loginId);
		complaintVO.setLvo(loginVO);
		
		
		Date d=new Date();
		DateFormat date=new SimpleDateFormat("dd/MM/YYYY");
		DateFormat time=new SimpleDateFormat("HH:mm:ss");
		
		complaintVO.setDate(date.format(d));
		complaintVO.setTime(time.format(d));
		complaintVO.setStatus("Pending");
		this.complaintDAO.insertCom(complaintVO);
		
		return new ModelAndView("redirect:/complaint.html");		
	}
	@RequestMapping(value="viewcomplaint.html",method=RequestMethod.GET)
	public ModelAndView viewcomplaint(@ModelAttribute ComplaintVO complaintVO)
		{
			List ls = this.complaintDAO.search();
			
			return new ModelAndView("admin/viewComplaint","list",ls);
			
		}
	
	@RequestMapping(value="replyComplaint.html",method=RequestMethod.GET)
	public ModelAndView replycomplaint(@ModelAttribute ComplaintVO complaintVO,@RequestParam("id") int i)
		{	
			complaintVO.setComplaintId(i);
			List ls;
			ls=this.complaintDAO.editsearch(complaintVO);
			System.out.println(ls.size());
			return new ModelAndView("admin/editComplaint","data",(ComplaintVO)ls.get(0));
		}
	
	@RequestMapping(value="sendreply.html",method=RequestMethod.POST)
	public ModelAndView reply(@ModelAttribute ComplaintVO complaintVO)
		{
			complaintVO.setStatus("Answered");
			this.complaintDAO.compileReply(complaintVO);
			return new ModelAndView("redirect:/viewcomplaint.html","data",new ComplaintVO());
		}
	@RequestMapping(value="oldcomplaint.html",method=RequestMethod.GET)
	public ModelAndView oldcomplaint(@ModelAttribute ComplaintVO complaintVO,@ModelAttribute LoginVO loginVO,HttpSession session)
		{
		int loginId=(Integer)session.getAttribute("loginId");
		loginVO.setLoginId(loginId);
		complaintVO.setLvo(loginVO);
			List ls = this.complaintDAO.oldsearch(complaintVO);
			
			return new ModelAndView("user/oldComplaint","list",ls);
			
		}
	
}
