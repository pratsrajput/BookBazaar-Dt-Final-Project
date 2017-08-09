<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style type="text/css">
.points_table thead {
	width: 50%;
}

.points_table tbody {
	height: 562px;
	overflow-y: auto;
	width: 50%;
}

.points_table thead tr{
	width: 99%;
}

 .points_table tr{
 	width: 100%;
 }

.points_table thead, .points_table tbody, .points_table tr, .points_table td, .points_table th{
	display: inline-block;
}

.points_table thead{
	background: #d91f2d;
	color: #fffFFF;
}

.points_table tbody td, .points_table thead > tr> th{
	float: left;
	border-bottom-width: 0;
}

.points_table>tbody>tr>td, .points_table>tbody>tr>th, .points_table>tfoot>tr>td, .points_table>tfoot>tr>th, .points_table>thead>tr>td, .points_table>thead>tr>th{
	padding: 8px;
	height: 60px;
	text-align: center;
	line-height: 35px;
}

.odd {
	background: #ffffff;
	color: #000;
}

.even {
	background: #efefef;
	color: #000;
}

.points_table_scrollbar{
	height: 612px;
	overflow-y: scroll;
}

.points_table_scrollbar::-webkit-scrollbar-track{
	-webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.9);
	border-radius: 10px;
	background-color: #444444;
}

.points_table_scrollbar::-webkit-scrollbar{
	width: 1%;
	min-width: 5px;
	background-color: #F5F5F5;
}

.points_table_scrollbar::-webkit-scrollbar-thumb{
	border-radius: 10px;
	background-color: #D62929;
	background-image: -webkit-linear-gradient(90deg, transparent, rgba(0, 0, 0, 0.4) 50%, transparent, transparent)
}
body{
    background:url('http://www.wallpaperup.com/uploads/wallpapers/2012/10/21/20181/cad2441dd3252cf53f12154412286ba0.jpg');
    padding:50px;
}
</style>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<br>
<br>

<div class="container">
	<div class="row">
	<center> <h1 style="color:Peachpuff"><font size="7" face="Berlin Sans FB Demi"><b>Admin Home</b></font></h1></center>
		
		<br/><br/>
		<center><table align="center" class="points_table">
			<thead>
				<tr>
					<th class="col-xs-1">S.No.</th>
					<th class="col-xs-7">ADMIN PANEL</th>
				</tr>
			</thead>

			<tbody class="points_table_scrollbar">
				<tr class="odd">
					<td class="col-xs-1">1</td>
					<td class="col-xs-7"><a href="addproduct">ADD PRODUCT</a></td>
				</tr>

				<tr class="even">
					<td class="col-xs-1">2</td>
					<td class="col-xs-7"><a href="viewproduct">VIEW PRODUCT</a></td>
				</tr>
				
				<tr class="odd">
					<td class="col-xs-1">3</td>
					<td class="col-xs-7"><a href="addcategory">ADD CATEGORY</a></td>
				</tr>

				<tr class="even">
					<td class="col-xs-1">4</td>
					<td class="col-xs-7"><a href="viewcategory">VIEW CATEGORY</a></td>
				</tr>

				<tr class="odd">
					<td class="col-xs-1">5</td>
					<td class="col-xs-7"><a href="addsupplier">ADD SUPPLIER</a></td>
				</tr>

				<tr class="even">
					<td class="col-xs-1">6</td>
					<td class="col-xs-7"><a href="viewsupplier">VIEW SUPPLIER</a></td>
				</tr>

				
			</tbody>
		</table>
		</center>
	</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>