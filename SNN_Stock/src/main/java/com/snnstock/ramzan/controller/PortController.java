package com.snnstock.ramzan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PortController {
	
	@RequestMapping("add-port")
	public String showAddPort(Model model) {
		model.addAttribute("title", "Add New Port");
		return "addPort";
	}
	

}
