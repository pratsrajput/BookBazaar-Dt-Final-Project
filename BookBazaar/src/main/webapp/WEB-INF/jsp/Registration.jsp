    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
        pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <c:url value="/resources/pics" var="z"/>
    <title> Registration Form</title>
    <style>
div.transbox {
  margin: 30px;
  background-color: #ffffff;
  border: 1px solid black;
  opacity: 0.6;
  filter: alpha(opacity=60); /* For IE8 and earlier */
}

div.transbox p {
  margin: 5%;
  font-weight: bold;
  color: #000000;
}

</style>
    </head>
    <body background="${z}/b1.jpg">
    <jsp:include page="Header.jsp"></jsp:include>
    <form action="userregistration" method="post">
    <br>
    <br> 
    <div class="background">
  <div class="transbox">
  
    <section class="container">
		<div class="container-page">				
			<div class="col-md-6">
				<h1 class="dark-grey"><b>Register Here ... !!! </b></h1>
				</br>
				</br>
				<b>
				<div class="form-group col-lg-10">
					<label>Username</label>
					<input type="text" id="username" name="username" class="form-control" >
				</div>
				
				<div class="form-group col-lg-8">
					<label>Password</label>
					<input type="password" id="password" name="password" class="form-control" >
				</div>
				
								
				<div class="form-group col-lg-8">
					<label>Email Address</label>
					<input type="text" id="email" name="email" class="form-control" >
				</div>
				
				
				<div class="col-sm-8">
					<input type="checkbox" class="checkbox" />I Accept to Agree All The Terms and Conditions of BookBazaar
				</div>

				
			</div>
		
			<div class="col-md-6">
				<h2 class="dark-grey"><b>Terms and Conditions</b></h2>
				<p>
					By clicking on "Register" you agree to The BookBazaar's' Terms and Conditions
				</p>
				<p>
					While rare, prices are subject to change based on exchange rate fluctuations - 
					should such a fluctuation happen, we may request an additional payment. You have the option to request a full refund or to pay the new price. 
				</p>
				<p>
					Should there be an error in the description or pricing of a product, we will provide you with a full refund 
				</p>
				<p>
					Acceptance of an order by us is dependent on our suppliers ability to provide the product. 
				</p>
				
				</br>
				</br>
				
			</div>
			<center><button type="submit" class="btn btn-success"><h4>Register</h4></button></center>
		</br>
				</br>
				</div>
	</section>
</div>
  </div>
  </div>
  </b>
</form>

    			
    			<jsp:include page="footer.jsp"></jsp:include>
    </body>
    </html>