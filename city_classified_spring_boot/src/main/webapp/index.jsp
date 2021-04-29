<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style type="text/css">
	<%@include file="css/style.css" %>
</style>


<style>
/* unvisited link */
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 4px solid #f1f1f1;}

a:link {
  color: red;
}

/* visited link */
a:visited {
  color: green;
}

/* mouse over link */
a:hover {
  color: blue;
}

/* selected link */
a:active {
  color: red;
}
</style>
</head>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

</head>
<div class="w-50 m-auto text-center p-4 rounded" class="row container text-center m-auto">
<body >
<h2 class="text-center">CITY CLASSIFIED</h2>
<div class="row container text-center m-auto">
<center>
<%
	if(null != request.getAttribute("Message")){
%>
<div class="alert alert-danger w-50 m-auto mb-4 alert-dismissible fade show" role="alert"><%=request.getAttribute("Message") %></div>
<%
	}
%>
<div class="row">
  <div class="col-sm-6">
    <div class="m-2 card zoom " style="height: 15rem;">
    <a href="addCity.jsp">
    <img class="card-img-top" src="images/city.jpg" alt="cty image cap">
    </a>
    <h5 class="p-2">Add a New City</h5>

    </div>
  </div>
  <div class="col-sm-6">
    <div class="m-2 card zoom " style="height:15rem;">
    <a href="addCategoryMaster.jsp">
    <img class="card-img-top" src="images/Classified.jpg" alt="city image cap">
    </a>
    <h5 class="p-2">Add New Category</h5>
      
 
  </div>
 </div>
 
 <div class="col-sm-6">
    <div class="m-2 card zoom" style="height: 15rem;">
    <a href="addBusinessListing">
    <img class="card-img-top" src="images/businesslisting.jpg" alt="city image cap">
    </a>
    <h5 class="p-2">Add Services</h5>
      
 
  </div>
 </div>
 
 <div class="col-sm-6">
    <div class="m-2 card zoom" style="height: 15rem;">
    <a href="viewAllCities"> 
    <img class="card-img-top" src="images/cityclassy.jpg" alt="city image cap">
    </a>
     <h5 class="p-2">View City Classified</h5>
      
 
  </div>
 </div>


 </center>
</div>
</div>
</body>
</html> --%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style type="text/css">
	<%@include file="css/style.css" %>
</style>
<style>
/* unvisited link */
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 4px solid #f1f1f1;}

a:link {
  color: red;
}

/* visited link */
a:visited {
  color: green;
}

/* mouse over link */
a:hover {
  color: blue;
}

/* selected link */
a:active {
  color: red;
}
</style>
</head>
<head>
<%@ include file = "adminNav.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

</head>
<div class="w-50 m-auto text-center p-4 rounded" class="row container text-center m-auto">

<body >
<h2 class="text-center">CITY CLASSIFIED</h2>
<div class="row container text-center m-auto">
<center>
<div class="row">
  <div class="col-sm-6">
    <div class="m-2 card zoom " style="height: 15rem;">
    <a href="addCity.jsp">
    <img class="card-img-top" src="images/city.jpg" alt="cty image cap">
    </a>
    <h5 class="p-2">Add a New City</h5>

    </div>
  </div>
  <div class="col-sm-6">
    <div class="m-2 card zoom " style="height:15rem;">
    <a href="addCategoryMaster.jsp">
    <img class="card-img-top" src="images/Classified.jpg" alt="city image cap">
    </a>
    <h5 class="p-2">Add New Category</h5>
      
 
  </div>
 </div>
 
 <div class="col-sm-6">
    <div class="m-2 card zoom" style="height: 15rem;">
    <a href="addBusinessListing">
    <img class="card-img-top" src="images/businesslisting.jpg" alt="city image cap">
    </a>
    <h5 class="p-2">Add Services</h5>
      
 
  </div>
 </div>
 
 <div class="col-sm-6">
    <div class="m-2 card zoom" style="height: 15rem;">
    <a href="viewAllCities"> 
    <img class="card-img-top" src="images/cityclassy.jpg" alt="city image cap">
    </a>
     <h5 class="p-2">View City Classified</h5>
      
 
  </div>
 </div>
 
 
 </center>
</div>
	
</div>
</body>
</html>