package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class LoadController {

	@RequestMapping(value="loadIndex.html",method=RequestMethod.GET)
	public ModelAndView loadIndext()
		{
			return new ModelAndView("admin/index");
		}
	
}
