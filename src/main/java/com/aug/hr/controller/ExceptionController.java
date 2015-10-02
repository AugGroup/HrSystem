package com.aug.hr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.aug.hr.entity.dto.ExceptionDto;

@Controller
public class ExceptionController {
	
	
	 @RequestMapping(value="/httperror")
	  public ModelAndView httpErrorAndException(@ModelAttribute("exceptionDto") ExceptionDto exceptionDto){
		  System.out.println("custom error handler");
		  System.out.println("exception: "+exceptionDto.getError());
		  ModelAndView andView = new ModelAndView();
		
			if(exceptionDto.getError().equals("Internal Server Error")){  
			  andView.setViewName("/error/500");
			  return andView;
			}else if(exceptionDto.getError().equals("Bad Request")){
			  andView.setViewName("/error/400");
			  return andView;				
			}else if(exceptionDto.getError().equals("Unsupported Media Type")){
			  andView.setViewName("/error/415");
			  return andView;				
			}else if(exceptionDto.getError().equals("Method Not Allowed")){	
			  andView.setViewName("/error/405");
			  return andView;			
			}
			
			andView.setViewName("/error/exception_error");
			return andView;
		  }
	 }


