<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style type="text/css">
	<%@include file="css/style.css" %>
	
</style>


<head>
<meta   name="viewport" content="width=device-width, initial-scale=1" >
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
</head>
<body>

<%
	if(null != request.getAttribute("errorMessage")){
%>
<div class="alert alert-danger w-50 m-auto mb-4 alert-dismissible fade show" role="alert"><%=request.getAttribute("errorMessage") %><button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>
<%
	}
%>

<div class="w-50 m-auto center text-center p-4 rounded vertical-center" style="left: 25%;">
	<h2>Login form</h2>
	<form action="admin">
		<div class="mb-3 zoom">
		  <label for="exampleFormControlInput1" class="form-label"><b>Username</b></label>
		  <input type="text" class="form-control" name="userName" required placeholder="Enter Username">
		</div>
		<div class="mb-3 zoom">
		  <label for="exampleFormControlInput1" class="form-label"><b>Password<b></b></label>
		  <input type="password" class="form-control" placeholder="Enter Password" name="password" required>
		</div>
		<input type="hidden" name="requestAction" value="login"/>
		<div class="col-auto zoom">
		    <button type="submit" class="btn btn-dark" name="requestAction" value="login">Login</button>
		  </div>	
		
	</form>
</div>

 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

</body>
</html> --%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style type="text/css">
	<%@include file="css/style.css" %>
	
</style>


<head>
<meta   name="viewport" content="width=device-width, initial-scale=1" >
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
</head>
<body>

<%
	if(null != request.getAttribute("errorMessage")){
%>
<div class="alert alert-danger w-50 m-auto mb-4 alert-dismissible fade show" role="alert"><%=request.getAttribute("errorMessage") %><button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>
<%
	}
%>

<div class="w-50 m-auto center text-center p-4 rounded vertical-center" style="left: 25%;">
	<h2>Login form</h2>
	<form action="admin">
		<div class="mb-3 zoom">
		  <label for="exampleFormControlInput1" class="form-label"><b>Username</b></label>
		  <input type="text" class="form-control" name="userName" required placeholder="Enter Username">
		</div>
		<div class="mb-3 zoom">
		  <label for="exampleFormControlInput1" class="form-label"><b>Password<b></b></label>
		  <input type="password" class="form-control" placeholder="Enter Password" name="password" required>
		</div>
		<input type="hidden" name="requestAction" value="login"/>
		<div class="col-auto zoom">
		    <button type="submit" class="btn btn-dark" name="requestAction" value="login">Login</button>
		  </div>	
		
	</form>
</div>

 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

</body>
</html>
