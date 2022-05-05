package com.spring.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.Book.DAO.UserDao;
import com.spring.Book.Model.User;

@Service
public class UserService {
	
	private UserDao userDao;
	
	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public int createuser (User user) {
		
		return this.userDao.createuser(user);
	}
	
	public List<User> getusers(){
		return this.userDao.getuser();
	}

}
