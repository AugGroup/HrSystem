$(document).ready(function () {
	var dtReport;
	//GPA pattern
	/*$("#gpa").inputmask('Regex', { regex: "[0-3]\\.[0-9][0-9]?$ |4\\.00$" });*/
	
	//Search By Criteria and Show function 
	$('#btn_search').off('click').on('click', function(){
		if(dtReport){
			dtReport.ajax.reload();
		}else{
			dtReport = $('#reportTable').DataTable({
				ajax :{
					type:'POST',
					url: $getContextPath+'/reservation/report/findReservationReport',
					data: function (d) {						
						d.roomId = $("#room").val();
						d.reservationTypeId = $("#reservationType").val();
						d.divisionId = $("#masDivisionInsert").val();;
						d.reservationBy = $("#reservationBy").val();
					}
					
				},
				columns : [
			           {data: "reservationBy"},
				       {data: "divisionName"},
				       {data: "roomName"},
				       {data: "reservationTypeName"},
				       {data: "dateReservation"},
				      
				       ]
//				language:{
//
//						    url: datatablei18n
//
//						  }	
			});
			
		}
		
	});
	
	
	
	$('#btn_search').trigger("click");
	
 	 $(".submit").click(function() {
		$("form[name='reportForm']").submit();
	});
 
});