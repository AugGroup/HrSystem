

var dt;
$(document).ready(function() {
	
	
	
	
	 
	
	$('#tbResult').dataTable({ 
		"bLengthChange": false,
		"iDisplayLength": 10,
		"pagingType": "simple_numbers",
		"ordering": false,
		"info": false,
		"dom": '<"toolbar">frtip'
	});
	/* $("div.toolbar").html('<b><button type="button" id="addBtnLe" class="btn btn-warning btn-md"data-toggle="modal" data-target="#addModal"><spring:message code="label.newRecord" /></button></b>');
	 */
	 $("div.toolbar").html('<b><button id="clearModal" type="button" class="btn btn-warning btn-md" data-toggle="modal" data-target="#addModal">'+$msgNewRecord+'</button> </b>');
	$("#addBtnLe").on("click", function(){
		
		clearModal();
	
 }); 
	
	$("#Button").on("click",function(){
			
			/* $('#addForm').bootstrapValidator(); */
			$('#addForm').data('bootstrapValidator').resetForm();


		});
	
	
	
	$('#addForm').bootstrapValidator({
		
		  message: 'This value is not valid',
	        feedbackIcons: {
	            valid: 'glyphicon glyphicon-ok',
	            invalid: 'glyphicon glyphicon-remove',
	            validating: 'glyphicon glyphicon-refresh'
	        },
	        fields: {
	        	masleavetype: {
	                validators: {
	                    notEmpty: {
	                        message: $validateNameMasleavetype
	                    }
	                }
	            },
	            
            reason: {
                validators: {
                    notEmpty: {
                        message: $validateReason
                    }
                }
            },
             
           
            startTime: {
                validators: {
                    notEmpty: {
                        message: $validateStartdate
                    }
                }
            },
            endTime: {
                validators: {
                    notEmpty: {
                        message:  $validateEnddate
                    }
                }
            },
            aim: {
                validators: {
                    notEmpty: {
                        message: $validateAim
                    },
           
                }
            },
           
            
            
            
            }
	        
	         
	      
		
	}); 
	
	$('#startTime').mask("99-99-9999 99:99",{placeholder:"DD-MM-YYYY HH:MM"});
	$('#endTime').mask("99-99-9999 99:99",{placeholder:"DD-MM-YYYY HH:MM"});
	
	$('#startTime1')
    .on('dp.change dp.show', function(e) {
        // Validate the date when user change it
        $('#addForm')
            // Get the bootstrapValidator instance
            .data('bootstrapValidator')
            // Mark the field as not validated, so it'll be re-validated when the user change date
            .updateStatus('startTime', 'NOT_VALIDATED', null)
            // Validate the field
            .validateField('startTime');
        
        
        var tempdate = new Date(e.date);
		tempdate.setDate(tempdate.getDate());
       $('#endTime1').data("DateTimePicker").minDate(tempdate);
        
    });
	
	$('#endTime1')
    .on('dp.change dp.show', function(e) {
        // Validate the date when user change it
        $('#addForm')
            // Get the bootstrapValidator instance
            .data('bootstrapValidator')
            // Mark the field as not validated, so it'll be re-validated when the user change date
            .updateStatus('endTime', 'NOT_VALIDATED', null)
            // Validate the field
            .validateField('endTime');
        
        
    });
	
     $('#startTime1').datetimepicker({
    	
    	// viewMode: 'days',
		 format : 'DD-MM-YYYY HH:mm',
// 		 minDate: 'moment'
		 defaultDate: 'moment'
    }); 

     var defaultDate = new Date();
		defaultDate.setDate(defaultDate.getDate());
		
	
	
	$( '#endTime1').datetimepicker({
		//viewMode: 'days',
		format : 'DD-MM-YYYY HH:mm',
// 		minDate: 'moment'
		//defaultDate: defaultDate,
	}); 
	 
	
	
	
		
	/* 
	 $("#dateFrom").on("dp.change", function (e) {
		  			
					$('#addForm')
		             // Get the bootstrapValidator instance
		             .data('bootstrapValidator')
		             // Mark the field as not validated, so it'll be re-validated when the user change date
		            .updateStatus('dateFrom', 'NOT_VALIDATED', null)
		             // Validate the field
		            .validateField('dateFrom');
	 }); */
	
	
	dt=$("#tbResult").dataTable();
		listAll();

		
		
		$("#addModal").on("show.bs.modal",function(event) {
			
			
			var button = $(event.relatedTarget) //Button that triggered the model เพื่อดูว่า evet ของ ปุ่มไหน
			var leaveid = button.data("id") //Extract info from data-* attribute
			 
			
			var d = new Date($('#startTime1').data("DateTimePicker").date());
			d.setDate(d.getDate()+1);
    		//$('#endTime1').data("DateTimePicker").minDate(d);
    		//$('#endTime1').data("DateTimePicker").date(d);
			
    		/* startTime1
    		endTime1 */
    		
			if(leaveid != null){
				getId(leaveid);
			}  
			
			$(this).find(".saveButton").off("click").on("click",function() {
				 if(leaveid != null){
				   $('#addForm').bootstrapValidator();
	    		   $('#addForm').data('bootstrapValidator').validate();
	    		   if($('#addForm').data('bootstrapValidator').isValid()){
					updateLeave(button,leaveid);
	    		   }
					
				}else{ 
				   
					$('#addForm').bootstrapValidator();
		    		$('#addForm').data('bootstrapValidator').validate();
		    		if($('#addForm').data('bootstrapValidator').isValid()){
						addLeave();
		    		}
					
				  } 
				
			});
			
			$(this).find(".btnClose").off("click").on("click",function() {
				$('#addForm').bootstrapValidator('resetForm', true);
			
				
			});
			
		});
		
		
		/* --- DeleteName --- */
		$("#deleteModal").on("show.bs.modal",function(event) {
			
			var button = $(event.relatedTarget) //Button that triggered the model เพื่อดูว่า evet ของ ปุ่มไหน
			var leaveid = button.data("id") //Extract info from data-* attribute
			
			$(this).find(".yesButton").off("click").on("click",function() {
				deleteLeave(button,leaveid);
			});
			
		});
		
		
		
		function addLeave(){
// 			var id = getUrlParameter('Id');
			var id = $("#empId").val();
			//var leave="masleavetypeId="+$("#masleavetype").val()+"&masleavetype="+$("#masleavetype option:selected").text()+"&startDate="+$("#startDate").val()+"&endDate="+$("#endDate").val()+"&startTime="+$("#startTime").val()+"&endTime="+$("#endTime").val()+"&reason="+$("#reason").val()+"&aim="+$("#aim").val()+"&employeeId="+id;
			var leave="masleavetypeId="+$("#masleavetype").val()+"&masleavetype="+$("#masleavetype option:selected").text()+"&startTime="+$("#startTime").val()+"&endTime="+$("#endTime").val()+"&reason="+$("#reason").val()+"&aim="+$("#aim").val()+"&employeeId="+id;

			
			$.ajax({
				url : $getContextPath+"/leave/add",
				data :leave,
					/* JSON.stringify({
					

					masleavetypeId:$("#masleavetype").val(),
					masleavetype:$("#masleavetype option:selected").text(),
					//startDate:$("#startDate").val(),
					//endDate:$("#endDate").val(),
					startTime:$("#startTime").val(),
					endTime:$("#endTime").val(),
					reason:$("#reason").val(),
					aim:$("#aim").val(),
					employeeId :id 
				}) ,*/
				type : "POST",
				/* contentType : "application/json", */
				/* dataType: "json", */
				success : function(data) {
					
					 //duration();
					$('#addForm').bootstrapValidator('resetForm', true);
				//alert(JSON.stringify(data));
						
				/* 
					 dt.fnClearTable();
					
					dt.fnAddData([
					
					              
						data.masleavetype,
						data.startDate,
						data.endDate,			
						data.startTime,
						data.endTime,
						data.reason,
						data.aim,
					
						
						'<button type="button" class="btn btn-warning" data-id="'+data.id+'" data-toggle="modal" data-target="#addModal" > Edit</button>',
						'<button type="button" class="btn btn-danger" data-id="'+data.id+'" data-toggle="modal" data-target="#deleteModal"> Delete</button>'
					]); */
					
					$('#addModal').modal('toggle');
					$(function(){ new PNotify({
						title: 'Success',
						type: 'success',
						animation: {
							effect_in: 'show',
							effect_out: 'slide'
						}
						});
					});
					listAll();
				}/* ,
				error : function() {
					$(function(){ new PNotify({
					    title: 'Error!',
					    type: 'error',
						animation: {
							effect_in: 'show',
							effect_out: 'slide'
						}
						});
					});
// 					alert("ERROR");
					$('#addForm').bootstrapValidator('validate');
				} */
			});
		}
		
		function getId(leaveid){
			
			
			$.ajax({
				
				url : $getContextPath+"/leave/findById/"+ leaveid,
				//data : "id=" + abilityid,
				type : "POST",
				success : function(data) {
					//alert(JSON.stringify(data));
					
					$("#masleavetype").val(data.masleavetypeId);
					//$("#startDate").val(data.startDate);
					//$("#endDate").val(data.endDate);
					$("#startTime").val(data.startTimeString);
					$("#endTime").val(data.endTimeString);
					//$("#endTime").val(data.endTime);
					$("#reason").val(data.reason);
					$("#aim").val(data.aim);
					
					employeeId: data.employeeId;
				}/* ,
				error : function(data, textStatus, jqXML) {
					{
						$(function(){ new PNotify({
						    title: 'Error!',
						    type: 'error',
							animation: {
								effect_in: 'show',
								effect_out: 'slide'
							}
							});
						});
// 						alert("error");
					}
					;
				} */
			});
		}
		
		
		
		function updateLeave(button,leaveid) {
			/* alert("fn up"); */
// 				var id = getUrlParameter('Id');
				var id = $("#empId").val();
				
				var leave="id="+leaveid+"&masleavetypeId="+$("#masleavetype").val()+"&masleavetype="+$("#masleavetype option:selected").text()+"&startTime="+$("#startTime").val()+"&endTime="+$("#endTime").val()+"&reason="+$("#reason").val()+"&aim="+$("#aim").val()+"&employeeId="+id;

				$.ajax({
					url : $getContextPath+"/leave/update",
					data : leave ,
					/* JSON.stringify({
						id:leaveid,
						masleavetypeId : $("#masleavetype").val(),
						masleavetype : $("#masleavetype option:selected").text(),
						//startDate:$("#startDate").val(),
						//endDate:$("#endDate").val(),
						startTime:$("#startTime").val(),
					//	endTime:$("#endTime").val(),
						reason:$("#reason").val(),
						aim:$("#aim").val(),
						employeeId: id
					}), */
					type : "POST",
					/* contentType : "application/json",
					dataType : "json", */
					success : function(data) {
						//alert(abilityid);
						//alert(JSON.stringify(data));
						
						$('#addForm').bootstrapValidator('resetForm', true);

						/* 
						var tr = button.closest("tr");						
						dt.fnUpdate(data.startDate, tr, 0 );
						dt.fnUpdate(data.startTime, tr, 1 );
						dt.fnUpdate(data.endDate, tr, 2 );
						dt.fnUpdate(data.endTime, tr, 3 );
						dt.fnUpdate(data.masleavetype.name, tr, 4);
						dt.fnUpdate(data.reason, tr, 5 );
						dt.fnUpdate(data.aim, tr, 6 ); */
						$('#addModal').modal('toggle');
						$(function(){ new PNotify({
							title: 'Success',
							type: 'success',
							animation: {
								effect_in: 'show',
								effect_out: 'slide'
							}
							});
						});
						listAll();
					}/* ,
					error : function() {
						$(function(){ new PNotify({
						    title: 'Error!',
						    type: 'error',
							animation: {
								effect_in: 'show',
								effect_out: 'slide'
							}
							});
						});
// 						alert("ERROR");
					} */
				});
			}
		
		
		
		
		
		
		function deleteLeave(button,leaveid) {
			
			$.ajax({
				url : $getContextPath+"/leave/delete/"+leaveid,
				
				type : "POST",
				success : function(data) {
					
					
					$('#deleteModal').modal('toggle');
					$(function(){ new PNotify({
						title: 'Success',
						type: 'success',
						animation: {
							effect_in: 'show',
							effect_out: 'slide'
						}
						});
					});
					
					listAll();
				}/* ,
				error : function() {
					$(function(){ new PNotify({
					    title: 'Error!',
					    type: 'error',
						animation: {
							effect_in: 'show',
							effect_out: 'slide'
						}
						});
					});

// 					alert("ERROR");
				} */
			
				});
		}
		
		
		function listAll(){
			//var id=2;
// 			var id = getUrlParameter('Id');
			var id = $("#empId").val();
			//alert("id >>>>"+id);	
			$.ajax({
					url : $getContextPath+"/leave/listAll/"+id,
					type : "POST",
					success : function(data) {
						dt.fnClearTable();
					for (var i=0;i< data.length; i++) {
						dt.fnAddData([
						              
						             
						              //data[i].startDate,
						              data[i].startTimeString,
						              //data[i].endDate,
						             // data[i].endTime,
						             data[i].endTimeString,
						              data[i].masleavetype,
						              data[i].reason,
						              data[i].nameEng,
						              
						              
									    '<button type="button" style="margin-right :15px;" class="btn btn-warning" data-id="'+data.id+'" data-toggle="modal" data-target="#addModal" >'+$msgEdit+'</button>'+
							'<button type="button" class="btn btn-danger btn-sm active" data-id="' + data[i].id + '" data-target="#deleteModal" data-toggle="modal">'+$msgDelete+'</button>']);
				 	}
					}/* ,
					error : function() { 
						$(function(){ new PNotify({
						    title: 'Error!',
						    type: 'error',
							animation: {
								effect_in: 'show',
								effect_out: 'slide'
							}
							});
						});
// 						alert("ERROR");
					} */
				}); 
			}
		
		
		
	$("#clearModal").off().on("click", function(){
    			
		$("#masleavetype").val(""),
		$("#startTime").val(""),
		$("#endTime").val(""),
		$("#reason").val(""),
		$("#aim").val("");
	});
		 
		 
		
		 function getUrlParameter(sParam)
		 {
		 	//alert("url "+document.referrer);
		     var sPageURL = document.referrer;
		     var sURLVariables = sPageURL.split('?');
		     var sParameterName;
		     //alert("spilt "+sURLVariables);
		    	
		     
		     sParameterName = sURLVariables[1].split('=');
		     //alert("Param "+parseInt(sParameterName[1]));
		     if (sParameterName[0] == sParam) 
		         {
		         	//alert("Param "+sParameterName[0]);
		         	return sParameterName[1];
		         	
		         }
		         //alert("Param2 "+parseInt(sParameterName[1]));
		     
		 }      
		 	
		
		
});
