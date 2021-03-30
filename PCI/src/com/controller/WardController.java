package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.DAO.WardDAO;

import com.VO.WardVO;
@Controller
public class WardController {
	@Autowired
	WardDAO wardDAO;
	
	@RequestMapping(value="addward.html",method=RequestMethod.GET)
	public ModelAndView addward()
		{
			return new ModelAndView("admin/addWard","data",new WardVO());
		}
	@RequestMapping(value="viewward.html",method=RequestMethod.GET)
	public ModelAndView viewward(@ModelAttribute WardVO wardVO)
		{
			List ls = this.wardDAO.search();
			
			return new ModelAndView("admin/viewWard","list",ls);
			
		}
	
	@RequestMapping(value="insertWard.html",method=RequestMethod.POST)
	public ModelAndView insertward(@ModelAttribute WardVO wardVO)
		{
			this.wardDAO.insert(wardVO);
			return new ModelAndView("redirect:/addward.html");
		}
	@RequestMapping(value="deleteWard.html",method=RequestMethod.GET)
	public ModelAndView deleteward(@ModelAttribute WardVO wardVO,@RequestParam("id")int i)
		{
			wardVO.setWardId(i);
			
			this.wardDAO.delete(wardVO);
			return new ModelAndView("redirect:/viewward.html");
		}
	@RequestMapping(value="editWard.html",method=RequestMethod.GET)
	public ModelAndView editward(@ModelAttribute WardVO wardVO,@RequestParam ("id")int i)
		{	
			wardVO.setWardId(i);
			List ls;
			ls=this.wardDAO.editsearch(wardVO);
			return new ModelAndView("admin/editWard","data",(WardVO)ls.get(0));
		}
	@RequestMapping(value="update.html",method=RequestMethod.POST)
	public ModelAndView updateward(@ModelAttribute WardVO wardVO)
		{	
			
			this.wardDAO.update(wardVO);
			return new ModelAndView("redirect:/viewward.html");
		}
}
