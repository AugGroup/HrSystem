/**
 * 
 */

/* ------------------------------ Form Calendar ------------------------*/
var $calendar ;//= $("#calendar");
var eventSelector;

function deleteReservation(id){
	$calendar.fullCalendar( 'removeEvents' ,id );
}

function renderCalendar(){
	$calendar = $("#calendar").fullCalendar({
		header:{
			left: "prev,next today",
			center: "title",
			right: "month,agendaWeek,agendaDay"
		},
		selectable : true,
		editable: true,
		defaultDate: moment(),
		select: function(start,end){
			
		},
	    eventClick: function(event) {
//	    	console.log(event);  
			eventSelector = event;
//			$("#deleteReservModal").modal('show');
			$.ajax({
				url : 'reservation/ajax/getReservation/'+event.id,
				type : 'POST',
				success: function(data) {
					console.log(data);
					$("#reservDetailModal").modal("show");
					$("#detailRoomName").text(data.roomName);
					$("#detailDescType").text(data.reservationType);
					$("#detailDesc").text(data.description);
					$("#detailDate").text(data.dateReservation);
					$("#detailStart").text(moment(data.start,"YYYY-MM-DD HH:mm:ss").hours()+":"+moment(data.start,"YYYY-MM-DD HH:mm:ss").minutes());
					$("#detailEnd").text(moment(data.end,"YYYY-MM-DD HH:mm:ss").hours()+":"+moment(data.end,"YYYY-MM-DD HH:mm:ss").minutes());
					//$("#detailReservBy").text(data.detailReservBy);
					$("#detailDivision").text(data.divisionName);
				},
				error: function(error) {
					alert("ERROR");
				}
			})
		},
		eventLimit: true,
		//lang : 'th',
		timezone: "Asia/Bangkok",
		ignoreTimezone:false,
		eventSources:[
			{
				url : 'reservation/ajax/getAllReservation',
				type: 'POST',
				success: function(data) {
				},
				error: function(error) {
					alert("ERROR");
				}
		    }
		]
			
		
		
	})
	$("div.fc-center").addClass("text-center");
}
$(function (){
	renderCalendar();
	
	
	$('#confirmDeleteReserv').on('click',function(){
		deleteReservation(eventSelector.id);
		$("#deleteReservModal").modal('hide');
	});
	
	$('#cancelDeleteReserv').on('click',function(){
		$("#deleteReservModal").modal('hide');
	});
	
	
})