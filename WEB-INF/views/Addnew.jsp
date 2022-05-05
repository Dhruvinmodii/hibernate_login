<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<title>Book</title>
</head>
<body>
	<nav class="navbar navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="/Book/home">Book APP!</a> <a
				class="nav-link active" href="/Book/add" style="color: white">Add new book</a>
		</div>
	</nav>
	<div class="container">
		<h2 style="text-align: center; margin-top: 50px">Add new Book details</h2>
		<hr>
		<div class="row justify-content-center">
			<div class="col-lg-10">
				<div class="card shadow-lg border-0 rounded-lg mt-1">
					
					<div class="card-body">
						<form action="add-book" method="post">

							<div class="form-floating mb-3">
								<input class="form-control" id="bookname" type="text"
									name="bookname" placeholder="Enter full book name" pattern="^([A-Za-z]+[,.]?[ ]?|[A-Za-z]+['-]?)+$" required /> 
									<label for="bookname">Book Name</label>
							</div>
							<div class="form-floating mb-3">
								<input class="form-control" id="authorname" type="text"
									name="authorname" placeholder="Enter author name" pattern="^([A-Za-z]+[,.]?[ ]?|[A-Za-z]+['-]?)+$" required /> 
								<label for="authorname">Author</label>
							</div>
							<div class="form-floating mb-3">
								<input class="form-control" id="publishername" type="text" 
								name="publishername" placeholder="Enter publisher name" pattern="^([A-Za-z]+[,.]?[ ]?|[A-Za-z]+['-]?)+$" required  /> 
								<label for="publishername">Publisher</label>
							</div>
							
							<div class="row mb-3">
								<div class="col-md-4">
									<div class="form-floating mb-3 mb-md-0">
										<input class="form-control" id="category" type="text"
											 name="category" placeholder="Enter category" pattern="^([A-Za-z]+[,.]?[ ]?|[A-Za-z]+['-]?)+$" required/> 
											<label for="category">Category</label>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-floating mb-3 mb-md-0">
										<input class="form-control" id="language" type="text"
											 name="language" placeholder="Enter language" pattern="^([A-Za-z]+[,.]?[ ]?|[A-Za-z]+['-]?)+$" required /> 
											<label for="language">Language</label>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-floating mb-3 mb-md-0">
										<input class="form-control" id="price" type="text"
											 name="price" placeholder="Enter price" pattern="^[0-9]+$" required /> 
											<label for="price">Price</label>
									</div>
								</div>
							</div>
							<div class="form-floating">
							  <textarea class="form-control" placeholder="Add book details" name="description" id="description" style="height: 150px" pattern="^([A-Za-z]+[,.]?[ ]?|[A-Za-z]+['-]?)+$" required></textarea>
							  <label for="description">Description</label>
							</div>
							<div class="mt-4 mb-0">
								<div class="d-grid">
									<input type="submit" value="Add new book details" class="btn btn-primary btn-block" />
								</div>
							</div>
						</form>
					</div>
					<div class="card-footer text-center py-3">
						<div class="small">
							<a href="/Book/home">View all books</a>
						</div>
					</div>
				</div>
			</div>
		</div>


	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>