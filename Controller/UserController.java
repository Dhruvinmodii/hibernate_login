package com.spring.Book.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.spring.Book.DAO.BookDao;
import com.spring.Book.DAO.UserDao;
import com.spring.Book.Model.Book;
import com.spring.Book.Model.User;
import com.spring.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private  UserService userservice;
	@Autowired
	private BookDao bookDao;
	
	@RequestMapping("/Register")
	public String reg()
	{
		return "Register";
	}
	@RequestMapping("/Login")
	public String show()
	{
		return "Login";
	}
	
	
	
	@RequestMapping(path = "/register_user", method = RequestMethod.POST)
	public String register(@ModelAttribute("user") User user , Model model) {
		
		this.userservice.createuser(user);
		return "Login";
		}
	
	@RequestMapping(path = "/login_user", method = RequestMethod.POST)
	public String login(@ModelAttribute("user") User user , Model model) {
		if(user.email.equals("admin@gmail.com")&& user.password.equals("admin123")) {
				return "Home";
		}
		else {
			List<User> users = userservice.getusers();
			model.addAttribute("users",users);
			
			for (User user2 : users) {
				if(user.email.equals(user2.email)&& user.password.equals(user2.password)) {
					List<Book> books = bookDao.getBooks();
					model.addAttribute("books",books);
					return "userhome";
				}
				
			}
			return "Login";
			
		}
			
	
		}
	
	
		
	}
	

