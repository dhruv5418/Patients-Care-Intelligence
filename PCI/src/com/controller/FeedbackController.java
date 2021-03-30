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
import org.springframework.web.servlet.ModelAndView;

import com.DAO.FeedbackDAO;
import com.DAO.LoginDAO;
import com.VO.FeedbackVO;
import com.VO.LoginVO;

@Controller
public class FeedbackController {

	@Autowired
	FeedbackDAO feedbackDAO;
	
	@Autowired
	LoginDAO loginDAO;
	
	@RequestMapping(value="feedback.html",method=RequestMethod.GET)
	public ModelAndView addcomplaint()
		{
			return new ModelAndView("user/feedBack","data",new FeedbackVO());
		}
	
	@RequestMapping(value="insertFeedback.html",method=RequestMethod.POST)
	public ModelAndView insertCom(@ModelAttribute FeedbackVO feedbackVO,LoginVO loginVO,HttpSession session)
	{
		int loginId=(Integer)session.getAttribute("loginId");
		loginVO.setLoginId(loginId);
		feedbackVO.setLvo(loginVO);
	

		Date d=new Date();
		DateFormat date=new SimpleDateFormat("dd/MM/YYYY");
		DateFormat time=new SimpleDateFormat("HH:mm:ss");
		
		feedbackVO.setDate(date.format(d));
		feedbackVO.setTime(time.format(d));
		this.feedbackDAO.insertFeedback(feedbackVO);
		
		return new ModelAndView("redirect:/feedback.html");		
	}
	
	@RequestMapping(value="viewfeedback.html",method=RequestMethod.GET)
	public ModelAndView viewcomplaint(@ModelAttribute FeedbackVO feedbackVO)
		{
			List ls = this.feedbackDAO.search();
			
			return new ModelAndView("admin/viewFeedback","list",ls);
			
		}
	
}
