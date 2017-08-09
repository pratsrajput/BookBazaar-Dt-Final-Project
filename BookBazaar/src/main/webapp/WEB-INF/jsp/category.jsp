<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category</title>
<style>
body{
    background:url('http://www.wallpaperup.com/uploads/wallpapers/2012/10/21/20181/cad2441dd3252cf53f12154412286ba0.jpg');
    padding:50px;
}
</style>
</head>
<body ng-app="myApp">
<jsp:include page="Header.jsp"></jsp:include>
<br>
<br>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<script>
var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope) {
    $scope.category=${list}
});
</script>

<div ng-controller="myCtrl">
{{category}}
<table>
  <tr ng-repeat="x in category">
     <td>{{ x.categoryid }}</td>
    <td>{{ x.categoryname }}</td>
    <td>{{ x.categorydescription }}</td>
  </tr>
</table>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>