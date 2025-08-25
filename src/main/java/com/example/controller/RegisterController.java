package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.entity.User;
import com.example.service.RegisterService;


@Controller
public class RegisterController {
	
	@Autowired
	RegisterService service;
	
	@GetMapping("/")
	public String openPage() {
		return "register";
	}
	
	@PostMapping("register")
	String doRegister(Model model, User user) {
		boolean isRegistered = service.registerUser(user);
		
		if (isRegistered) {
			model.addAttribute("msg", "Registration success, please proceed with login");
			return "login";
		} else {
			return "register";
		}	
}
}