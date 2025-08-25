package com.example.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.entity.User;

@Repository
public class RegisterDao {

	@Autowired
	SessionFactory factory;
	
	public boolean registerUser(User user) {
		Session session = factory.openSession();
		session.save(user);
		session.beginTransaction().commit();
		return true;

		
	}

}
