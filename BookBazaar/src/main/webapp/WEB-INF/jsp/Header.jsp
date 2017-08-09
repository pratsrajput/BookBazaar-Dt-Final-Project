<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <c:url value="/resources/pics" var="z"/>
   <%-- <c:url value="/resources/css" var="y"/> --%>
<title>header</title>
</head>
<body>

<!-- nav_bar coding START-->
<div class="container text-center" style=background-color: black; >
 
  
  <br>
 <marquee> <font size="40" face="Goudy Stout"> <h1 style="color:DarkGray"><b>BOOK  BAZAAR</h1></b> </font>     
    <font size="20" face="Goudy Stout"><h4 style="color:Azure">Mission, Vission & Values</h4></font>
 </marquee> 
  </div>
  <br>
 <div style="margin-bottom:-50px;">
  <nav class="navbar navbar-inverse">
  <div class="container" >
  <div class="navbar-header">
  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
  <span class="icon-bar"></span>
  <span class="icon-bar"></span>
  <span class="icon-bar"></span>                        
  </button>
  
  </div>
    
    
    <div class="collapse navbar-collapse" id="myNavbar">
    <ul class="nav navbar-nav">
    <li class="active"><a href="/BookBazaar/index">Home</a></li>
    <li><a href="/BookBazaar/product">Product</a></li>
    <!-- <li><a href="Category">Deal</a></li> --> 
    <li><a href="/BookBazaar/AboutUs">About Us</a></li>
    <li><a href="/BookBazaar/Contact">Contact Us</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <li><a href="/BookBazaar/Registration"><span class="glyphicon glyphicon-hand-right"></span>  Register</a></li>
    
     
     <ul class="nav navbar-nav navbar-right">
  	    <c:if test="${empty username}">
        <li><a href="/BookBazaar/LoginPage"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        </c:if>
     <c:if test="${not empty username}">
        <li><a href="/BookBazaar/adminhome"><span class="glyphicon glyphicon-user"></span> Admin</a></li>
        <li><a href="/BookBazaar/adminhome"><font size="4"font color="Grey"face="Times New Roman"><b>Hi, </b><%=session.getAttribute("username") %></font></a></li>
        <li><a href="/BookBazaar/viewCart"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
        <li><a href="/BookBazaar/logout"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
        </c:if>   
    </ul>
    </div>
    </div>
</nav>
</div> 

</body>
</html>