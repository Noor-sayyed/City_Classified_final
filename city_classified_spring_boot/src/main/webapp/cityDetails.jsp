<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import ="java.util.*, com.zensar.bean.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style type="text/css">
	<%@include file="css/style.css" %>
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

</head>
<body>
	<h2>Cities Details</h2>
<%List<BusinessListing> listOfBusinessListing=(List<BusinessListing>) request.getAttribute("blist");
%>
<form action="citydetails1">
	<input type="hidden" name="requestAction" value="citydetails">
	<table>
	
	<tr>
 <th> Listing Id:</th>
  <th>Business Name:</th>
  <th>Business Description:</th>
  <th>Address:</th>
  <th>Url:</th>
  
  </tr>
  <%for(BusinessListing businessListing :listOfBusinessListing){ %>
<tr>
<td><%=businessListing.getListingId()%></td>
<td><%=businessListing.getBusinessName()%></td>
<td><%=businessListing.getBusinessDiscription()%></td>
<td><%=businessListing.getAddress()%></td>
<td> <a href="updateBusinessListing?requestAction=updateBusinessListing&listingId=<%=businessListing.getListingId()%>">Update</a> </td>
<td> <a href="deleteBusinessListing?requestAction=deleteBusinessListing&listingId=<%=businessListing.getListingId()%>">Delete</a> </td>
<td><a href=<%=businessListing.getBusinessLink()%>><%=businessListing.getBusinessLink()%></a></td>

<td> <a href="viewMap?listingId=<%=businessListing.getListingId()%>">Get Map</a> </td>
</td>
</tr>
<%} %>
	</table>
		</center>
		<a href="logout.jsp">LOGOUT</a>
	</form>
</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import ="java.util.*, com.zensar.bean.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style type="text/css">
	<%@include file="css/style.css" %>
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
</head>
<body>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file = "adminNav.jsp"%>
	<h2>Cities Details</h2>
<%List<BusinessListing> listOfBusinessListing=(List<BusinessListing>) request.getAttribute("blist");
%>
<form action="citydetails1">
	<input type="hidden" name="requestAction" value="citydetails">
<div>
<table class="table table-striped table-dark vertical-center">
  <thead>
    <tr>
      <th style="width:8%">Listing Id</th>
      <th style="width:8%">Business Name</th>
      <th style="width:8%">Business Description</th>
      <th style="width:8%">Address</th>
      <th style="width:8%">Update</th>
      <th style="width:8%">Delete</th>
      <th style="width:8%">Get Map</th>
      <th style="width:8%">Url:</th>
    </tr>
  </thead>
  <%for(BusinessListing businessListing :listOfBusinessListing){ %>
  <tbody>
 <tr><td><%=businessListing.getListingId()%></td>
<td><%=businessListing.getBusinessName()%></td>
<td><%=businessListing.getBusinessDiscription()%></td>
<td><%=businessListing.getAddress()%></td>
<td> <a href="updateBusinessListing?requestAction=updateBusinessListing&listingId=<%=businessListing.getListingId()%>">Update</a> </td>
<td> <a href="deleteBusinessListing?requestAction=deleteBusinessListing&listingId=<%=businessListing.getListingId()%>">Delete</a> </td>

<td> <a href="viewMap?listingId=<%=businessListing.getListingId()%>">Get Map</a> </td>
<td><a href=<%=businessListing.getBusinessLink()%>><%=businessListing.getBusinessLink()%></a></td></tr>
<%} %>
</tbody>
</table>
</div>
</form>

</body>
</html>