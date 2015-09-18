package com.aug.hr.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aug.hrdb.services.LoginService;




@Controller
public class LoginController {
	private final static Logger logger = Logger.getLogger(LoginController.class);
		
	@Autowired LoginService loginService;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(HttpSession session,Locale locale, ModelMap model) {
		logger.info("welcome to page locale : "+ locale);
		return "login";
	}

	@Secured({"ROLE_ADMIN","ROLE_MANAGER","ROLE_STAFF"})
	@RequestMapping(value="/listemployee", method = RequestMethod.GET)
	public String dashboard(Locale locale,ModelMap model,HttpSession session) {
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	//	session.setAttribute("userLogin", user);
		session.setAttribute("userLogin", loginService.findByUserName(user.getUsername()));
		//model.addAttribute("username", user.getUsername());
		//System.out.println(">>>>>>>>>>>>>>>>>>"+user.toString());
		//System.out.println(">>>>>>>>>>>>>>>>>>>>>>"+user.getUsername());
		return "/employee/listemployee";
	
	}
	
    @RequestMapping(value = "/accessdenied", method = RequestMethod.GET)
    public String loginerror(ModelMap model) {
        model.addAttribute("error", "true");
        return "login";
    }
    
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpSession session, ModelMap model) {
    	session.invalidate();
        return "redirect:/login";
    }

}
