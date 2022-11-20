package com.snnstock.ramzan.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.JoinColumnOrFormula;

@Entity
@Table(name = "ports")
public class Ports {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	@Column(name = "portName")
	private String portName;
	
	@Column(name = "cha")
	private String cha;
	
	@Column(name = "number")
	private String  number;
	
	public Ports() {}	
	

	public Ports(int id, String portName, String cha, String number) {
		this.id = id;
		this.portName = portName;
		this.cha = cha;
		this.number = number;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPortName() {
		return portName;
	}

	public void setPortName(String portName) {
		this.portName = portName;
	}

	public String getCha() {
		return cha;
	}

	public void setCha(String cha) {
		this.cha = cha;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	
	
	
	
	


		

}
