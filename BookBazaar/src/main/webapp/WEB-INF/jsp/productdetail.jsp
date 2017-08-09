<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/resources/pics" var="z"/>
<title>Product details</title>

<style>

 .productdetail{
	padding: 10px;
	border: 1px solid black;
	height: 400px;
	background-color: cornsilk;
	}
 

.productimage{
	border: 1px solid black;
	height: 400px;
	
	}
	
.imgsize{
	height: 100%;
	width: 100%;

}	
	
	
</style>

</head>
<body background="${z}/b5.jpg">
<%@ include file="Header.jsp" %>
<br>
<br>
<div class="container-fluid">
  <div class="row">

       <div class="col-sm-7">
            <div class="productimage">
    
             <form action="/BookBazaar/Cart/${product.productid}">
             <h2> Product Details </h2>
        	 <center>
             <table class="table table-striped">

                 <tr>
                 <td><% out.print("Product Id :"); %>
                 &nbsp;
                 ${product.productid}</td>
                 </tr>
 
                  <tr>
                  <td><% out.print("Product Name :"); %>
                  &nbsp;
                  ${product.productname}</td>
                  </tr>
 
                  <tr>
                  <td><% out.print("Product Quantity :"); %>
				  &nbsp;
				  ${product.quantity}</td>
				  </tr>

				<tr>
				<td><% out.print("Product Price :"); %>
				&nbsp;
				${product.productprice}</td>
				</tr>

				<tr>
				<td><% out.print("Product Description :"); %>
				&nbsp;
				${product.productdescription}</td>
				</tr>
				<tr><td>
				Quantity:  <input type="number" value="1" name="q"/><br><br>
 <input type="submit" class="btn btn-lg btn-primary" value="AddtoCart"/> 
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
 <a href="/BookBazaar/index" class="btn btn-lg btn-primary">Continue Shopping</a>
 </td></tr>

			</table>


		</center>
		</form>	

			</div>

		</div>
<!-- </div> -->

         <div class="col-sm-5">
	          <div class="productdetail">
                   <img class="imgsize" src='../resources/pics/${product.productid}.jpg' width="300" height="300">
              </div>
         </div>
</div>
</div>
<!-- <br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br> --><br><br>
<%@ include file="footer.jsp" %>
</body>
</html>