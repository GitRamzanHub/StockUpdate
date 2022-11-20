package com.snnstock.ramzan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.snnstock.ramzan.dao.UserDAO;
import com.snnstock.ramzan.model.Ports;
import com.snnstock.ramzan.model.User;

@Service
public class UserService {
	@Autowired
	private UserDAO userDao;
	
	// creating user
	public void createUser(User user) {
		this.userDao.registerUser(user);
	}
	
	// check user Login
	public User checkLogin(User user) {
		return this.userDao.checkLogin(user);
	}

	public void addPorts(Ports ports) {
		this.userDao.addPorts(ports);
		
	}

	public List<Ports> getAllPorts() {
		
		return this.userDao.getAllPorts();
	}
	
	

}
