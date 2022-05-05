<!doctype html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	
    <title>Book</title>
  </head>
  <body>
  <nav class="navbar navbar-dark bg-dark">
  	<div class="container-fluid">
    	<a class="navbar-brand" href="/Book/home">Book APP!</a>
    	
    	<a class="nav-link active" href="/Book/Login" style="color:white">Logout</a>
    	
  	</div>
  </nav>
  <div class="container">
    <h2 style="text-align:center;margin-top:50px">Welcome to Book App!</h2>
    <hr>
    <table class="table table-hover">
	  <thead>
	    <tr>
	      <th scope="col">Id</th>
	      <th scope="col">BookName</th>
	      <th scope="col">Author</th>
	      <th scope="col">Publisher</th>
	      <th scope="col">Category</th>
	      <th scope="col">Language</th>
	      <th scope="col">Price</th>
	      <th scope="col">Description</th>
	    </tr>
	  </thead>
	  <tbody>
	  	<c:forEach items="${books }" var="b">
    		<tr>
    			<td>${b.id }</td>
    			<td> ${b.bookname} </td>
    			<td>${b.authorname } </td>
    			<td>${b.publishername }</td>
    			<td>${b.category }</td>
    			<td>${b.language }</td>
    			<td>${b.price }</td>
    			<td>${b.description }</td>
    		</tr>
    	</c:forEach>
	  </tbody>
	</table>
  </div>
  

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>   
  </body>
</html>