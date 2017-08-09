<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Product Here</title>
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

 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
    <br>
    <br>
    <div class="container">
<div class="background">
  <div class="transbox">
<center>          <font size="7" face="Castellar"><h1 style="color:Black">EDIT PRODUCT</h1></font>  
           <form:form method="post" action="/BookBazaar/editsave">    
            <table >    
             <tr>    
              
              <td><form:hidden path="productid"  /><br><br></td>  
             </tr>    
             <tr>    
              <td><font size="5" face="Eras Bold ITC">PRODUCT NAME:</font></td>    
              <td><form:input path="productname" /><br><br></td>  
             </tr>   
             <tr>    
              <td><font size="5" face="Eras Bold ITC">PRODUCT DESCRIPTION :</font></td>    
              <td><form:input path="productdescription" /><br><br></td>  
             </tr>   
             <tr>    
              <td><font size="5" face="Eras Bold ITC">PRODUCT PRICE:</font></td>    
              <td><form:input path="productprice" /><br><br></td>  
             </tr>
             <tr>    
              <td><font size="5" face="Eras Bold ITC">QUANTITY:</font></td>    
              <td><form:input path="quantity" /><br><br></td>  
             </tr>    
              <td> </td> 
                 
              <td><font size="5" face="Eras Bold ITC"><input type="submit" value="UPDATE" /><br><br><br></font></td>    
             </tr>    
            </table>    
           </form:form>
           </div>
           </div>
           </div>
           </center>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>