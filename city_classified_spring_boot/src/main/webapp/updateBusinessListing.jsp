<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.zensar.bean.*,java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style type="text/css">
	<%@include file="css/style.css" %>
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%BusinessListing businessListing = (BusinessListing)request.getAttribute("businessListing"); %>
<body>
<h2>Updated Employee Form</h2>
<form action="updatebusinesslistingSave" method="post">
<input type="hidden" name="requestAction" value="updateBusinessListing" />
<table>
<tr>
<td>Listing ID:</td>
<td><input type="text" name="listingId" value=<%=businessListing.getListingId()%> ></td>
</tr>
<tr>
<td>Business Name:</td>
<td><input type="text" name="businessName" value=<%=businessListing.getBusinessName()%>></td>
</tr>
<tr>
<td>Business Description :</td>
<td><input type="text" name="businessDiscription" value=<%=businessListing.getBusinessDiscription() %>></td>
</tr>
<tr>
<td>Address: </td>
<td><input type="text" name="address" value=<%=businessListing.getAddress() %>></td>
</tr>


 <tr>
<td>City Id:</td>

<td><input type="text" name="cityId" value=<%=businessListing.getCityId() %> ></td>
</tr>
<tr>
<td>Category Id:</td>
<td><input type="text" name="categoryId" value=<%=businessListing.getCategoryId() %>></td>
</tr>

<tr>

					<td><b>City Name:</b></td>
					<td><select id="cityId" name=cityId>
					<%if(businessListing.getCityId()==cityName.getCityId()) { %>
							<option value=<%=businessListing.getCityId()%>><%=cityName.getCityName()%></option>
							<% } %>
							<% 
								for (City city : listOfAllCities) {
							%>
							<span class="caret"></span>

							<option value=<%=city.getCityId()%>> <%=city.getCityName()%></option>
							<%
								}
							%>
					</select></td>
				</tr>
				<tr>
					<td><b>Category Name:</b></td>
					
					<td><select id="categoryId" name=categoryId>
					
							<option value=<%=businessListing.getCategoryId() %>> <%=catgeoryMaster.getCategoryName()%></option>
						
							<%
								for (CategoryMaster cm : listOfAllCategories) {
							%>
							<span class="caret"></span>
							<option value=<%=cm.getCategoryId()%>> <%=cm.getCategoryName()%></option>
							<%
								}
							%>
					</select></td>
				</tr>





<tr>
<td>Business Link:</td>
<td><input type="text" name="businessLink" value=<%=businessListing.getBusinessLink()%>></td>
</tr>
<tr>
<td>Latitude: </td>
<td><input type="text" name="latitude" value=<%=businessListing.getLatitude()%>></td>
</tr>
<tr>
<td>Longitude :</td>
<td><input type="text" name="longitude" value=<%=businessListing.getLongitude()%>></td>
</tr>

<td>&nbsp;</td>
 <tr>
   <td> <input type="submit" value="Update Business Listing"/></td>
   </tr>
</table>
<br><br>
<a href="logout.jsp">LOGOUT</a>
</form>
</body>
</html> --%>




<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.zensar.bean.*,java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style type="text/css">
	<%@include file="css/style.css" %>
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%BusinessListing businessListing = (BusinessListing)request.getAttribute("businessListing"); %>
<%@ include file = "adminNav.jsp"%>
<body>

<form action="updatebusinesslistingSave" method="post">
<div class="w-50 m-auto m-auto  vertical-center " style="left:25%">
<input type="hidden" name="requestAction" value="updateBusinessListing" />
<table>
<tr>
<td>Listing ID:</td>
<td><input type="text" name="listingId" value=<%=businessListing.getListingId()%>></td>
</tr>
<tr>
<td>Business Name:</td>
<td><input type="text" name="businessName" value=<%=businessListing.getBusinessName()%>></td>
</tr>
<tr>
<td>Business Description :</td>
<td><input type="text" name="businessDiscription" value=<%=businessListing.getBusinessDiscription() %>></td>
</tr>
<tr>
<td>Address: </td>
<td><input type="text" name="address" value=<%=businessListing.getAddress() %>></td>
</tr>
 <tr>
<td>City Name:</td>
<td><input type="text" name="cityId" value=<%=businessListing.getCityId() %>></td>
</tr>
<tr>
<td>Category Name:</td>
<td><input type="text" name="categoryId" value=<%=businessListing.getCategoryId() %>></td>
</tr>

<tr>
<td>Business Link:</td>
<td><input type="text" name="businessLink" value=<%=businessListing.getBusinessLink()%>></td>
</tr>
<tr>
<td>Latitude: </td>
<td><input type="text" name="latitude" value=<%=businessListing.getLatitude()%>></td>
</tr>
<tr>
<td>Longitude :</td>
<td><input type="text" name="longitude" value=<%=businessListing.getLongitude()%>></td>
</tr>
<td>&nbsp;</td>
 <tr>
   <td> <input type="submit" value="Update Business Listing"/></td>
   </tr>
</table>
<br><br>
</div>
</form>
</body>
</html>