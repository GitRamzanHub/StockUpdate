package com.snnstock.ramzan.dao;

import java.util.List;

import com.snnstock.ramzan.model.Ports;
import com.snnstock.ramzan.model.User;

public interface UserDAO {
	
	// register user
	public void registerUser(User user);
	
	// checking user login credentials
	public User checkLogin(User user);

	// Adding new ports
	public void addPorts(Ports ports);

	public List<Ports> getAllPorts();

}
