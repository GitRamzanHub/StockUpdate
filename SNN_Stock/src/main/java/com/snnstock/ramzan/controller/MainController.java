package com.snnstock.ramzan.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.snnstock.ramzan.model.User;
import com.snnstock.ramzan.service.UserService;

@Controller
public class MainController {
	
	@Autowired
	private UserService userService;
	
	// showing home page of snn stock
	@RequestMapping("/")
	public String home(Model model) {
		model.addAttribute("title", "Home");
		return "login";
	}
	
	// showing registration page.
	@RequestMapping("/registration")
	public String registration(Model model) {
		model.addAttribute("title", "User Registration");
		return "registration";
	}
	
	//showing login page
	@RequestMapping("/login")
	public String loginUser(Model model) {
		model.addAttribute("title", "Login");
		return "login";
	}
		
	// Handle registration form
	@RequestMapping(value = "/user_registration", method = RequestMethod.POST)
	public RedirectView registerUser(@ModelAttribute("user") User user, Model model, HttpServletRequest request) {
		// calling register method to register users	
		this.userService.createUser(user);
		RedirectView redirectView = new RedirectView();		
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
	}
}
