<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <title>PRODUCT</title>
<style type="text/css">
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

</style>
<jsp:include page="Header.jsp"></jsp:include>
<br>
<br>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<script type="text/javascript">

var app = angular.module('myApp', []);

app.controller('myCtrl', function($scope)
		{
              $scope.products=${prlist}   
        }
        );
</script>
</head>
<body>
<div class="container">
<div class="background">
  <div class="transbox">
<div ng-app="myApp" ng-controller="myCtrl">
<table class="table table-inverse"bgcolor="white">
 
<thead>
      <tr>
        <th>ID</th>
        <th>PRODUCT NAME</th>
        <th>QUANTITY</th>
        <th>PRICE</th>
        <th>PRODUCT DESCRIPTION</th>
        <th>INFORMATION</th>
      </tr>
    </thead>
    <tbody>
  <tr ng-repeat="x in products">
    <td>{{x.productid}}</td>
    <td>{{x.productname}}</td>
    <td>{{x.quantity}}</td>
    <td>{{x.productprice}}</td>
    <td>{{x.productdescription}}</td>
    <td><a href="productdetail/{{x.productid}}"><span class="glyphicon glyphicon-info-sign"></span></a></td>
  </tr>
  </tbody>
</table>
</div>
</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>