<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/resources/pics" var="z"/>
<title>CART</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<style type="text/css">
.custab{
    border: 1px solid #ccc;
    padding: 5px;
    margin: 5% 0;
    box-shadow: 3px 3px 2px #ccc;
    transition: 0.5s;
    }
.custab:hover{
    box-shadow: 3px 3px 0px transparent;
    transition: 0.5s;
    }
    </style>

</head>
<body background="${z}/b5.jpg" ng-app="myApp" ng-controller="myCtrl">
<%@ include file="Header.jsp" %>
<form action="/BookBazaar/checkout">
<br>
<br>
<div class="container" align="center">
<h1 style="color:black"><font size="7" face="Berlin Sans FB Demi"><b>My Cart</b></font></h1>
</div>

<div class="container-fluid">
<div class="background">
  <div class="transbox">
    <div class="row col-md-6 col-md-offset-2 custyle">
    <table class="table table-striped custab">
    <thead>
        <tr>
            
            <th><font size="5" face="Berlin Sans FB Demi"><b>ID</b></font></th>
            <th><font size="5" face="Berlin Sans FB Demi"><b>Name</b></font></th>
            <th><font size="5" face="Berlin Sans FB Demi"><b>Price</b></font></th>
            <th><font size="5" face="Berlin Sans FB Demi"><b>Quantity</b></font></th>
           
            <th class="text-center"><font size="5" face="Berlin Sans FB Demi"><b>Remove</b></font></th>
        </tr>
    </thead>
            <tr ng-repeat="x in list">
               <!-- <td>{{x.cart_id}}</td> -->
                <td>{{x.productid}}</td>
                <td>{{x.productname}}</td>
                <td>{{x.productprice | currency:'Rs.'}}</td>
                <td>{{x.quantity}}</td>
                <td class="text-center"> <a href="/BookBazaar/deletecart/{{x.cart_id}}" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> Delete</a></td>
            </tr>
            
    </table>
    
    <br><br><center><font size="5" face="Berlin Sans FB Demi"><input type="submit" value="Checkout"></font></center><br><br>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    </div>
</div>
</div>
</div>


<script>
var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope) {
    $scope.list=${pr}
});
</script>
<div class="container" align="center">

</div>
</form>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>