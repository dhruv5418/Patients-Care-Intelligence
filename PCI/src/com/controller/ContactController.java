package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.DAO.ContactDAO;

import com.VO.ContactVO;

@Controller
public class ContactController {

	/*@Autowired
	ContactDAO contactDAO;*/
	@RequestMapping(value="contact1.html",method=RequestMethod.GET)
	public ModelAndView viewContactUs1()
		{
			return new ModelAndView("user/contactUs1","data", null);
		}
	
	@RequestMapping(value="contact.html",method=RequestMethod.GET)
	public ModelAndView viewContactUs()
		{
			return new ModelAndView("user/contactUs","data", null);
		}
	@RequestMapping(value="about.html",method=RequestMethod.GET)
	public ModelAndView viewAboutUs()
		{
			return new ModelAndView("user/aboutUs","data", null);
		}
	@RequestMapping(value="about1.html",method=RequestMethod.GET)
	public ModelAndView viewAboutUs1()
		{
			return new ModelAndView("user/aboutUs1","data", null);
		}
}
