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
<title>View Supplier</title>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<br>
<br>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<div class="container">
<div class="background">
  <div class="transbox">   
<center><h1 style="color:Black"><font size="7" face="Berlin Sans FB Demi"><b>Supplier List</b></font></h1>  
<font size="5" face="Berlin Sans FB Demi"><table bgcolor="pink"border="2" width="100%" >  
<tr><th>Id</th><th>Name</th><th>Address</th><th>Edit</th><th>Delete</th></tr>  
   <c:forEach var="x" items="${supplierlist}">   
   <tr>  
   <td>${x.supplierid}</td>  
   <td>${x.suppliername}</td>   
   <td>${x.supplieraddress}</td>  
   
   <td><a href="editsupplier/${x.supplierid}">Edit</a></td>  
   <td><a href="deletesupplier/${x.supplierid}">Delete</a></td>  
   </tr>  
   </c:forEach>  
   </table>
   </font>  
   </div>
   </div>
   </div>
   <br/>
   </center>
   <jsp:include page="footer.jsp"></jsp:include>  
</body>
</html>