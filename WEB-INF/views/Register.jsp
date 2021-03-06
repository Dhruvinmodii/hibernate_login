<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<title>Register</title>
</head>
<body>
    <section class="vh-100 bg-image" style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">Create an account</h2>

              <form method="Post" action="register_user">

                <div class="form-floating mb-4">
                  <input type="text" id="username" name="username" class="form-control" />
                  <label class="form-label" for="form3Example1cg">Your Name</label>
                </div>

                <div class="form-floating mb-4">
                  <input type="email" id="email" name="email" class="form-control" />
                  <label class="form-label" for="form3Example3cg">Your Email</label>
                </div>

                <div class="form-floating mb-4">
                  <input type="text" id="contact" name="contact" class="form-control " />
                  <label class="form-label" for="form3Example4cg">Contact</label>
                </div>

                <div class="form-floating mb-4">
                  <input type="password" id="password" name="password" class="form-control" />
                  <label class="form-label" for="form3Example4cdg">Password</label>
                </div>


                <div class="d-flex justify-content-center">
                <input type="submit" value="Register" class="btn btn-outline-primary" />
                
                </div>

                <p class="text-center text-muted mt-5 mb-0">Have already an account? <a href="/Book/Login" class="fw-bold text-body"><u>Login here</u></a></p>

              </form>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>