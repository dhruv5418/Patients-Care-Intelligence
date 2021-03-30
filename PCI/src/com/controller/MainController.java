package com.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.DAO.LoginDAO;
import com.VO.LoginVO;


@Controller
public class MainController
	{
	@Autowired
	LoginDAO loginDAO;
	
		@RequestMapping(value={"/","index.html"},method=RequestMethod.GET)
		public ModelAndView loadIndex() 
			{
				return new ModelAndView("user/home");
			}
	
	
		@RequestMapping(value = "login.html",method=RequestMethod.GET)
		public String loadLogin() 
			{
				return "admin/login";
			}
		
		@RequestMapping(value="admin.html",method=RequestMethod.GET)
		public String admin() 
			{
				return "admin/index";
			}
		
		@RequestMapping(value = "user.html",method=RequestMethod.GET)
		public String user(HttpSession session,@ModelAttribute LoginVO loginVO)
			{
				Authentication auth = SecurityContextHolder.getContext().getAuthentication();	
				
				User user=(User)auth.getPrincipal();
				
				String userName=user.getUsername();
				
				System.out.println("userName:"+userName);
				
				loginVO.setEmail(userName);
				
				List ls=this.loginDAO.getLoginId(loginVO);
				
				LoginVO lvo=(LoginVO)ls.get(0);
				
				int loginId =lvo.getLoginId();
				
				System.out.println("loginId:"+loginId);
				
				session.setAttribute("loginId",loginId);
				
		return "user/index";
			}
	
		@RequestMapping(value = "403page.html",method=RequestMethod.GET)
		public String AccessDenied()
			{
				return "user/403page";
			}
		
		@RequestMapping(value="logout.html",method=RequestMethod.GET)
		public String logout(HttpSession session)
			{
				return "admin/login";
			}
}
