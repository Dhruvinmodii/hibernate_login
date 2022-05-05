package com.spring.Book.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Book {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String bookname;
	private String authorname;
	private String publishername;
	private String category;
	private String language;
	private String price;
	private String description;
	
	
	public Book() {
		super();
	}
	public Book(int id, String bookname, String authorname, String publishername, String category, String language,
			String price, String description) {
		super();
		this.id = id;
		this.bookname = bookname;
		this.authorname = authorname;
		this.publishername = publishername;
		this.category = category;
		this.language = language;
		this.price = price;
		this.description = description;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getAuthorname() {
		return authorname;
	}
	public void setAuthorname(String authorname) {
		this.authorname = authorname;
	}
	public String getPublishername() {
		return publishername;
	}
	public void setPublishername(String publishername) {
		this.publishername = publishername;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	@Override
	public String toString() {
		return "Book [id=" + id + ", bookname=" + bookname + ", authorname=" + authorname + ", publishername="
				+ publishername + ", category=" + category + ", language=" + language + ", price=" + price
				+ ", description=" + description + "]";
	}
}
