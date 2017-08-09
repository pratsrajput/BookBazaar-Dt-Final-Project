<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/resources/pics" var="z"/>
<title>Thank You Page</title>
</head>
<body background="${z}/b6.jpg">
<jsp:include page="Header.jsp"></jsp:include>
<br>
<br>
<div class="container-fluid">
<br/><center>
<div class="col-sm-offset-3 col-sm-6" style="box-shadow:0 0 10px grey;padding:16px;margin-bottom:25px;">
<img src="${z}/Thanks.jpg" height=200 width=200/>
<h1><b>Order Placed Successfully</b></h1><br/>
<i><h2>Thank You For Choosing Book Bazaar</h2></i> <br/>
<div class="col-sm-5">
<a href="/BookBazaar/index" class="btn btn-success btn-block">Continue Shopping ....</a>
</div>
<div class="col-sm-offset-2 col-sm-5">
<a href="/BookBazaar/viewCart" class="btn btn-success btn-block">View Orders</a>
</div>
</div>
</center>
</div>
<br/>
<br/>
<br/>
<br/>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>