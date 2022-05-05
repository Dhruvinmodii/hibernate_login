package com.spring.Book.DAO;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.Book.Model.Book;
import com.spring.Book.Model.User;

@Repository
public class UserDao {
	
	private HibernateTemplate hibernateTemplate;
	
	
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}



	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}



	@Transactional
	public int createuser(User user) {
		int id = (Integer)this.hibernateTemplate.save(user);
		return id;
		
		
	}
	
	public List<User> getuser(){
		List<User> user = this.hibernateTemplate.loadAll(User.class);
		return user;
	}
	

}
