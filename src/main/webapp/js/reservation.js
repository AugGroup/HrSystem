/**
 * 
 */

/* ------------------------------ Form Calendar ------------------------*/
var $calendar ;//= $("#calendar");
var eventSelector;
var $deleteReservModal = $("#deleteReservModal");

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
	    	console.log(event);
			eventSelector = event;
			$deleteReservModal.modal('show');
			
			/*---------- event Delete ----------*/
			
			/*---------- event Delete ----------*/
		},
		eventLimit: true,
		//lang : 'th',
		timezone: "Asia/Bangkok",
		ignoreTimezone:false,
		eventSources:[
			{
				url : 'reservation/ajax/getAllReservation',
				type: 'GET',
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
		$deleteReservModal.modal('hide');
	});
	
	$('#cancelDeleteReserv').on('click',function(){
		$deleteReservModal.modal('hide');
	});
	
	
})