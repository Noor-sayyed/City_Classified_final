<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.zensar.bean.* , java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style type="text/css">
	<%@include file="css/style.css" %>
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

</head>

<body >
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file = "adminNav.jsp"%>
<div align="center">
<%List<City> listOfAllCities=(List<City>) request.getAttribute("listCities"); %>
<% List<CategoryMaster> listOfAllCategories = (List<CategoryMaster>)request.getAttribute("listCategories");%>
<form action="citydetails">
<div class="w-50 m-auto m-auto  vertical-center " style="left:25%">
      <div class="mb-3 zoom">
	<div class="mb-3 zoom">
		<label for="inputsm" class="form-label"><b>City</b></label>
		  <tr>
                <td>
               
                <select id="cityId" name="cityId"  >
                <option value="0">Select City</option>
                <%for(City c1:listOfAllCities){ %>
                <span class="caret"></span>
                
                   <option value=<%=c1.getCityId() %>> <%=c1.getCityName()%></option>
                <%} %>
                </select>
               
                </td>
              
	</tr>
	</div>
	<tr>
		<label for="inputsm" class="form-label"><b>Category</b></label>
                <td>
               
                <select id="categoryId" name="categoryId" >
                <option value="0">Select Category</option>
                <%for(CategoryMaster cm1:listOfAllCategories){ %>
                <span class="caret"></span>
                
                   <option value=<%=cm1.getCategoryId() %>> <%=cm1.getCategoryName()%></option>
               <%} %>
                </select>
                
                </td>	</tr>
                </div>
	<tr>
   <td>
   <input type="submit" value="Get Details"></input>
   </td>
  </tr>
</table>

</form>
</body>

</html>