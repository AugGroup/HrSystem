<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<f:form method="post" commandName="listemployee"  role="form">
		<!-- <ol class="breadcrumb">
			<li role="presentation" class="active"><a href="#">Home</a></li>
 			<li role="presentation"><a href="employee.jsp" data-toggle="modal">Add Employee</a></li>
		</ol> -->
				
		<h2>Employee</h2>
		<div id="message"></div>
		<div id="outputajax" class="form-group">		
		<table id="tdResult">
			<thead>
				<tr>
					<th><spring:message code="label.id" /></th>
					<th><spring:message code="employee.code" /></th>
		 			<th><spring:message code="employee.firstname" /></th>
					<th><spring:message code="employee.surname" /></th>
					<th><spring:message code="label.action" /></th>
					<!-- <th></th> -->
				</tr>
			</thead>
			<tbody></tbody>
		</table>
		</div>
</f:form>			
	<!-- Button trigger modal -->
	<sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_HR')">
	<div align="right">
	<f:form action="${pageContext.request.contextPath}/employee" method="POST" role="form">
		<button type="submit" class="btn btn-primary btn-md">
 	 	Add
		</button>
	</f:form>
	</div> 
	</sec:authorize>

<!-- Modal Delete -->
<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
    <div class="modal-header">
        <h4 class="modal-title" id="deleteModalLabel">Delete Employee</h4>
    </div>
      <div class="modal-body">
      	<spring:message code="default.delete.confirm" />
      </div>
      <div class="modal-footer">
      	<button type="button" class="btn btn-danger yesButton" ><spring:message code="default.yes" /></button>
      	<button type="button" class="btn btn-info" data-dismiss="modal"><spring:message code="default.no" /></button>
      </div>
    </div>
  </div>
</div>

<script>
var dt;
var empId;
	$(document).ready(function() {
		
		
		$.ajaxSetup({
		    timeout: 3000,
		    error : function(XMLHttpRequest,e,testStatus,jqXHR,xhr,errorThrown,thrownError) {  
		          
		    	  if(testStatus==="timeout") {
		    		  swal({
				   	    	title: "Time Out", 		  	    	    	
				   	    	text: "Connection Time Out..."
				   	    	});
				   	  
		          } 
		    	

		   	   if(XMLHttpRequest.responseText.indexOf("Error:")== 1){
		   		   
		   		 var errormsg = JSON.parse(XMLHttpRequest.responseText.split('Error:'));
		   		 var msg= ' ';
		   		 
		   		 for(var i=1;i<errormsg.length;i++){
		   			 
		   			 msg =msg+errormsg[i];
		   		 }
		   		 
		   		 
		   		 $('*').modal('hide');

		   		 
		   	    swal({
		   	    	title: "Error",		  	    	    	
		   	    	text: msg
		   	    	});
		   	  
		   	    
		   	   }else {
		     		
		   		  alert(testStatus);
			          myRedirect('${pageContext.request.contextPath}/httperror',testStatus);
		   	   
		   	   }

		    }    
		});
		

		
		var myRedirect = function(redirectUrl,err,testStatus) {
		  	var form = $('<form id="form" action="' + redirectUrl + '" method="post">' +
		  	'<input type="hidden" name="error" value="'+err+'" />' +
		  	'</form>');
		  	$('body').append(form);
		  	$('#form').submit();
		  };


		
    	dt=$("#tdResult").dataTable();
    	var button = $(event.relatedTarget);
		empId = button.data("empid"); 
 		listAll();
			
    		function listAll(){
    			$.ajax({
    				url : "${pageContext.request.contextPath}/employee/listAll",
    				type : "POST",
    				contentType: "application/json",
    				dataType: "json",
    				success : function(data) {
    					dt.fnClearTable();
    
    				for (var i=0;i< data.length; i++) {
    					dt.fnAddData([data[i].id,data[i].employeeCode,data[i].nameEng, 
    					              data[i].surnameEng,
    						 '<button type="button" class="btn btn-info btn-sm active " data-empId="' + data[i].id + '" onclick="initEditEmployee('+data[i].id+')"><spring:message code="label.edit" /></button>'+
    						'<button type="button" class="btn btn-danger btn-sm active" data-empId="' + data[i].id + '" data-target="#deleteModal" data-toggle="modal"><spring:message code="label.delete" /></button>']);
    			 
    					}
    				}/* ,
    				error : function(data,testStatus,jqXHR) {
    					$("#outputajax").text(testStatus);
    					} */
    				}); 
    		}
	
/* --------------------------------------------------- Delete Function --------------------------------------------------- */		
			
			$("#deleteModal").on("show.bs.modal", function(event){
				var button = $(event.relatedTarget);
				var empId = button.data("empid");
				//alert("delete "+empId);
				$(this).find(".yesButton").off("click").on("click", function()
						{
							deleteEmployee(button,empId);
							//alert("go fn");
						});
				
				function deleteEmployee(button,empId){
					//alert("in fn");
					$.ajax({
						url : "${pageContext.request.contextPath}/employee/deleteemp/"+empId,
						type : "POST",
						success : function(data) {
							$('#deleteModal').modal('toggle');
							$("#message").html('<div class="alert alert-success" role="alert">Success</div>');		
							listAll();
						}/* ,
						error : function(data,testStatus,jqXHR) {
							$('#deleteModal').modal('toggle');
							$("#message").html('<div class="alert alert-danger" role="alert">Error</div>');
							} */
						});
					}
    		   	
			
  				});

     	
	});
	
	/* --------------------------------------------------- EditFunction --------------------------------------------------- */		
		function initEditEmployee(empId) {
		if(empId == null){
			empId = 0;
		}

		var id = empId;
		window.location = "${pageContext.request.contextPath}/employee/init/"+id;
		//window.location = "${pageContext.request.contextPath}/employee/"+empId;

	/* 	$.ajax({
			url : "${pageContext.request.contextPath}/employee/initEdit/"+empId,
			type : "GET",
			success : function(data) {
				
				window.location = "${pageContext.request.contextPath}/?Id="+empId;
				alert("emp id:"+ empId);
				//editEmployee(); 

			},
			error : function(data,testStatus,jqXHR) {
				$("#message").html('<div class="alert alert-danger" role="alert">Error</div>');
				}
			}); */
	}

  
  </script>