package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.DAO.NurseDAO;
import com.DAO.SchedularDAO;
import com.DAO.WardDAO;
import com.VO.LoginVO;
import com.VO.NurseVO;
import com.VO.SchedularVO;
@Controller
public class SchedularController {
	@Autowired
	SchedularDAO schedularDAO;
	
	@Autowired
	WardDAO wardDAO;
	@Autowired
	NurseDAO nurseDAO;
	
	
	@RequestMapping(value="addschedular.html",method=RequestMethod.GET)
	public ModelAndView addschedular()
		{
			List wardList=this.wardDAO.search();
			List nurseList=this.nurseDAO.search();
			
			return new ModelAndView("admin/addSchedular","data",new SchedularVO()).addObject("wardList", wardList).addObject("nurseList",nurseList);
		}
	@RequestMapping(value="viewschedular.html",method=RequestMethod.GET)
	public ModelAndView viewschedular(@ModelAttribute SchedularVO schedularVO)
		{	List ls = this.schedularDAO.search();
		
			return new ModelAndView("admin/viewSchedular","list",ls);
		
			
		}
	@RequestMapping(value="insertschedular.html",method=RequestMethod.POST)
	public ModelAndView insertschedular(@ModelAttribute SchedularVO schedularVO,HttpServletRequest request)
		{
		/*String startDate = request.getParameter("startDate");
		String startTime = request.getParameter("startTime");
		String endDate = request.getParameter("endDate");
		String endTime = request.getParameter("endTime");
		String currentDate = request.getParameter("currentDate");
		
		
		schedularVO.setStartDate(startDate);
		schedularVO.setStartDate(startTime);
		schedularVO.setStartDate(endDate);
		schedularVO.setStartDate(endTime);
		schedularVO.setStartDate(currentDate);
		*/
		
		
		System.out.println("in contrler");
		this.schedularDAO.insert(schedularVO);
		return new ModelAndView("redirect:/addschedular.html");
		}
	
	@RequestMapping(value="deleteSchedular.html",method=RequestMethod.GET)
	public ModelAndView deleteward(@ModelAttribute SchedularVO schedularVO,@RequestParam("id")int i)
		{
			schedularVO.setSchedularId(i);
			
			this.schedularDAO.delete(schedularVO);
			return new ModelAndView("redirect:/viewschedular.html");
		}
	@RequestMapping(value="editSchedular.html",method=RequestMethod.GET)
	public ModelAndView editward(@ModelAttribute SchedularVO schedularVO,@RequestParam ("id")int i)
		{		schedularVO.setSchedularId(i);
			
	
			System.out.println("id:"+i);
			List wardList=this.wardDAO.search();
			List nurseList=this.nurseDAO.search();
			List ls=this.schedularDAO.editsearch(schedularVO);
			System.out.println("ward"+wardList+"nurse:"+nurseList+"sch list:"+ls);
			return new ModelAndView("admin/editSchedular","data",(SchedularVO)ls.get(0)).addObject("wardList",wardList).addObject("nurseList",nurseList);
		}
	@RequestMapping(value="updateschedular.html",method=RequestMethod.POST)
	public ModelAndView updateschedular(@ModelAttribute SchedularVO schedularVO)
		{
	
		System.out.println("in contrler");
		this.schedularDAO.update(schedularVO);
		return new ModelAndView("redirect:/viewschedular.html");
		}
	
	@RequestMapping(value="userschedular.html",method=RequestMethod.GET)
	public ModelAndView userschedular(@ModelAttribute LoginVO loginVO ,@ModelAttribute SchedularVO schedularVO,@ModelAttribute NurseVO nurseVO,HttpSession session)
		{	
		
			int loginId=(Integer)session.getAttribute("loginId");
			loginVO.setLoginId(loginId);
			nurseVO.setLvo(loginVO);
		
			List ls = this.nurseDAO.searchNurse(nurseVO);
			NurseVO v = (NurseVO)ls.get(0);
			
			
			schedularVO.setNurseVO(v);
			List ls1 =this.schedularDAO.usersearch(schedularVO);
		
			return new ModelAndView("user/mySchedular","list",ls1);
		
			
		}
	
	
}
