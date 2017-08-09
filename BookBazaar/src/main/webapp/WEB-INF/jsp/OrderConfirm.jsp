<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
     <%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <c:url value="/resources/pics" var="z"/>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order Confirm Page</title>
</head>
<body background="${z}/b7.jpg">
<jsp:include page="Header.jsp"></jsp:include>
<br>
<br>
<div class="container">
<center><h1><font size="7" face="Algerian"><b>Hi There..!! Congratulations</b></font></h1><br/>

</center>
</div>
<br/>
<br/>
<div class="container-fluid">
  <div class="row">
<div class="col-sm-4">
	          
                   <img src="${z}/order.png" width="300" height="300">
              </div>
         
         
 <div class="col-sm-7">
	        <i><h1><font size="7" face="Eras Bold ITC">Your Order has been Confirmed...!!!</font></h1></i> <br/> 
	        <h3>Thank You ..!! for Choosing Book Bazaar</h3> 
	        <h3>For the Completion Of Order Please Click on <b>"NEXT"</b></h3>
	        <h3> If you want to Continue with Shopping ? Please Click on <b>"CONTINUE SHOPPING"</b> </h3>
            <h3>And If you want to View your Orders ? Please Click on<b>"VIEW ORDERS</b></h3>
            <br/>
            <br/>
             
        <div class="col-sm-2">
<a href="/BookBazaar/index" class="btn btn-warning">Continue Shopping ....</a>
</div>
<div class="col-sm-offset-2 col-sm-3">
<a href="/BookBazaar/viewCart" class="btn btn-warning">View Orders</a>
</div>

<div class="col-sm-3">
<sf:form modelAttribute="orders">

<%-- ${orders} --%>
<input type="submit" class="btn btn-warning" value="next" name="_eventId_event3"></input>
</div>
        
        </div>
</div>
</div>
         




<br/>
<br/>
<br/>
<br/>
<br/>
<!--  -->

</sf:form>
<%-- <a href="${flowExecutionUrl}&_eventId=event1">Next Page</a> --%>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>