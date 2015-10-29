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

<%-- <script src='<c:url value ="/resources/moment/js/moment.js"/>'></script> --%>
<%-- <script src='<c:url value="/resources/moment/js/moment-timezone.js"/>'></script> --%>