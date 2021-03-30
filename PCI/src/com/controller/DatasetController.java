package com.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.DAO.DatasetDAO;
import com.VO.DatasetVO;


@Controller
public class DatasetController {
	@Autowired
	DatasetDAO datasetDAO;
	
	@RequestMapping(value="adddataset.html",method=RequestMethod.GET)
	public ModelAndView adddataset()
		{
			return new ModelAndView("admin/addDataset","data",new DatasetVO());
		}
	
	@RequestMapping(value="insertdataset.html",method=RequestMethod.POST)
	public ModelAndView insertdataset(HttpSession session,@ModelAttribute DatasetVO datasetVO,@RequestParam("file") CommonsMultipartFile file)
		{
		String path=session.getServletContext().getRealPath("/");
		
		String pathFInal=path+"\\doc";
		System.out.println("path---------------------"+pathFInal);
		
		
        String filename=file.getOriginalFilename();  
        System.out.println(filename);
        System.out.println("file name........!!!!"+filename);
        
        
        System.out.println(path+" "+filename);  
        try{  
        byte barr[]=file.getBytes();  
          
        BufferedOutputStream bout=new BufferedOutputStream(  
                 new FileOutputStream(pathFInal+"\\"+filename));  
        bout.write(barr);  
        bout.flush();  
        bout.close();  
          
        }catch(Exception e){
        	System.out.println(e);
        	} 
		
        datasetVO.setDatasetFileName(filename);
        datasetVO.setDatasetFilePath(pathFInal);
			this.datasetDAO.insert(datasetVO);
			return new ModelAndView("admin/addDataset","data",new DatasetVO());
		}
	@RequestMapping(value="viewdataset.html",method=RequestMethod.GET)
	public ModelAndView viewdataset(@ModelAttribute DatasetVO datasetVO)
		{
		List ls = this.datasetDAO.search();
		
		return new ModelAndView("admin/viewDataset","list",ls);
		}
	
	
}
