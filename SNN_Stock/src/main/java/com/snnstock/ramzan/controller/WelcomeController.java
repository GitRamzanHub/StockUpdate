package com.snnstock.ramzan.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.snnstock.ramzan.model.Ports;
import com.snnstock.ramzan.model.User;
import com.snnstock.ramzan.service.UserService;

@Controller
public class WelcomeController {
	
	@Autowired
	private UserService userService;
	
	// Handle SNN_Stock user login form
		@RequestMapping(value="/user_login", method = RequestMethod.POST)
		public String loginUser(@ModelAttribute("user") User user, HttpSession session, Model model) {			
			User loginUser = this.userService.checkLogin(user);
			List<Ports> ports =  this.userService.getAllPorts();
			if(loginUser != null) {
				model.addAttribute("user",loginUser);				
				model.addAttribute("ports", ports);
				session.setAttribute("user", loginUser);
				return "redirect:/welcome";
			}	else {				
				model.addAttribute("msg", "Invalid Credentials, please try again.......");
				return "/login";	
			}
		}
		
//		// showing welcome page after success login
//		@RequestMapping("/welcome")
//		public String welcome(Model model) {
//			model.addAttribute("title", "Welcome");
//			return "welcome";
//		}
		
//		@RequestMapping(value = "/addingPort", method = RequestMethod.POST)
//		public String handlePort(@ModelAttribute("port") Ports port, HttpSession session) {		
//			this.userService.addPorts(port);
//			//redirectView.setUrl(request.getContextPath()+"/welcome");		
//			return "redirect:/welcome";	
//		}
		
		// showing add_port view
		@RequestMapping("/addport")
		public String addProt(Model model) {
			model.addAttribute("title", "Add Ports");
			return "addport";		
		}
	
	    // logout user
			@RequestMapping(value = "logout", method = RequestMethod.POST)
			public String logout(HttpServletRequest request) {
				HttpSession session = request.getSession();
				session.invalidate();
				return "login";		
			}

}
