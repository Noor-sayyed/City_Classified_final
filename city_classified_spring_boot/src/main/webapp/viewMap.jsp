<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.zensar.bean.* , java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<body onload="loadMap()">

	<title>Google Map </title>
	<style type="text/css">
div#map_container {
	width: 100%;
	height: 700px;
}
</style>
	<script type="text/javascript"
		src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>

	<%
		Location loc = (Location) request.getAttribute("location");
	%>
	<!-- 
											 comming form businesslisting -->
											 
	<%BusinessListing loc =(BusinessListing) request.getAttribute("location"); %>
	<form action="viewMap" method="post">
		<input type="hidden" name="requestAction" value="viewMap" />
		<script type="text/javascript">
			function loadMap() {
				var latitude =<%=loc.getLatitude()%>
		
			var longitude =<%=loc.getLongitude()%>
		
			var lati = 19.0948;
				var longi = 74.7480;
				var latlng = new google.maps.LatLng(latitude, longitude);
				var myOptions = {
					zoom : 17,
					center : latlng,
					mapTypeId : google.maps.MapTypeId.ROADMAP
				};
				var map = new google.maps.Map(document
						.getElementById("map_container"), myOptions);

				var marker = new google.maps.Marker({
					position : latlng,
					map : map,
					title : "Your Location Please Zoom In"
				});

			}
		</script>
		</head>


		<div id="map_container"></div>
		</form>
</body>

</html> --%>





<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.zensar.bean.* , java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<body onload="loadMap()">

	<title>Google Map </title>
	<style type="text/css">
div#map_container {
	width: 100%;
	height: 700px;
}
</style>
	<script type="text/javascript"
		src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>

	
	<%BusinessListing loc =(BusinessListing) request.getAttribute("location"); %>
	
	<form action="viewMap" method="post">
		<input type="hidden" name="requestAction" value="viewMap" />
		<script type="text/javascript">
			function loadMap() {
				var latitude =<%=loc.getLatitude()%>
		
			var longitude =<%=loc.getLongitude()%>
		
			var lati = 19.0948;
				var longi = 74.7480;
				var latlng = new google.maps.LatLng(latitude, longitude);
				var myOptions = {
					zoom : 17,
					center : latlng,
					mapTypeId : google.maps.MapTypeId.ROADMAP
				};
				var map = new google.maps.Map(document
						.getElementById("map_container"), myOptions);

				var marker = new google.maps.Marker({
					position : latlng,
					map : map,
					title : "my hometown, Malim Nawar!"
				});

			}
		</script>
		</head>


		<div id="map_container"></div>
		</form>
</body>

</html>