<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- <div class="modal-header"> -->
<%-- 	<h4 class="modal-title"><spring:message code="report.empName" /></h4> --%>
<!-- </div> -->
<f:form method="post" id="reportForm" name="reportForm" target="_blank" commandName="employee" action="${pageContext.request.contextPath}/employee/searchReportEmpName" cssClass="form-horizontal">

	 <div class="modal-body">
	 <div class="form-group form-group-sm">
		 	<div class="col-sm-3">
		 	<h4 class="modal-title"><spring:message code="report.empName" /></h4>
		 	</div>
		 </div>
        <div class="form-group form-group-sm">
        	<div class="col-sm-3">
        	<spring:message code="report.searchEmpName" />
        		${ searchfor }${ entity }
        	</div>
        	<div class="col-sm-6">
        		<f:input id="searchText" path="nameEng" cssClass="form-control" placeholder="${ searchfor }${ entity }"/>
        	</div>
        </div>
        
         <div class="form-group form-group-sm">
        	<div class="col-sm-3">
        	<spring:message code="label.doctype" />
        	</div>
        	<div class="col-sm-6" id="reportType">
        		<label class="radio-inline"><f:radiobutton path="reportType" value="pdf" name="reportType"/>Pdf</label>
				<label class="radio-inline"><f:radiobutton path="reportType" value="xls" name="reportType"/>Xls</label>
        	</div>
        </div>
        
        
       <div>  
        <f:form id ="listTable" method="post" commandName="employee" class="form-horizontal" action="employee">		
			<div class="row">
				<!-- <h2 class="col-md-6">Report</h2>	 -->			
				<br>
				<div class="col-md-6" align="right">		
	
				<br>
				<br>
			</div>
			</div>	
		<div>
				<table id="tdResult" class="dataTable stripe table-bordered" class="form-group">
				<caption title=""><spring:message code="report.empName" /></caption>
					<thead>	
						<tr>								
							<th><spring:message code="report.resourceId" /></th>
							<th><spring:message code="report.DateStartWork" /></th>
							<th><spring:message code="report.durationYear" /></th>
							<th><spring:message code="report.durationMonth" /></th>
							<th><spring:message code="report.durationDay" /></th>
							<th><spring:message code="employee.dateOfBirth" /></th>
							<th><spring:message code="report.ageYear" /></th>
							<th><spring:message code="report.ageMonth" /></th>
							<th><spring:message code="report.ageDay" /></th>
							<th><spring:message code="report.nameTh" /></th>
							<th><spring:message code="report.nameEn" /></th>
							<th><spring:message code="employee.nicknameEng" /></th>
							<th><spring:message code="employee.telMobile" /></th>
							<th><spring:message code="employee.email" /></th>
							<th><spring:message code="report.type" /></th>
							<th><spring:message code="report.position" /></th>
							<th><spring:message code="report.skill" /></th>
						</tr>
					</thead>		
				</table>
			</div>
		</f:form>
	</div>	
		

      	
      </div>
	<div class="modal-footer">
		<button type="button" id ="btn_search" class="btn btn-default search" value="search"><spring:message code="label.search" /></button>
		<button type="button" id="btn_print" class="btn btn-default submit" value="print"><spring:message code="label.print" /></button>
	</div>
</f:form>


<script type="text/javascript">
$(document).ready(function () {
	var dt=$("#tdResult").dataTable({
			"bLengthChange": false,
			"iDisplayLength": 10,
			"pagingType": "simple_numbers",
			"ordering": false,
			"info": false,
			 "scrollX": true
	});
	
	if($('.dataTables_empty').length > 0){
		document.getElementById("btn_print").disabled = true;
	}
	
	$('#reportForm').bootstrapValidator({
		message: 'This value is not valid',
		 feedbackIcons: {
	            validating: 'glyphicon glyphicon-refresh'
	        },
	        fields: {
	        	reportType: {
	                validators: {
	                    notEmpty: {
	                        message: '<spring:message code="report.validate.reportType" />'
	                    }
	        
	                }
	            }
	        }
		
	});
	
	//Search By Position and Show function 
	$('#btn_search').on('click', function(){
		var searchText = $("#searchText").val();
		if(searchText == ""){
			searchText = "forEmptySearch";
		}
		$.ajax({
			url : "${pageContext.request.contextPath}/employee/searchName/"+searchText,
			type : "POST",
			success : function(data) {
			dt.fnClearTable();
			for (var i=0;i< data.length; i++) {
				dt.fnAddData([data[i].employeeCode,data[i].startWorkDate,
				              data[i].yearStart,data[i].monthStart,data[i].dayStart,
				              data[i].dateOfBirth,
				              data[i].year,data[i].month,data[i].day,
				              data[i].nameThai,data[i].nameEng,data[i].nicknameEng,
				              data[i].telMobile,data[i].email,
				              data[i].employmentName,data[i].divisionName,
				              data[i].technologyName
					]);
		 
				}
			
			if($('.dataTables_empty').length == 0){
				document.getElementById("btn_print").disabled = false;
			}
			
			},
			error : function(data,testStatus,jqXHR) {
				$("#outputajax").text(testStatus);
				}
			});
	});
	$('#btn_print').off("click").on('click', function(){
		$('#reportForm').bootstrapValidator();
		$('#reportForm').data('bootstrapValidator').validate();
		if($('#reportForm').data('bootstrapValidator').isValid()){
			//alert("print");
			$("#reportForm").get(0).submit();
		}
/* 		var searchText = $("#searchText").val();
		if(searchText == ""){
			searchText = "forEmptySearch";
		}
  		$.ajax({
		url : "${pageContext.request.contextPath}/employee/searchReportEmpName/"+searchText,
		type : "POST",
		success : function(data) {
			
		},
		error : function(data,testStatus,jqXHR) {
			$("#outputajax").text(testStatus);
			}
		}); */
	}); 
	
});
	
</script>