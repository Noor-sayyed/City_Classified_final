


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
</style>
<body>
<%@ include file = "navBar.jsp"%>
<div class="content">
	<div class="d-flex flex-row justify-content-center "
		style="background:transparent url('test.jpeg') no-repeat center center /cover">
		
		<div class="pt-5 bd-highlight col-sm-6 col-sm-offset-6">
			<div class="">
		
				<div class="input-group mb-3 ">
					  <input type="text" class="form-control" placeholder="Enter xyz  Name" aria-label="Username" aria-describedby="basic-addon1" >
				</div>
			</div>
		</div>
		
		
		<div class="pt-5 bd-highlight">
			<button type="button" class="btn btn-primary">Search</button>
		</div>
		
		
	</div>
	
	
	<div class="d-flex flex-row justify-content-center">
	<%--<%
		session.setAttribute("cityId", request.getAttribute("cityId"));
	%>--%>
	 <%
	    //session.setAttribute("cityId", request.getAttribute("cityId"));
	    session.getAttribute("cityId");
		session.setAttribute("categoryId", request.getAttribute("categoryId"));
	
	%> 
	<%List<BusinessListing> listOfBusinessListing =(List<BusinessListing>) request.getAttribute("businessList"); %>
	<%for(BusinessListing businessListing:listOfBusinessListing){ %>
        
		<div class="container-fluid">
    <div class="row">
        <div class="col-12 mt-3">
            <div class="card">
                <div class="card-horizontal">
                    <div class="img-square-wrapper">
                        <img  class="card-img-top" width="200"
						height="200" alt="..."src="images/business.jpg">
                    </div>
                    <div class="card-body">
                        <h4 class="card-title"><%=businessListing.getBusinessName() %></h4>
                        <p class="card-text"><%=businessListing.getBusinessDiscription() %></p>
                        <p class="card-text"><%=businessListing.getAddress() %></p>
                        <p class="card-text"><a href=<%=businessListing.getBusinessLink()%>>Website</a></p>
                        <p class="card-text"><a href="viewMap1?listingId=<%=businessListing.getListingId()%>">Get Map</a> </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%} %>
<table>

</div>

</body>
</html>