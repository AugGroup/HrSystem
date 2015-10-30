/**
 * 
 */

/* ------------------------------ Form Calendar ------------------------*/
var $calendar ;//= $("#calendar");
var eventSelector;

function updateAppointmentDate(eventToUpdate, revertParam){
	alertify.set({ 	buttonReverse: true,
		labels: {
		    ok     : 'yes',
		    cancel : 'no'
		}
	});	
	
	alertify.confirm('Do you want to update?', function (e) {
	    if (e) { // user click confirm
	    	var updatedata = {
				id : eventToUpdate.id, 
				start : eventToUpdate.start.tz("Asia/Bangkok").format("YYYY-MM-DD HH:mm:ss"), 
				end : eventToUpdate.end.tz("Asia/Bangkok").format("YYYY-MM-DD HH:mm:ss")
		    };

	    	console.log(updatedata);
	    	$.ajax({
	    		url:"reservation/ajax/updateDateTime",
	    		type: "POST",
	    		contentType : "application/json",
	    		data : JSON.stringify(updatedata),
	    		dataType : "json",
	    		success: function(result){
//	    			new PNotify({
//	    				title: pnotifySuccess,
//	    			    text: result.title +"<br>" + pnotifyEdit,
//	    			    type: 'success',
//	    			    delay: 1000,
//	    			});
	    			var view = $calendar.fullCalendar('getView');//get view object
	    			$calendar.fullCalendar( 'destroy' );
	    			renderCalendar();
	    			$calendar.fullCalendar('changeView', view.name);
	    			$calendar.fullCalendar( 'gotoDate', result.start );
//    				findNoEmailUpdate();
//    				findEmailSent();
//    				setEmailAlert();
	    		},
	    		
	    		error:function (jqXHR, textStatus, error){
	    	       // alert('Update error'); 
	    			console.log(error);
	    	    }  
	    	});
	    	
	    } else {
	        // user clicked "cancel"
	    	revertParam();
	    }
	});	
}

function deleteReservation(id){
	$.ajax({
		url : 'reservation/ajax/deleteReservation/'+id,
		type : 'POST',
		contentType : "application/json",
		success: function(result){
			//alert(result);
		},
		error:function(error){
			alert(error);
		}
	})
	
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
			$.ajax({
				url : 'reservation/ajax/getReservation/'+event.id,
				type : 'POST',
				success: function(data) {
					console.log(data);
					$("#detailRoomName").text(data.roomName);
					$("#detailDescType").text(data.reservationType);
					$("#detailDesc").text(data.description);
					$("#detailDate").text(data.dateReservation);
					$("#detailStart").text(moment(data.start,"YYYY-MM-DD HH:mm:ss").hours()+":"+moment(data.start,"YYYY-MM-DD HH:mm:ss").minutes());
					$("#detailEnd").text(moment(data.end,"YYYY-MM-DD HH:mm:ss").hours()+":"+moment(data.end,"YYYY-MM-DD HH:mm:ss").minutes());
					$("#detailReservBy").text(data.reservedBy);
					$("#detailDivision").text(data.divisionName);
					$("#reservDetailModal").modal("show");
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
		],
		editable : true,
		eventDrop: function(event, delta, revertFunc) {
			if(event.start.format("YYYY-MM-DD-HH-mm") < moment().format("YYYY-MM-DD-HH-mm")){
				alertify.alert('cant edit');
				revertFunc();
			}else{
				updateAppointmentDate(event, revertFunc);
				//alert("move");
			}
	    },
	    eventResize: function(event, delta, revertFunc) {
	    	updateAppointmentDate(event, revertFunc);
	    },
			
		
		
	})
	$("div.fc-center").addClass("text-center");
}
$(function (){
	renderCalendar();
	
	
	$('#confirmDeleteReserv').on('click', function(){
		deleteReservation(eventSelector.id);
		$("#deleteReservModal").modal('hide');
		$("#reservDetailModal").modal("hide");
	});
	
	$('#cancelDeleteReserv').on('click', function(){
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
	
	$('#delModalBtn').on('click', function(){
		$("#deleteReservModal").modal('show');
	})
})