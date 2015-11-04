/**
 * 
 */

/* ------------------------------ Form Calendar ------------------------*/
var $calendar ;//= $("#calendar");
var eventSelector;
var eventSource;

//     ------------------- JQuery Validate-----------------------

jQuery.validator.addMethod("lettersonly", function(value, element) {
	return this.optional(element) || /^[a-z," ",ก-๋]+$/i.test(value);
	}, "Letters only please.");

var $validform = $("#formInsert").validate({			
	rules:{
		room:{
			required:true
		},
		reservationType:{
			required:true
		},
		reservationBy: {
			required:true,
			lettersonly: true
		},
		masDivisionInsert: {
			required:true
		},
		descriptionInsert: {
			required:true
		}
	},
	
	messages: {
		room:{
			required: $requiredRoom
		},
		reservationType:{
			required: $requiredType
		},
		reservationBy:{
			required: $requiredBy
		},
		masDivisionInsert:{
			required: $requiredDivision
		},
		descriptionInsert:{
			required: $requiredDescription
		}
		
	},
	
	
});

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
	    		url:$getContextPath+"/reservation/ajax/updateDateTime",
	    		type: "POST",
	    		contentType : "application/json",
	    		data : JSON.stringify(updatedata),
	    		dataType : "json",
	    		success: function(result){
	    			var view = $calendar.fullCalendar('getView');//get view object
	    			$calendar.fullCalendar( 'destroy' );
	    			renderCalendar();
	    			$calendar.fullCalendar('changeView', view.name);
	    			$calendar.fullCalendar( 'gotoDate', result.start );
	    		},
	    		
	    		error:function (jqXHR, textStatus, error){
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
		url : $getContextPath+'/reservation/ajax/deleteReservation/'+id,
		type : 'POST',
		contentType : "application/json",
		success: function(result){
			new PNotify({
				title: $notifySuccess,
			    text:  $notifyDelete ,
			    type: 'success',
			    delay: 1000
			});
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
					$validform.resetForm();
					$('#formInsert').trigger('reset');
					$("#insStartTime").text(moment(start).format("HH:mm MMMM D, YYYY"));
					$("#insEndTime").text(moment(end).format("HH:mm MMMM D, YYYY"));
					$('#insModal').modal('show');
					insStartTime = start;
					insEndTime = end;
					$calendar.fullCalendar('unselect');
				}
		},
	    eventClick: function(event) {
			eventSelector = event;
			$.ajax({
				url : $getContextPath+'/reservation/ajax/getReservation/'+event.id,
				type : 'POST',
				success: function(data) {

					$("#reservDetailModal").modal("show");
					$("#detailRoomName").text(data.roomName);
					$("#detailDescType").text(data.reservationType);
					$("#detailDesc").text(data.description);
					$("#detailDate").text(moment(data.dateReservation).format("DD-MM-YYYY"));
					$("#detailStart").text(moment(data.start,"YYYY-MM-DD HH:mm:ss").format("HH:mm"));
					$("#detailEnd").text(moment(data.end,"YYYY-MM-DD HH:mm:ss").format("HH:mm"));
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
		lang: $languageNow,
		timezone: "Asia/Bangkok",
		ignoreTimezone:false,
		eventSources : eventSource = [
		   {
				url : $getContextPath+'/reservation/ajax/getAllReservation',
				type: 'POST',
				data: { roomId : 1},
				success: function(data) {
				},
				error: function(error) {
					alert("ERROR1");
				},
				color : "#FF4512",
				textColor :'white'
		    },
		    {
				url : $getContextPath+'/reservation/ajax/getAllReservation',
				type: 'POST',
				data: { roomId : 2},
				success: function(data) {
				},
				error: function(error) {
					alert("ERROR2");
				},
				color : "#91E650",
				textColor :'white'
		    },
		    {
				url : $getContextPath+'/reservation/ajax/getAllReservation',
				type: 'POST',
				data: { roomId : 3},
				success: function(data) {
				},
				error: function(error) {
					alert("ERROR3");
				},
				color : "#EBCD26",
				textColor :'white'
		    }
		    
		],
		editable : true,
		eventDrop: function(event, delta, revertFunc) {
			if(event.start.format("YYYY-MM-DD-HH-mm") < moment().format("YYYY-MM-DD-HH-mm")){
				alertify.alert('cant edit');
				revertFunc();
			}else{
				updateAppointmentDate(event, revertFunc);
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
	$(".editReservData").hide();
	
	$('#confirmDeleteReserv').on('click', function(){
		deleteReservation(eventSelector.id);
		$("#deleteReservModal").modal('hide');
		$("#reservDetailModal").modal("hide");
	});
	
	$('#cancelDeleteReserv').on('click', function(){
		$("#deleteReservModal").modal('hide');
	});
	
	$("#editReservBtn").on('click', function(){
		$(".showReservData").hide();
		$(".editReservData").show();
		$(this).hide();
		$("#saveEditReservBtn").show();
		
		$("#description").text($("#detailDesc").text());
		$("#editdetailReservBy").val($("#detailReservBy").text());
		$("#editdetailDesc").val($("#detailDesc").text());
		
		
		//find room name
		$("#editdetailRoomName option").filter(function() {
		    //may want to use $.trim in here
		    return $(this).text() == $("#detailRoomName").text();
		}).prop('selected', true);
		
		$("#editdetailDescType option").filter(function() {
		    //may want to use $.trim in here
		    return $(this).text() == $("#detailDescType").text();
		}).prop('selected', true);
		
		$("#editdetailDivision option").filter(function() {
		    //may want to use $.trim in here
		    return $(this).text() == $("#detailDivision").text();
		}).prop('selected', true);
		
	});
	
	$('#reservDetailModal').on('hide.bs.modal', function (e) {
	  // do something...
		$(".showReservData").show();
		$(".editReservData").hide();
		
	})
	$("#cancelEditReservBtn").on('click', function(){
		$(".showReservData").show();
		$(".editReservData").hide();
	})
	
	$("#saveEditReservBtn").on('click', function(){
		var reservationToUpdate = {
				id : eventSelector.id,
				room : { id : $("#editdetailRoomName").val() },
				masreservationtype : { id : $("#editdetailDescType").val()},
				description : $("#editdetailDesc").val(),
				masDivision : {id : $("#editdetailDivision").val()},
				reservationBy : $("#editdetailReservBy").val()
		}
		
		$.ajax({
    		url:$getContextPath+"/reservation/ajax/updateData",
    		type: "POST",
    		contentType : "application/json",
    		data : JSON.stringify(reservationToUpdate),
    		dataType : "json",
    		success: function(result){
    			
    			//edit view data
    			$("#detailRoomName").text(result.roomName);
    			$("#detailDescType").text(result.reservationType);
    			$("#detailDesc").text(result.description);
    			$("#detailDivision").text(result.divisionName);
    			$("#detailReservBy").text(result.reservedBy);
    			
    			new PNotify({
					title: $notifySuccess,
				    text:  $notifyUpdate ,
				    type: 'success',
				    delay: 1000
				});
    			//swap view
    			$(".showReservData").show();
    			$(".editReservData").hide();
    		},
    		
    		error:function (error){
    			alert("error");
    		}  
    	});
	});
	
	$("#insBtn").on('click',function(){
		if( $('#formInsert').valid() ) {

		var reservation = { 
				reservationBy : $("#reservationBy").val(),
				masDivision : {id: $("#masDivisionInsert option:selected").val()},
				description : $("#descriptionInsert").val(),
				start: insStartTime.tz("Asia/Bangkok").format("YYYY-MM-DD HH:mm:ss"),
				end : insEndTime.tz("Asia/Bangkok").format("YYYY-MM-DD HH:mm:ss"),
				room : {id:$("#room option:selected").val()},
				masreservationtype	: { id : $("#reservationType option:selected").val()}
		};
		var insData;
			console.log(JSON.stringify(reservation));
			
			$.ajax({
				url : $getContextPath+"/reservation/insertReservation",
				type : 'POST',
				contentType : "application/json",
				dataType : "json",
				data : JSON.stringify(reservation),
				success : function(data){
					console.log("return...");
					console.log(data);
					if(!data.id) {
						$('#insModal').modal('hide');	
						$('#formInsert').trigger('reset');
						new PNotify({
							title:  $notifyreserved,
						    type: 'warning',
						    delay: 1000
						});
						
					} else {
						insData = {
							id : data.id,
							title : data.title,
							reservationBy : data.reservationBy,
							masDivision :{"id": data.id},
							description : data.description,
							start : moment(data.start),
							end : moment(data.end),
							room :{"id":data.id},
							reservationType :{"id":data.id},
							color: '#FF4512'
						};
						console.log(insData);
						$calendar.fullCalendar('renderEvent', insData); // stick? = true
						$('#insModal').modal('hide');	
						$('#formInsert').trigger('reset');
						
						new PNotify({
							title: $notifySuccess,
						    text:  $notifyAdd ,
						    type: 'success',
						    delay: 1000
						});
					}
				},
				error: function(error){
					console.log(error);
				}
			});//end ajax
		}
	});//endonclick 'insBtn'
	
	$('#delModalBtn').on('click', function(){
		$("#deleteReservModal").modal('show');
	})
	
	var $reservationList;

	$('#searchReserveBtn').on('click', function(){
		var $reservationBy = $("#reservationByCriteria").val();
		var $masDivision = $("#divisionCriteria").val();
		var $masreservationtype = $("#reservationTypeCriteria").val();
		$('#reservationListModal').modal('show');
		
		$.ajax({
			url:$getContextPath+'/reservation/ajax/searchReservation',
//			contentType : "application/json",
//			dataType : "json",
			data : {
				reservationBy : $reservationBy,
				masDivision : $masDivision,
				masreservationtype :$masreservationtype
					},
			type : 'GET',
			success : function(result){
				console.log(result);
			},
			error : function(error){
				alert('error');
			}
		})
		
		if($reservationList){
			$reservationList.destroy();
		}
		
		$reservationList = $('#reservationListTable').DataTable({
			paging: true,
			hover:false,
			sort:false,
			ajax : {
				url : $getContextPath+'/reservation/ajax/searchReservation',
//				contentType : "application/json",
				data : {
					reservationBy : $reservationBy,
					masDivision : $masDivision,
					masreservationtype :$masreservationtype
						},
				dataSrc : "",
				type : 'GET'
			},
			 columns:[
			          {data : "roomName"},
			          {data : "dateReservation"},
			          {data : "start"},
			          {data : "end"},
			          {data : "reservationType"},
			          {data : "divisionName"},
			          {data : "reservedBy"}
			 ],
//			 initComplete :function(){
//			    $("#reservationListTable_previous").children().text("<"); 
//			    $("#reservationListTable_next").children().text(">");
//			 },
			 "dom": 'tp'
			 
		});
	})
	

	
	$('#filterReserveBtn').on('click', function(){
		var $reservationBy = $("#reservationByFilter").val();
		var $masDivision = $("#divisionFilter").val();
		var $masreservationtype = $("#reservationTypeFilter").val();
		var $masRoom = $("#roomFilter").val();
		
		$calendar.fullCalendar( 'destroy' );
		
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
						$validform.resetForm();
						$('#formInsert').trigger('reset');
						$("#insStartTime").text(moment(start).format("HH:mm MMMM D, YYYY"));
						$("#insEndTime").text(moment(end).format("HH:mm MMMM D, YYYY"));
						$('#insModal').modal('show');
						insStartTime = start;
						insEndTime = end;
						$calendar.fullCalendar('unselect');
					}
			},
		    eventClick: function(event) {
				eventSelector = event;
				$.ajax({
					url : $getContextPath+'/reservation/ajax/getReservation/'+event.id,
					type : 'POST',
					success: function(data) {

						$("#reservDetailModal").modal("show");
						$("#detailRoomName").text(data.roomName);
						$("#detailDescType").text(data.reservationType);
						$("#detailDesc").text(data.description);
						$("#detailDate").text(moment(data.dateReservation).format("DD-MM-YYYY"));
						$("#detailStart").text(moment(data.start,"YYYY-MM-DD HH:mm:ss").format("HH:mm"));
						$("#detailEnd").text(moment(data.end,"YYYY-MM-DD HH:mm:ss").format("HH:mm"));
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
			lang: $languageNow,
			timezone: "Asia/Bangkok",
			ignoreTimezone:false,
			eventSources:[
			   eventSource	={
					url : $getContextPath+'/reservation/filterReservation',
					type: 'POST',
					data: {
						reserveBy : $reservationBy,
						divisionId : $masDivision,
						reservationTypeId :$masreservationtype,
						roomId : $masRoom
					},
					success: function(data) {
						alert('Success');
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
				}
		    },
		    eventResize: function(event, delta, revertFunc) {
		    	updateAppointmentDate(event, revertFunc);
		    },
				
			
			
		})
		
	})
})