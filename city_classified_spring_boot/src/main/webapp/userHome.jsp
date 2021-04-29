<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.util.*, com.zensar.bean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<style type="text/css">
	<%@include file="css/style.css" %>
</style>
<style>
.zoom:hover{
	transform: scale(1.05);
	}
.card, .card-header, .card-body, .card-footer{
    border-radius:50px !important;}
}
</style>
<body>
<%@ include file = "navBar.jsp"%>
<div class="content">

	<div class="d-flex flex-row justify-content-center ">
	
		
		<div class="pt-5 bd-highlight col-sm-6 col-sm-offset-6">
				<div class="input-group mb-3 ">
					  <input type="text" class="form-control" placeholder="Enter City Name" aria-label="Username" aria-describedby="basic-addon1" >
				</div>
			</div>
			<div class="pt-5 bd-highlight">
			<button type="button" class="btn btn-primary">Search</button>
		</div>
	</div>
	
	<% List<City> listOfAllCities = (List<City>)request.getAttribute("listCities");%>
	<div class="d-flex flex-row justify-content-center">

			<%for(City city:listOfAllCities){ %>  
                   <%System.out.println(city.getCityName()); %>
                   <div class="m-2 card zoom" style="width: 18rem;">
                   <a href="userCategory?cityId=<%=city.getCityId()%>">
					 <img src="<%=city.getCityImage() %>" class="card-img-top" width="200" height="200" alt="...">
					  </a>
					  <div class="card-body" style="text-align:center">
					    <h5 class="card-title"><%=city.getCityName()%></h5>
					    <%-- <a href="userCategory?cityId=<%=city.getCityId()%>"></a> --%>
					  </div>
					</div>
                <%} %>
                
                
                
	</div>
                
	</div>

</div>

</body>
</html>