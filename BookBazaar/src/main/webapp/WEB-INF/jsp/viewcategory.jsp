<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Category Details</title>
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
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<br>
<br> 
<h1 style="color:PeachPuff"><center><font size="7" face="Berlin Sans FB Demi"><b>Category List</b></font></center></h1> 
<div class="container">
<div class="background">
  <div class="transbox"> 
  <font size="5" face="Berlin Sans FB Demi"> 
<table border="2" width="100%" >  
<tr><th>Id</th><th>Name</th><th>DESCRIPTION</th><th>Edit</th><th>Delete</th></tr>  
   <c:forEach var="x" items="${categorylist}">   
   <tr>  
   <td>${x.categoryid}</td>  
   <td>${x.categoryname}</td>   
   <td>${x.categorydescription}</td>  
   
   <td><a href="editcategory/${x.categoryid}">Edit</a></td>  
   <td><a href="deletecategory/${x.categoryid}">Delete</a></td>  
   </tr>  
   </c:forEach>  
   </table> 
   </div>
   </div>
   </div> 
   <br/> 
   <br/>
   <br/> 
   <br/>
   <br/> 
   <br/>
   <br/> 
   <br/>
   <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>