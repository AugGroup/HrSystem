/**
 * 
 */

/* ------------------------------ Form Calendar ------------------------*/
var $calendar = $("#calendar");
function renderCalendar(){
	$calendar = $("#calendar").fullCalendar({
		header:{
			left: "prev,next today",
			center: "title",
			right: "month,agendaWeek,agendaDay"
		},
		allDaySlot : false,
		selectable: true,
		buttonIcons: true,
		defaultDate: moment(),
		select: function(start,end){
			var view = $calendar.fullCalendar('getView');//get view object
			if(view.name == "month"){ //if event that selected is month then show agendaDay view 
					$calendar.fullCalendar('changeView', 'agendaDay');
					$calendar.fullCalendar( 'gotoDate', start );
			}else{
//					$validform.resetForm();
					$('#formInsert').trigger('reset');
					$("#insStartTime").text(moment(start).format("HH:mm MMMM D, YYYY"));
					$("#insEndTime").text(moment(end).format("HH:mm MMMM D, YYYY"));
					$('#insModal').modal('show');
					insStartTime = start;
					insEndTime = end;
					$calendar.fullCalendar('unselect');
				}
//			alert(start);
		},
		timezone: "Asia/Bangkok",
		ignoreTimezone:false,
		eventClick: function(event,element){

		},
		lang : 'th',
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
	$("div.fc-center").addClass("text-center");
}
$(function (){
	renderCalendar();
	$("#insBtn").on('click',function(){

//		insTitle = $("#applicantName option:selected").text();

		var reservation = { 
//				reservationBy : $("#reservationBy").val(),
				description : $("#description").val(),
				start: insStartTime.tz("Asia/Bangkok").format("YYYY-MM-DD HH:mm:ss"),
				end : insEndTime.tz("Asia/Bangkok").format("YYYY-MM-DD HH:mm:ss"),
				employee :{id:2},
				room : {id:$("#room option:selected").val()},
				masreservationtype	: { id : $("#reservationType option:selected").val()}
		};
		
		var insData;
			console.log(JSON.stringify(reservation));
			
			$.ajax({
				url : "reservation/insertReservation",
				type : 'POST',
				contentType : "application/json",
				dataType : "json",
				data : JSON.stringify(reservation),
				success : function(data){
					alert('success');
					insData = {
						id : data.id,
						employee : {"id":data.id},
//						reservationBy : data.reservationBy,
						description : data.description,
						start : new Date(data.start),
						end : new Date(data.end),
						room :{"id":data.id},
						reservationType :{"id":data.id},
						color: '#FF4512'
					};
					console.log(insData);
					$calendar.fullCalendar('renderEvent', insData); // stick? = true
					$('#insModal').modal('hide');	
					$('#formInsert').trigger('reset');
					
					new PNotify({
						title: "ReservationSuccess",
					    text: /*data.title +"<br>"+ pnotifyInsert*/ 'ok' ,
					    type: 'success',
					    delay: 1000
					});
				},
				error: function(error){
					alert('error');
					console.log(error);
				}
			});//end ajax
	})//endonclick 'insBtn'
})