<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%-- <title><spring:message code="report.text" /></title> --%>
<script src="<c:url value ="/resources/js/reportReservation.js"/>"></script> 
<script type="text/javascript">
$(document).ready(function(){
	$("#btn_report").addClass('active-menu'); 
	$("#reportPage").addClass('active-menu'); 
});
</script>

<div class="container">
	<!------------------- Report header------------------->
	<div class="row">
		<h1 align="center">
<%-- 			<spring:message code="report.text" /> --%>
		</h1>
	</div>
	<!------------------- Report search------------------->
	<div class="container" >
	<div class="report_search">
	<form name="reportForm">
			<div class="row">
				<div class="search_inputgroup">
				<div class="report_search">
					
					<div class="col-sm-12">
								<div class="col-sm-12 col-md-2">
									<label for="room">Room</label> 
										<select name="room" id="room" class="form-control">
											<option value="">--- Please Select Room ---</option>
												<c:forEach items="${rooms}" var="room">
											<option value="${room.id}">${room.name} </option>
												</c:forEach>
										</select>
								</div>	
							
	
								<div class="col-sm-12 col-md-2">
									<label for="reservationType">Reservation Type</label> 
									<select id="reservationType" class="form-control" name = "reservationType">
										<option value="">--- Please Select Reservation Type ---</option>
										<c:forEach items="${reservationTypes}" var="masreservationtype">
											<option value="${masreservationtype.id}">${masreservationtype.name} </option>
										</c:forEach>
									</select>
								</div>
								
					 			<div class="col-sm-12 col-md-2">
					 	<label for="reservationBy">Reservation By</label>
	        				<input id="reservationBy" class="form-control" placeholder="Reservation By" name="reservationBy"  ></input>
								</div> 
								
								<div class="col-sm-12 col-md-2">
									<label for="masDivision">Division</label> 
									<select name="masDivisionInsert" id="masDivisionInsert" class="form-control">
										<option value="">--- Please Select Division ---</option>
		
										<c:forEach items="${divisions}" var="masDivision">
												<option value="${masDivision.id}">${masDivision.name} </option>
										</c:forEach>
									</select>
								</div>
								<div class="col-sm-12 col-md-1">
									<div class="div_btn_search">
										<button type="button" class="btn btn-primary" id="btn_search">
											<span class="glyphicon glyphicon-search"></span>SEARCH
										</button>
									</div>
								</div>
								
						</div>
					</div>
				</div>
			</div>

		</form>
	</div>
	</div>


	<!------------------- Report DataTable------------------->
	<div class="table-responsive" id="table2">
		<table class="dataTable" id="reportTable" class="cell-border" style="width: 100%">
		<caption title="" class="tableHeader"></caption>
			<thead>
				<tr>
					<th>RESERVATION BY</th>
					<th>DIVISION</th>
					<th>ROOM</th>
					<th>RESERVATIONTYPE</th>
					<th>DATE</th>
				</tr>
			</thead>
		</table>
	</div>
</div>