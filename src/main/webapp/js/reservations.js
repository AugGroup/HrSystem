/**
 * 
 */

/* ------------------------------ Form Calendar ------------------------*/
var $calendar ;
function renderCalendar(){
	$calendar = $("#calendar").fullCalendar({
		header:{
			left: "prev,next today",
			center: "title",
			right: "month,agendaWeek,agendaDay"
		},
		
		defaultDate: moment(),
		select: function(start,end){
			
		},
		eventClick: function(event,element){
			
		},
		events:[
			{
				title: 'All Day Event',
				start: '2015-10-27'
			},
			{
				title: 'Long Event',
				start: '2015-10-26',
				end: '2015-10-27'
			}
	 ]
			
		
		
	})
}
$(function (){
	renderCalendar();
})