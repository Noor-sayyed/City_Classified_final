<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Category Form</title>
</head>
<body>
<style type="text/css">
	<%@include file="css/style.css" %>
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<div class="topnav">
  <a class="text-white bg-dark"><b>Add Category</b></a>
</div>
<div align="center">
<form action = "addCategoryMaster">
<input type="hidden" name="requestAction" value="addCategoryMaster">





<div class="w-50 m-auto m-auto  vertical-center " style="left:25%">
<br>
<br>

	<!-- <div class="mb-3 zoom">
	<label for="inputsm" class="form-label"><b>Category ID</b></label>
		  <input type="text" class="form-control" name="categoryId" required placeholder="Enter Category Id" />
	</div> -->
	<div class="mb-3 zoom">
	<label for="inputsm" class="form-label"><b>Category Name</b></label>
		  <input type="text" class="form-control" name="categoryName" required placeholder="Enter Category Name" />
	</div>
	
	<div class="mb-3 zoom">
	<label for="inputsm" class="form-label"><b>Category Image</b></label>
		  <input type="text" class="form-control" name="categoryImage" required placeholder="Enter Category Image" />
	</div>
	<div class="col-auto zoom">
		<button type="submit" class="btn btn-dark" value = "Add Category">Add Category</button>
		
</div>


<!-- <table>
	<tr>
		<td><b>Category ID: </b></td>
		<td><input type = "text" name = "categoryId"/></td>
	</tr>
	<tr>
		<td><b>Category Name: </b></td>
		<td><input type = "text" name = "categoryName"/></td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td><input type = "submit" value = "Add Category"/></td>
	</tr>
</table> -->
</body>
</html> --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Category Form</title>
</head>
<body>
<style type="text/css">
	<%@include file="css/style.css" %>
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file = "adminNav.jsp"%>
<div align="center">
<form action = "addCategoryMaster">
<input type="hidden" name="requestAction" value="addCategoryMaster">
<div class="w-50 m-auto m-auto  vertical-center " style="left:25%">
<br>
<br>

	<div class="mb-3 zoom">
	<label for="inputsm" class="form-label"><b>Category Name</b></label>
		  <input type="text" class="form-control" name="categoryName" required placeholder="Enter Category Name" />
	</div>
	
	<div class="mb-3 zoom">
	<label for="inputsm" class="form-label"><b>Category Image</b></label>
		  <input type="text" class="form-control" name="categoryImage" required placeholder="Enter Category Image" />
	</div>
	<div class="col-auto zoom">
		<button type="submit" class="btn btn-dark" value = "Add Category">Add Category</button>
		</div>
</div>
</form>
</div>
</body>
</html>