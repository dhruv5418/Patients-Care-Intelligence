package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.DAO.LoginDAO;
import com.DAO.NurseDAO;
import com.VO.LoginVO;
import com.VO.NurseVO;

@Controller
public class NurseController {
	@Autowired
	NurseDAO nurseDAO;
	

	@Autowired
	LoginDAO loginDAO;

	
	
	@RequestMapping(value="addnurse.html",method=RequestMethod.GET)
	public ModelAndView addnurse()
		{
			return new ModelAndView("admin/addNurse","data",new NurseVO());
		}
	@RequestMapping(value="viewnurse.html",method=RequestMethod.GET)
	public ModelAndView viewward(@ModelAttribute NurseVO nurseVO)
		{
			List ls = this.nurseDAO.search();
			
			return new ModelAndView("admin/viewNurse","list",ls);
			
		}
	
	@RequestMapping(value="insertNurse.html",method=RequestMethod.POST)
	public ModelAndView insertnurse(@ModelAttribute NurseVO nurseVO)
		{
		String email=nurseVO.getLvo().getEmail();
		String password=nurseVO.getLvo().getPassword();
		
		LoginVO v1=new LoginVO();
		v1.setEmail(email);
		v1.setPassword(password);
		
		this.loginDAO.insert(v1);
		
		nurseVO.setLvo(v1);
		this.nurseDAO.insert(nurseVO);
		
			return new ModelAndView("redirect:/addnurse.html");
		}
	@RequestMapping(value="deleteNurse.html",method=RequestMethod.GET)
	public ModelAndView deletenurse(@ModelAttribute NurseVO nurseVO,@RequestParam("id")int i,LoginVO loginVO,@RequestParam("id1")int j)
		{
		
		nurseVO.setNurseId(i);
		loginVO.setLoginId(j);
		this.nurseDAO.delete(nurseVO);
		this.loginDAO.delete(loginVO);
		
		
		
			return new ModelAndView("redirect:/viewnurse.html");
		}
	
	@RequestMapping(value="editNurse.html",method=RequestMethod.GET)
	public ModelAndView editnurse(@ModelAttribute NurseVO nurseVO,@RequestParam("id")int i,LoginVO loginVO,@RequestParam("id1")int j)
		{
		nurseVO.setNurseId(i);
		loginVO.setLoginId(j);
		List ls;
		ls=this.nurseDAO.editsearch(nurseVO);
		/*ls=this.loginDAO.editsearch(loginVO);*/
		return new ModelAndView("admin/editNurse","data",(NurseVO)ls.get(0));
		}
	
	@RequestMapping(value="updatenurse.html",method=RequestMethod.POST)
	public ModelAndView updatenurse(@ModelAttribute NurseVO nurseVO)
		{
		int i=nurseVO.getNurseId();
		int id=nurseVO.getLvo().getLoginId();
		String email=nurseVO.getLvo().getEmail();
		String password=nurseVO.getLvo().getPassword();
		
		LoginVO v1=new LoginVO();
		v1.setEmail(email);
		v1.setPassword(password);
		v1.setLoginId(id);
		nurseVO.setLvo(v1);
		nurseVO.setNurseId(i);
		this.loginDAO.update(v1);
		this.nurseDAO.update(nurseVO);
		
			return new ModelAndView("redirect:/viewnurse.html");
		}
	
	}


