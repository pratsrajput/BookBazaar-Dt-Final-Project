<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body{
    background:url('http://www.wallpaperup.com/uploads/wallpapers/2012/10/21/20181/cad2441dd3252cf53f12154412286ba0.jpg');
    padding:50px;
}
div.transbox {
  margin: 30px;
  background-color: #ffffff;
  border: 1px solid black;
  opacity: 0.8;
  filter: alpha(opacity=60); /* For IE8 and earlier */
}

div.transbox p {
  margin: 5%;
  font-weight: bold;
  color: #000000;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>View Product</title>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  <br>
  <br>
<h1 style="color:PeachPuff"><center><font size="7" face="Berlin Sans FB Demi"><b>PRODUCT  LIST</b></font></center></h1> 
 <div class="container">
<div class="background">
  <div class="transbox">   
<table class="table table-striped">
 <thead>
      <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Price</th>
        <th>Description</th>
        <th>Edit</th>
        <th>Delete</th>
      </tr>
    </thead>
 <tbody>
     
   <c:forEach var="x" items="${productlist}">   
   <tr>  
   <td>${x.productid}</td>  
   <td>${x.productname}</td> 
   <td>${x.productprice}</td>   
   <td>${x.productdescription}</td>  
   
   <td><a href="editproduct/${x.productid}">Edit</a></td>  
   <td><a href="deleteproduct/${x.productid}">Delete</a></td>  
   </tr>  
   </c:forEach> 
   </tbody> 
   </table>  
   </div>
   </div>
   </div>
   <br/> 
   <jsp:include page="footer.jsp"></jsp:include> 
</body>
</html>