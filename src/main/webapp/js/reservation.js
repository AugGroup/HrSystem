/**
 * 
 */

/* ------------------------------ Form Calendar ------------------------*/
var $calendar ;//= $("#calendar");
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
		eventClick: function(event,element){
			
		},
		eventLimit: true,
		//lang : 'th',
		timezone: "Asia/Bangkok",
		ignoreTimezone:false,
		eventSources:[
			/*{
				title: 'All Day Event',
				start: '2015-10-27'
			},
			{
				title: 'Long Event',
				start: '2015-10-26',
				end: '2015-10-27'
			},*/
			{
				url : 'reservation/ajax/getAllReservation',
				type: 'GET',
				success: function(data) {
					/*console.log("load: ");
					console.log(data);*/
					//alert("success");
					console.log(data);
				},
				error: function(error) {
					alert("ERROR");
					console.log(error);
				}
		    }
		]
			
		
		
	})
	$("div.fc-center").addClass("text-center");
}
$(function (){
	renderCalendar();
})