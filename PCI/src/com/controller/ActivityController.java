package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.DAO.ActivityDAO;
import com.VO.ActivityVO;
import com.VO.WardVO;


@Controller
public class ActivityController {

	@Autowired
	ActivityDAO activityDAO;
	
	@RequestMapping(value="viewactivity.html",method=RequestMethod.GET)
	public ModelAndView viewactivity(@ModelAttribute ActivityVO ActivityVO)
		{
		List ls = this.activityDAO.search();
			return new ModelAndView("admin/viewActivity","list",ls);
		}
	
	@RequestMapping(value="run.html",method=RequestMethod.GET)
	public ModelAndView run()
		{
			return new ModelAndView("admin/run");
		}
}
