package com.example.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.RegisterDao;
import com.example.entity.User;

@Service
public class RegisterService {

	
	@Autowired
	RegisterDao dao;
	
	public boolean registerUser(User user) {
	    return dao.registerUser(user); 
		
	    }	
		
	}

		
		
