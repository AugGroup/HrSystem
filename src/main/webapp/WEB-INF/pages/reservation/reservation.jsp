<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!-- Reservation css -->
<link href="<c:url value="/resources/css/reservation.css" />" rel="stylesheet" media="all">

<!-- Reservation Controller -->
<script src="<c:url value="/resources/js/reservation.js" />"></script>

<div class="container-fluid">
	<div class="row">
		<div class="col-md-10">
			<div id="calendar"></div>
			
		</div>
	</div>

</div>