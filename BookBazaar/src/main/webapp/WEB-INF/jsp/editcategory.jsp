<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>

 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
    <br>
    <br>
    <div class="container">
<div class="background">
  <div class="transbox"> 
  <center> <h1 style="color:Black"><font size="7" face="Berlin Sans FB Demi"><b>EDIT CATEGORY</b></font></h1>  
           <form:form method="post" action="/BookBazaar/editsavecategory">   
           <br>
           <br> 
            <table >    
             <tr>    
              
              <td><form:hidden path="categoryid"  /></td>  
             </tr>    
             <tr>  
              <td><font size="5" face="Berlin Sans FB Demi">CATEGORY NAME:</font><br/><br/></td>    
              <td><form:input path="categoryname" /><br/><br/></td>  
             </tr>   
             <tr>    
              <td><font size="5" face="Berlin Sans FB Demi">CATEGORY DESCRIPTION :</font><br/><br/></td>    
              <td><form:input path="categorydescription" /><br/><br/></td>  
             </tr>   
             
                 <tr>
              <td><font size="5" face="Berlin Sans FB Demi"><input type="submit" value="UPDATE" /></font><br/><br/></td>    
             </tr>    
            </table>
               
           </form:form>
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
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>