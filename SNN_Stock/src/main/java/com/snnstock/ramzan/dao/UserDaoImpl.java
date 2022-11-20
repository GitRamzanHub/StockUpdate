package com.snnstock.ramzan.dao;


import java.util.List;

import javax.persistence.NoResultException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.snnstock.ramzan.model.Ports;
import com.snnstock.ramzan.model.User;

@Repository
@Transactional
public class UserDaoImpl implements UserDAO{
	
	@Autowired
	private SessionFactory sessionFactory;

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	// Registration of users

	public void registerUser(User user) {
			Session session = hibernateTemplate.getSessionFactory().openSession();
			try {
				session.saveOrUpdate(user);
				session.getTransaction().commit();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
 // SNN Login page
	public User checkLogin(User user) {
		Session session = sessionFactory.getCurrentSession();
		try {
			String hql = "from User u where u.username = :username AND u.password = :password";
			Query<User> query = session.createQuery(hql,User.class);
			query.setParameter("username", user.getUsername());
			query.setParameter("password",user.getPassword());
			user = query.getSingleResult();
			return user;
		} catch (NoResultException e) {
			// TODO: handle exception
			System.out.println(e.toString());
			return null;
		}	
		
	}
	public void addPorts(Ports ports) {
		// TODO Auto-generated method stub
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();
		try {
			session.saveOrUpdate(ports);
			//session.getTransaction().commit();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.toString());
			e.printStackTrace();
		}
		
	}
	public List<Ports> getAllPorts() {
		// TODO Auto-generated method stub
		List<Ports> ports = this.hibernateTemplate.loadAll(Ports.class);
		return ports;
	}
	
}
