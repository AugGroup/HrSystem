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
		allDaySlot : false,
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