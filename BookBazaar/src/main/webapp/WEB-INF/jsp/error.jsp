<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <c:url value="/resources/pics" var="z"/>
<title>Login failed</title>
<style>
body{
    background:url('http://www.wallpaperup.com/uploads/wallpapers/2012/10/21/20181/cad2441dd3252cf53f12154412286ba0.jpg');
    padding:50px;
}
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
<body>
<jsp:include page="Header.jsp"></jsp:include>
<br>
<br>
<div class="container">
<div class="background">
  <div class="transbox">
	<div class="row text-center">
        <div class="col-sm-6 col-sm-offset-3">
        <br><br> <h2 style="color:#0fad00">Login Failed</h2>
        <img src="${z}/loginfailed.jpg">
        <h3>Dear, User </h3>
        <p style="font-size:20px;color:#5C5C5C;">You are Not Registered User. Please Register with us then Login..!!!</p>
    <br/> <p>    If You're a Registered User .. then please click on Login...!!!</p>
        <a href="/BookBazaar/LoginPage" class="btn btn-success">     Log in      </a>
    <br><br>
        </div>
        
	</div>
</div>
</div>
</div>
 
ERROR WHILE Login!!!!
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>