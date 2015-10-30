<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<!-- 		<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">Small modal</button> -->
		
		</div>
	</div>
</div>

<div class="modal fade" id="reservDetailModal" tabindex="-1" role="dialog" aria-labelledby="reservDetailLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="reservDetailLabel">Reservation Detail</h4>
      </div>
      <div class="modal-body">
      	<div class="container-fluid">
      		<div class="row">
      			<div class="col-offset-md-1 col-md-2"><h4>Room</h4></div>
      			<div class="col-md-7 col-offset-md-1"><h4 id="detailRoomName"></h4></div>
      		</div>
      		<div class="row">
      			<div class="col-offset-md-1 col-md-2"><h4>For</h4></div>
      			<div class="col-md-7 col-offset-md-1"><h4 id="detailDescType"></h4></div>
      		</div>
      		<div class="row">
      			<div class="col-offset-md-1 col-md-2"><h4>Description</h4></div>
      			<div class="col-md-7 col-offset-md-1"><h4 id="detailDesc"></h4></div>
      		</div>
      		<div class="row">
      			<div class="col-offset-md-1 col-md-2"><h4>Date</h4></div>
      			<div class="col-md-7 col-offset-md-1"><h4 id="detailDate"></h4></div>
      		</div>
      		<div class="row">
      			<div class="col-offset-md-1 col-md-2"><h4>From</h4></div>
      			<div class="col-md-3"><h4 id="detailStart"></h4></div>
      			<div class="col-md-2"><h4>To</h4></div>
      			<div class="col-md-3 col-offset-md-1"><h4 id="detailEnd"></h4></div>
      		</div>
      		<div class="row">
      			<div class="col-offset-md-1 col-md-2"><h4>By</h4></div>
      			<div class="col-md-3"><h4 id="detailReservBy"></h4></div>
      			<div class="col-md-2"><h4>Division</h4></div>
      			<div class="col-md-3 col-offset-md-1"><h4 id="detailDivision"></h4></div>
      		</div>
      	</div>
      </div>
      <div class="modal-footer">
        <button id="delModalBtn" type="button" class="btn btn-danger">Delete</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
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

    
<!-- Insert Modal -->
	<div class="modal fade" id="insModal">
	  <div class="modal-dialog">
	    <div class="modal-content">
	    
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title">Insert Reservation</h4>
	      </div>
	      
	      <div class="modal-body">
	        	<div class="container-fluid"><form id="formInsert">
	        		<div class="row">
	        			<div class="col-md-12">
	        			<input type="hidden" id="employee"  name="employee"  ></input>
	        			<input type="hidden" id="masreservationtype"  name="masreservationtype"  ></input>
	        			<label for="insStartTime">Start Time</label>
	        			<h4 id="insStartTime"></h4>
	        			</div>
	        		</div>
	        		<div class="row">
	        			<div class="col-md-12">
	        			<label for="insEndTime">End Time</label>
	        			<h4 id="insEndTime"></h4>
	        			</div>
	        		</div>
	        		<hr>
	        		<div class="row">
						<div class="col-md-6">
							<label for="room">Room</label> 
							<select name="room" id="room" class="form-control">
								<option value="">Please select</option>
								<c:forEach items="${rooms}" var="room">
										<option value="${room.id}">${room.name} </option>
									</c:forEach>
							</select>
						</div>
						
						<div class="col-md-6">
								<label for="reservationType">Reservation Type</label> 
								<select id="reservationType" class="form-control" name = "reservationType">
									<option value="">Please select</option>
									<c:forEach items="${reservationTypes}" var="masreservationtype">
										<option value="${masreservationtype.id}">${masreservationtype.name} </option>
									</c:forEach>
								</select>
						</div>
					</div>
						
        			<hr>
        			<div class="row">
	        			<div class="col-md-6">
	        				<label for="reservationBy">Reservation By</label>
	        				<input id="reservationBy" class="form-control" placeholder="Reservation By" name="reservationBy"  ></input>
	        			</div>
	        		
					</div>
					<br>
					<div class="row">	
	        			<div class="col-md-12">
	        				<label for="description">Description</label>
	        				<textarea id="description" name ="description" class="form-control" rows="4" placeholder="Description"></textarea>
	        			</div>
        			</div></form>
	        		</div>
	      </div><!-- /.modal-body -->
	      
	      <div class="modal-footer">
	        <button id="insBtn" type="button" class="btn btn-warning"><span class="glyphicon glyphicon-plus"></span>Add</button>
	        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
	      </div>
	      
	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
</div>
