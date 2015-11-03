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
				columnDefs : [
				               { "width": "14%", "targets": 2 },
				               { "width": "13%", "targets": 3 },
				               { "width": "13%", "targets": 4 },
				               { "width": "13%", "targets": 5 },
				               { "width": "13%", "targets": 6 },
				             ],
				searching : false,
				paging: true,
				sort : false,
				ajax :{
					type:'POST',
					url: 'reservation/report/findReservationReport',
					data: function (d) {
						d.dateReservation = $('#dateReservation').val();
						d.reservationBy = $('#reservationBy').val();
						d.room = {id: $('#room').val()};
//						d.employee = {id:$('#employee').val()};
						d.masreservationtype = {id: $('#reservationType').val()};
						d.masDivision = {id: $('#masDivisionInsert').val() }
						console.log(d);
						//console.log(d[0].divisionName);
					},
					complete: function(data){
						if($('.dataTables_empty').length > 0){
							document.getElementById("btn_preview").disabled = true;
						}else document.getElementById("btn_preview").disabled = false;
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