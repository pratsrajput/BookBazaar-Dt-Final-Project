<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Footer</title>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <c:url value="/resources/css" var="y"/>
 
 <!--------------------CSS codes start here ------------->
   <style>
footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
    
.footer h3 {
	border-bottom: 1px solid #BAC1C8;
	color: #54697E;
	font-size: 15px;
	font-weight: 600;
	line-height: 27px;
	padding: 1px 0 1px;
	text-transform: uppercase;
}
.footer ul {
	font-size: 17px;
	list-style-type: none;
	margin-left: 10;
	padding-left: 0;
	margin-top: 15px;
	color: #7F8C8D;
}
.footer ul li a {
	padding: 0 0 10px 0;
	display: block;
}
.footer a {
	color: #78828D
}


.bg-gray {
	background-image: -moz-linear-gradient(center bottom, #BBBBBB 0%, #F0F0F0 100%);
	box-shadow: 0 1px 0 #B4B3B3;
}
.social li {
	background: none repeat scroll 0 0 #B5B5B5;
	border: 7px solid #B5B5B5;
	border-radius: 70%;
	float:left;
	height: 50px;
	line-height: 36px;
	margin: 70px 8px 0 0;
	padding: 10px;
	text-align: center;
	width: 50px;
	
}

.social li a {
	color: #EDEFF1;
}

.social li a i {
	font-size: 30px;
	margin: 10 10 10 5px;
	color: #EDEFF1 !important;
}


 </style>
 <!----------------------------css ends here--------------------------------------  -->
</head>
<body>

<footer class="container">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<footer>
<div class="footer" id="footer">
<div class="container">
<div class="row">
<div class="col-lg-2  col-md-2 col-sm-5 col-xs-6">
<h3> Get to Know Us </h3>
<ul>
<li> <a href="Contact"> Contact Us </a> </li>
<li> <a href="AboutUs"> About Us </a> </li>
</ul>
</div>
<div class="col-lg-2  col-md-2 col-sm-5 col-xs-6">
<h3> Contact Us </h3>
<ul>
<li><a href="Contact"><span class="glyphicon glyphicon-iphone"></span>(+8801)7123456</a></li>
<li> <a href="Contact"><span class="glyphicon glyphicon-envelope"></span>support@bookbazar.com </a> </li>
</ul>
</div>
<div class="col-lg-2  col-md-2 col-sm-5 col-xs-6">
<h3> Our Policies </h3>
                    <ul>
                        <li> <a href="policy"> Refund/Return Policy </a> </li>
                        <li> <a href="policy"> Terms and Condition </a> </li>
                        <li> <a href="policy"> Shipping Policy </a> </li>
                        <li> <a href="policy"> Privacy Policy </a> </li>
                    </ul>
                </div>
                <div class="col-lg-2  col-md-2 col-sm-5 col-xs-6">
                    <h3> Address </h3>
                    <ul>
                        <li> Book Bazar</li>
                        <li> Ardee City, Sector 52,</li>
                        <li> Gurgaon,  </li>
                        <li> Haryana - 122011 </li>
                        <li> India </li>
                    </ul>
                </div>
                <div class="col-lg-3  col-md-3 col-sm-6 col-xs-12 ">
                    <ul class="social">
                        <li> <a href="https://www.facebook.com/login/"> <i class=" fa fa-facebook">   </i> </a> </li>
                        <li> <a href="https://twitter.com/login"> <i class="fa fa-twitter">   </i> </a> </li>
                        <li> <a href="https://plus.google.com/"> <i class="fa fa-google-plus">   </i> </a> </li>
                    </ul>
                </div>
            </div>
            
        </div>
        
    </div>
    
    
    <div class="footer-bottom">
     <div class="container">
    <p class="pull-left"> Copyright © Book Bazar 2017. All right reserved. </p>
            
        </div>
    </div>
    
</footer>
  

</body>
</html>