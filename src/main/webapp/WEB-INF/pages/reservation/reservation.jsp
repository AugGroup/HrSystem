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
		<div class="col-md-2">
<!-- 			<div class='draggable' data-event='{"title":"my event"}' /> -->
		<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">Small modal</button>
		
		</div>
	</div>
</div>



<!-- Modal Delete -->
		<div class="modal fade" id="deleteReservModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
    <div class="modal-header">
        <h4 class="modal-title" id="deleteModalLabel">Confirm delete</h4>
      </div>
      <div class="modal-body">
      	Are you sure to delete?
      </div>
      <div class="modal-footer">
      <button type="button" id="cancelDeleteReserv" class="btn btn-default" >No</button>
      <button type="button" id="confirmDeleteReserv" class="btn btn-primary yesButton">Yes</button>
      </div>
    </div>
  </div>
</div>    
