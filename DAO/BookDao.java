package com.spring.Book.DAO;

import com.spring.Book.Model.Book;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
@Component
public class BookDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Transactional
	public void createBook(Book book)
	{
		this.hibernateTemplate.saveOrUpdate(book);
	}
	
	public List<Book> getBooks()
	{
		List<Book> books = this.hibernateTemplate.loadAll(Book.class);
		return books;
	}
	
	@Transactional
	public void deleteBook(int bid)
	{
		Book b = this.hibernateTemplate.load(Book.class, bid);
		this.hibernateTemplate.delete(b);
	}
	
	public Book getBook(int bid)
	{
		return this.hibernateTemplate.get(Book.class, bid);
	}
	
}
