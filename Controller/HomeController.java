package com.spring.Book.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.spring.Book.DAO.BookDao;
import com.spring.Book.Model.Book;
import com.spring.Book.Model.User;
import com.spring.service.UserService;

@Controller
public class HomeController {
	@Autowired
	private BookDao bookDao;
	
	
	@RequestMapping("/home")
	public String Home(Model m)
	{
		List<Book> books = bookDao.getBooks();
		m.addAttribute("books",books);
		return "Home";
	}
	@RequestMapping("/add")
	public String add(Model m)
	{
		m.addAttribute("title","Add Book");
		return "Addnew";
	}
	
	@RequestMapping(value="/add-book",method = RequestMethod.POST)
	public RedirectView handlebook(@ModelAttribute Book book, HttpServletRequest request)
	{
		System.out.println("new book details");
		System.out.println(book);
		bookDao.createBook(book);
		RedirectView redirectView = new RedirectView();		
		redirectView.setUrl(request.getContextPath()+"/Home");
		return redirectView;
		
	}
	@RequestMapping("/delete/{bookId}")
	public RedirectView deleteProduct(@PathVariable("bookId") int bookId,  HttpServletRequest request) 
	{
		bookDao.deleteBook(bookId);
		RedirectView redirectView =new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/Home");
		return redirectView;
	}
	@RequestMapping("/update/{bookId}")
	public String updateForm(@PathVariable("bookId") int bid,Model model)
	{
		Book book=this.bookDao.getBook(bid);
		model.addAttribute("book",book);
		return "update_form";
	}

}
