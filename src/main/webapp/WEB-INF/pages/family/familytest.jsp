<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- jquery and jquery validator -->
<!-- jquery validator version 1.13.1 -->
<script src="<c:url value="/resources/resource/bootstrap/js/jquery-1.11.2.js" />"></script> 
<script src="<c:url value="/resources/resource/bootstrap/js/jquery.validate.js" />"></script>
<script src="<c:url value="/resources/resource/bootstrap/js/additional-methods.js" />"></script>


<!-- dialog -->
<script src="<c:url value="/resources/resource/bootstrap/js/bootbox.js" />"></script>


<!-- bootstrap version 3.3.4-->
<link href="<c:url value="/resources/resource/bootstrap/css/bootstrap.css" />" rel="stylesheet" media="all">
<link href="<c:url value="/resources/resource/bootstrap/css/bootstrap-theme.css" />" rel="stylesheet" media="all">
<script src="<c:url value="/resources/resource/bootstrap/js/bootstrap.js" />"></script>

<!-- for show error massage and success massage-->
<link href="<c:url value="/resources/resource/bootstrap/css/main.css" />" rel="stylesheet" media="all">

<!-- datatable version 1.10.6 -->
<script src="<c:url value="/resources/resource/datatable/js/jquery.dataTables.js" />"></script>
<link href="<c:url value="/resources/resource/bootstrap/css/dataTables.bootstrap.css" />" rel="stylesheet" media="all">
<link href="<c:url value="/resources/resource/datatable/css/jquery.dataTables.css" />" rel="stylesheet" media="all">
<script src="<c:url value="/resources/resource/bootstrap/js/dataTables.bootstrap.js" />"></script>


<style type="text/css">

#tableResult {
        width: 90%;
        margin-top: 35%;
    }
 
#nav {
       margin-top: 3%;
    }
 
</style>



<script>

      var dt;
      
      
      var name;
	  var age;
	  var gender;
	  var occupation;
	  var mobile;
	  var relation;
	  var id;
	  var status;
	  var address;
	  var position;
      
      var nameUpdate;
	  var ageUpdate;
	  var genderUpdate;
	  var occupationUpdate;
	  var mobileUpdate;
	  var relationUpdate;
	  
	  var rowUpdate;
	  var dataUpdate;
	  

	  var datarow;
	  var arrName; 
	  
	  var transection = [];
	  var idIndex=0;
   
	  $(document).ready(function(){
		
		 
		  $("#formAdd").validate({
				
				rules:{
					 firstName:{
			        	 required: true
			         },
			         lastName:{
			        	 required: true
			         },
			         age:{
			        	 required: true
			         },
			         mobile:{
			        	 required: true
			         },
			         address:{
			        	 required: true
			         },
			         masRelation:{
			        	 required: true
			         }
			        
				 },
				messages: {
					 firstName:{
			            required: "<spring:message code="family.required.firstname"/>"
			         },
					 lastName:{
			         	required: "<spring:message code="family.required.lastname"/>"
			         } ,
			         age:{
			        	required: "<spring:message code="family.required.age"/>" 
			         },
			         mobile:{
				        required: "<spring:message code="family.required.mobile"/>" 
				     },
				     address:{
					    required: "<spring:message code="family.required.address"/>" 
					 },
					 masRelation:{
						required: "<spring:message code="family.required.relation"/>" 
					 }  
		           
				},
			}); 
		  
		  
		  
		     dt = $('#tableResult').dataTable(/* {
		    	  "columnDefs": [
			    	          		{
			    	                     "targets": [ 0 ],
			    	                     "visible": false
			    	                 }
			    	             ]		 
		     } */);
		 
		     

		     
		         /* dt = $('#tableResult').DataTable({
			    	  "columnDefs": [
			    	                 {
			    	                     "targets": [ 0 ],
			    	                     "visible": false
			    	                 }
			    	             ],
			     	  
			      
			     	  "createdRow": function ( row, data, index ) {
			     		  if(data[11]=="unmodified"){
			                  $('td', row).eq(11).addClass('highlight');
			     	    }
			          }					     	  
			      }); */  	 
	      
	      
		     
	      doFindData();
	      
	      
	      
	      
	      
	      function doFindData() {  
		   	   
		  	  
		  	     $.ajax({  
		  	      type : "GET",   
		  	      url : "<%=request.getContextPath()%>/family/list",   
		  	      dataType : 'json', 
		  	      contentType :"application/json; charset=utf-8",
		  	     
		  	      success : function(data) {  
		    		
		  	      status="unmodified" 
		  	    	
		  	    	alert(JSON.stringify(data));
		  	    	
		  	        for(var i=0;i<data.length;i++){
		  	        	alert(data[i].id);
		  	        	
		  	        	
			  	    	    /* dt.row.add( [
			  	    	           data[i].id,
			  			           data[i].name,
			  			           data[i].age,
			  			           data[i].gender,
			  			           data[i].occupation,
			  			           data[i].mobile,
			  			           data[i].address,
			  			           data[i].position,
			  			           data[i].relation,
			  			           '<button id="test" type="button" class="btn btn-default btn-sm"  data-id="'+data[i].id+'"><span class="glyphicon glyphicon-pencil">edit</span> </button>'+'<button id="delete" type="button" class="btn btn-default btn-sm"  data-id="'+data[i].id+'"><span class="glyphicon glyphicon-trash">delete</span></button>',
		       		               status
			  			     ] ).draw(); */
			  			        
			  			        
			  			 	
			  			        
		  	        	   dt.fnAddData([  data[i].id,
					  			           data[i].firstName+' '+ data[i].lastName,
					  			           data[i].age,
					  			           data[i].gender,
					  			           data[i].occupation,
					  			           data[i].mobile,
					  			           data[i].address,
					  			           data[i].position,
					  			           data[i].relationId,
					  			           data[i].relation,
					  			           '<button id="test" type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#addModal" data-dismiss="modal" data-backdrop="static"><span class="glyphicon glyphicon-pencil">edit</span> </button>'+'<button id="delete" type="button" class="btn btn-default btn-sm"  data-id="'+data[i].id+'"><span class="glyphicon glyphicon-trash">delete</span></button>',
				       		               status,
				       		               idIndex,
				       		               '<input id="idData'+idIndex+'" type="text" name="family['+idIndex+'].id" value="'+data[i].id+'"/>'+
				       		               '<input id="firstNameData'+idIndex+'" type="text" name="family['+idIndex+'].firstName" value="'+data[i].firstName+'"/>'+
				       		               '<input id="lastNameData'+idIndex+'"  type="text" name="family['+idIndex+'].lastName" value="'+data[i].lastName+'"/>'+
				       		               '<input id="ageData'+idIndex+'" type="text" name="family['+idIndex+'].age" value="'+data[i].age+'"/>'+
				       		               '<input id="genderData'+idIndex+'"  type="text" name="family['+idIndex+'].gender" value="'+data[i].gender+'"/>'+
				       		               '<input id="occupationData'+idIndex+'" type="text" name="family['+idIndex+'].occupation" value="'+data[i].occupation+'"/>'+
				       		               '<input id="mobileData'+idIndex+'"   type="text" name="family['+idIndex+'].mobile" value="'+data[i].mobile+'"/>'+
				       		               '<input id="addressData'+idIndex+'"  type="text" name="family['+idIndex+'].address" value="'+data[i].address+'"/>'+
				       		               '<input id="positionData'+idIndex+'" type="text" name="family['+idIndex+'].position" value="'+data[i].position+'"/>'+
				       		               '<input id="relationIdData'+idIndex+'" type="text" name="family['+idIndex+'].relationId" value="'+data[i].relationId+'"/>'+
				       		               '<input id="relationData'+idIndex+'" type="text" name="family['+idIndex+'].relationName" value="'+data[i].relation+'"/>'+
				       		               '<input id="statusData'+idIndex+'" type="text" name="family['+idIndex+'].status" value="'+status+'"/>'
				       		               ]);
			  		
			  			    
		  	        	 idIndex = idIndex+1;
			  			 			  		
		  			            
		  	    	 }
		  	        		  	        
		  	     },  
		  	      error : function(e) {  	  	      
		  	    	  alert('Error: ' + e);   
		  	     }  
		  	    }); 
		  	   
		    }
		      
	      
	      
	      
	
	function clearDataModal(){
		
		$('#firstName').val('');
		$('#lastName').val('');
		$('#age').val('');
		$("#genderMale").prop("checked", true);
		$('#occupation').val('');
		$('#position').val('');
		$('#address').val('');
		$('#position').val('');
		$('#mobile').val('');
		$('#masRelation').val(-1);
	}      
	      
	      
	      
	
	
	
	 $('#create').off('click').on( 'click', function () {

		 clearDataModal();
		 
			 $('#saveBtn').off("click").on("click",function(){
			 
			    
			    var firstName = $('#firstName').val();
			    var lastName = $('#lastName').val();
			    //var id = null;
			    var id=0;
			    var relationId=$("#masRelation").val();
			    
			    name = $('#firstName').val()+' '+$('#lastName').val();
			    age = $('#age').val();
			    
			    
			    if($('#genderMale:checked').val()!=null){
		  			
		  			gender = $('#genderMale:checked').val();
		  			
		  			
		  		}else if($('#genderFemale:checked').val()!=null){
		  			
		  			gender = $('#genderFemale:checked').val();
		  		}
			    
			    
			    
			    if($('#occupation').val()==''){
			    	occupation = null;
			    }else{
			   		occupation = $('#occupation').val();
			    }
			    
			   
			    
			    
			    mobile = $('#mobile').val();
			    
			    if($('#masRelation').val()==-1){
			    	
			    	  relation = null;
			    	
			    }else{
			    	
			    	 relation = $("#masRelation option:selected").text();
			    }
			    
			   
			   
			    
			    address = $('#address').val();
			    
			    
			    if($('#position').val()==''){
			    	position = null;
			    }else{
			       position = $('#position').val();
			    }
			    
			   
			    
			    
			
			    status = "add"; 
			    
			   		  dt.fnAddData([id,                                  
			   			           name,
			   			           age,
			   			           gender,
			   			           occupation,
			   			           mobile,
			   			           address,
			   			           position,
			   			           relationId,
			   			           relation,
			   			           '<button id="test" type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#addModal" data-dismiss="modal" data-backdrop="static"><span class="glyphicon glyphicon-pencil">edit</span> </button><button id="delete" type="button" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-trash">delete</span></button>',
			   			           status,
			   			           idIndex,
			   			           '<input id="idData'+idIndex+'" type="text" name="family['+idIndex+'].id" value="'+id+'">'+
			   			           '<input id="firstNameData'+idIndex+'"  type="text" name="family['+idIndex+'].firstName" value="'+firstName+'">'+
			   			           '<input id="lastNameData'+idIndex+'" type="text" name="family['+idIndex+'].lastName" value="'+lastName+'">'+
			   			           '<input id="ageData'+idIndex+'"  type="text" name="family['+idIndex+'].age" value="'+age+'">'+
			   			           '<input id="genderData'+idIndex+'"  type="text" name="family['+idIndex+'].gender" value="'+gender+'">'+
			   			           '<input id="occupationData'+idIndex+'" type="text" name="family['+idIndex+'].occupation" value="'+occupation+'">'+
			   			           '<input id="mobileData'+idIndex+'" type="text" name="family['+idIndex+'].mobile" value="'+mobile+'">'+
			   			           '<input id="addressData'+idIndex+'" type="text" name="family['+idIndex+'].address" value="'+address+'">'+
			   			           '<input id="positionData'+idIndex+'" type="text" name="family['+idIndex+'].position" value="'+position+'">'+
			   			           '<input id="relationIdData'+idIndex+'" type="text" name="family['+idIndex+'].relationId" value="'+relationId+'">'+
			   			           '<input id="relationData'+idIndex+'"  type="text" name="family['+idIndex+'].relationName" value="'+relation+'">'+
			   			           '<input id="statusData'+idIndex+'" type="text" name="family['+idIndex+'].status" value="'+status+'">'
			   			          ]);
	   	
				    
				     idIndex = idIndex+1;
			    
				 $('#addModal').modal('hide');
				
				 
				     $('#addModal').on('hidden.bs.modal', function () {
					 
					 clearDataModal();
					 	
			     });
			     
			    
			 }); 
		 	 
			 
		 });
	 
	 
		
		   
  	     var cell1 ;
  	 	


	
	
		   
		 $('#tableResult tbody').on( 'click', '#test', function (){		   
		    	
		   		  /* rowUpdate = $(this).parents('tr');
		    	  dataUpdate = dt.row( $(this).parents('tr') ).data(); //get data in row 
		    	  alert("data[0]: "+dataUpdate[0]); */
		    	  
		    	  
		    	  rowUpdate = $(this).parents('tr');
		    	  dataUpdate = dt.fnGetData($(this).parents('tr'));
		    	 
		    	  
		    	  alert("data[0]: "+dataUpdate[0]); 
		    	
		    	  updateRowInDataTable(rowUpdate,dataUpdate); 
		    	    	  
		  });   
		 
		 
		    	  
	
		 
		   
		function updateRowInDataTable(rowUpdate,dataUpdate){
			
		   
		    alert(dataUpdate);
		   
		    var arr = dataUpdate[1].split(" ");
		    
		    alert(arr[0]);
		   
		    $('#firstName').val(arr[0]);
			$('#lastName').val(arr[1]);
		    $('#age').val(dataUpdate[2]);
			$('#occupation').val(dataUpdate[4]);
		    $('#mobile').val(dataUpdate[5]);	
		    $('#position').val(dataUpdate[7]);
		    $('#address').val(dataUpdate[6]);
		    
		  
		    
		    if(dataUpdate[3]=="Male"){
		    	$("#genderMale").prop("checked", true);
		    }else if(dataUpdate[3]=="Female"){
		    	$("#genderFemale").prop("checked", true);
		    }
		    
		    
		     alert("data8: "+dataUpdate[8]);
		    
		    
		   	 $('#masRelation').val(dataUpdate[8]);		    
		   
	
		    
		   	/* $('#saveBtn').off("click").on("click",function(){
		   		
		   		var id = dataUpdate[0];	   		
		   		var firstNameUpdateData = $('#firstNameUpdate').val();
		   		var lastNameUpdateData = $('#lastNameUpdate').val();
		   		var relationUpdateId = $('#masRelationUpdate').val();
		   		
		   		
			    nameUpdate = $('#firstNameUpdate').val()+' '+$('#lastNameUpdate').val();
			    ageUpdate = $('#ageUpdate').val();
			    
			    
			    if($('#genderMaleUpdate:checked').val()!=null){
		  			
		  			genderUpdate = $('#genderMaleUpdate:checked').val();
		  			
		  		}else if($('#genderFemaleUpdate:checked').val()!=null){
		  			
		  			genderUpdate = $('#genderFemaleUpdate:checked').val();
		  		}
			    
			    occupationUpdate = $('#occupationUpdate').val();
			    mobileUpdate = $('#mobileUpdate').val();
			    
			    if($('#masRelationUpdate').val()==1){
			    	relationUpdate = 'SON';
			    }else if($('#masRelationUpdate').val()==2){
			    	relationUpdate = 'DAUGTHER';
			    }
			    
			    addressUpdate = $('#addressUpdate').val();
			    positionUpdate = $('#positionUpdate').val();
	    	 	
	    	 	  
	    	 	  
	    	 	  
	    	 	  
	    	  if(dataUpdate[0]!=null){ */
	    		  
	    		  
	    	   	  /* cell1 = dt.cell(rowUpdate,1);
			      cell1.data(nameUpdate);
			      cell1 = dt.cell(rowUpdate,2);
			      cell1.data(ageUpdate);
			      cell1 = dt.cell(rowUpdate,3);
			      cell1.data(genderUpdate);
			      cell1 = dt.cell(rowUpdate,4);
			      cell1.data(occupationUpdate);
			      cell1 = dt.cell(rowUpdate,5);
			      cell1.data(mobileUpdate);
			      cell1 = dt.cell(rowUpdate,6);
			      cell1.data(addressUpdate);
			      cell1 = dt.cell(rowUpdate,7);
			      cell1.data(positionUpdate);
			      cell1 = dt.cell(rowUpdate,8);
			      cell1.data(relationUpdate);
			      cell1 = dt.cell(rowUpdate,10); 
			      cell1.data('edit'); */
			      
			   /*    dt.fnUpdate(nameUpdate, rowUpdate, 1);
			      dt.fnUpdate(ageUpdate, rowUpdate, 2);
			      dt.fnUpdate(genderUpdate, rowUpdate, 3);
			      dt.fnUpdate(occupationUpdate, rowUpdate, 4);
			      dt.fnUpdate(mobileUpdate, rowUpdate, 5);
			      dt.fnUpdate(addressUpdate, rowUpdate, 6);
			      dt.fnUpdate(positionUpdate, rowUpdate, 7);
			      dt.fnUpdate(relationUpdate, rowUpdate, 8);
			      dt.fnUpdate('edit', rowUpdate, 10);
			      
			      
	    	  }else{
	    		   */
	    		 /*  cell1 = dt.cell(rowUpdate,1);
			      cell1.data(nameUpdate);
			      cell1 = dt.cell(rowUpdate,2);
			      cell1.data(ageUpdate);
			      cell1 = dt.cell(rowUpdate,3);
			      cell1.data(genderUpdate);
			      cell1 = dt.cell(rowUpdate,4);
			      cell1.data(occupationUpdate);
			      cell1 = dt.cell(rowUpdate,5);
			      cell1.data(mobileUpdate);
			      cell1 = dt.cell(rowUpdate,6);
			      cell1.data(addressUpdate);
			      cell1 = dt.cell(rowUpdate,7);
			      cell1.data(positionUpdate);
			      cell1 = dt.cell(rowUpdate,8);
			      cell1.data(relationUpdate); */
			      
	    		 /*  dt.fnUpdate(nameUpdate, rowUpdate, 1);
			      dt.fnUpdate(ageUpdate, rowUpdate, 2);
			      dt.fnUpdate(genderUpdate, rowUpdate, 3);
			      dt.fnUpdate(occupationUpdate, rowUpdate, 4);
			      dt.fnUpdate(mobileUpdate, rowUpdate, 5);
			      dt.fnUpdate(addressUpdate, rowUpdate, 6);
			      dt.fnUpdate(positionUpdate, rowUpdate, 7);
			      dt.fnUpdate(relationUpdate, rowUpdate, 8);
			
	    		  
	    	  }
			      
			      

			        $('#updateModal').modal('hide');
	    	      
	       }); */
		   
	       
	       
	       $('#saveBtn').off("click").on("click",function(){
	    	   
	    	    var id = dataUpdate[0];	   		
		   		var firstNameUpdateData = $('#firstName').val();
		   		var lastNameUpdateData = $('#lastName').val();
		   		var relationUpdateId = $('#masRelation').val();
		   		
		   		
			    nameUpdate = $('#firstName').val()+' '+$('#lastName').val();
			    ageUpdate = $('#age').val();
			    
			    
			    if($('#genderMale:checked').val()!=null){
		  			
		  			genderUpdate = $('#genderMale:checked').val();
		  			
		  		}else if($('#genderFemale:checked').val()!=null){
		  			
		  			genderUpdate = $('#genderFemale:checked').val();
		  		}
			    
			    occupationUpdate = $('#occupation').val();
			    mobileUpdate = $('#mobile').val();
			    
			   
			    relationUpdate = $("#masRelation option:selected").text();
			   
			    
			    addressUpdate = $('#address').val();
			    positionUpdate = $('#position').val();
			    
			    
			    
			    if(dataUpdate[0]!=0){
		    		  
		    		 
			    	 
			    	 alert(dataUpdate[12]);
					    
			    		   	 
			    	  dt.fnUpdate(nameUpdate, rowUpdate, 1);
				      dt.fnUpdate(ageUpdate, rowUpdate, 2);
				      dt.fnUpdate(genderUpdate, rowUpdate, 3);
				      dt.fnUpdate(occupationUpdate, rowUpdate, 4);
				      dt.fnUpdate(mobileUpdate, rowUpdate, 5);
				      dt.fnUpdate(addressUpdate, rowUpdate, 6);
				      dt.fnUpdate(positionUpdate, rowUpdate, 7);
				      dt.fnUpdate(relationUpdateId, rowUpdate, 8);
				      dt.fnUpdate(relationUpdate, rowUpdate, 9);
				      dt.fnUpdate('edit', rowUpdate, 11); 
				      
				      $("#firstNameData"+dataUpdate[12]).attr('name', "family["+dataUpdate[12]+"].firstName");
			    	  $("#firstNameData"+dataUpdate[12]).val(firstNameUpdateData);
			    	  
			    	  $("#lastNameData"+dataUpdate[12]).attr('name', "family["+dataUpdate[12]+"].lastName");
			    	  $("#lastNameData"+dataUpdate[12]).val(lastNameUpdateData);
			    	  
			    	  $("#ageData"+dataUpdate[12]).attr('name', "family["+dataUpdate[12]+"].age");
			    	  $("#ageData"+dataUpdate[12]).val(ageUpdate);
			    	  
			    	  $("#genderData"+dataUpdate[12]).attr('name', "family["+dataUpdate[12]+"].gender");
			    	  $("#genderData"+dataUpdate[12]).val(genderUpdate);
			    	  
			    	  
			    	  $("#occupationData"+dataUpdate[12]).attr('name', "family["+dataUpdate[12]+"].occupation");
			    	  $("#occupationData"+dataUpdate[12]).val(occupationUpdate);
			    	  
			    	  $("#positionData"+dataUpdate[12]).attr('name', "family["+dataUpdate[12]+"].position");
			    	  $("#positionData"+dataUpdate[12]).val(positionUpdate);
			    	  
			    	  $("#mobileData"+dataUpdate[12]).attr('name', "family["+dataUpdate[12]+"].mobile");
			    	  $("#mobileData"+dataUpdate[12]).val(mobileUpdate);
			    	  
			    	  
			    	  $("#addressData"+dataUpdate[12]).attr('name', "family["+dataUpdate[12]+"].address");
			    	  $("#addressData"+dataUpdate[12]).val(addressUpdate);
			    	  
			    	  $("#relationIdData"+dataUpdate[12]).attr('name', "family["+dataUpdate[12]+"].relationId");
			    	  $("#relationIdData"+dataUpdate[12]).val(relationUpdateId);
			    	  
			    	  $("#relationData"+dataUpdate[12]).attr('name', "family["+dataUpdate[12]+"].relationName");
			    	  $("#relationData"+dataUpdate[12]).val(relationUpdate);
			    	  
			    	  
			    	  $("#statusData"+dataUpdate[12]).attr('name', "family["+dataUpdate[12]+"].status");
			    	  $("#statusData"+dataUpdate[12]).val('edit');
			    	  
				      
				      
		    	  }else{
		    		   
		    		
				      
		    		  /* dt.fnUpdate(nameUpdate, rowUpdate, 1);
				      dt.fnUpdate(ageUpdate, rowUpdate, 2);
				      dt.fnUpdate(genderUpdate, rowUpdate, 3);
				      dt.fnUpdate(occupationUpdate, rowUpdate, 4);
				      dt.fnUpdate(mobileUpdate, rowUpdate, 5);
				      dt.fnUpdate(addressUpdate, rowUpdate, 6);
				      dt.fnUpdate(positionUpdate, rowUpdate, 7);
				      dt.fnUpdate(relationUpdate, rowUpdate, 8); */
				      
				      
				      
		    		  dt.fnUpdate(nameUpdate, rowUpdate, 1);
				      dt.fnUpdate(ageUpdate, rowUpdate, 2);
				      dt.fnUpdate(genderUpdate, rowUpdate, 3);
				      dt.fnUpdate(occupationUpdate, rowUpdate, 4);
				      dt.fnUpdate(mobileUpdate, rowUpdate, 5);
				      dt.fnUpdate(addressUpdate, rowUpdate, 6);
				      dt.fnUpdate(positionUpdate, rowUpdate, 7);
				      dt.fnUpdate(relationUpdateId, rowUpdate, 8);
				      dt.fnUpdate(relationUpdate, rowUpdate, 9);

				      
				      $("#firstNameData"+dataUpdate[12]).attr('name', "family["+dataUpdate[12]+"].firstName");
			    	  $("#firstNameData"+dataUpdate[12]).val(firstNameUpdateData);
			    	  
			    	  $("#lastNameData"+dataUpdate[12]).attr('name', "family["+dataUpdate[12]+"].lastName");
			    	  $("#lastNameData"+dataUpdate[12]).val(lastNameUpdateData);
			    	  
			    	  $("#ageData"+dataUpdate[12]).attr('name', "family["+dataUpdate[12]+"].age");
			    	  $("#ageData"+dataUpdate[12]).val(ageUpdate);
			    	  
			    	  $("#genderData"+dataUpdate[12]).attr('name', "family["+dataUpdate[12]+"].gender");
			    	  $("#genderData"+dataUpdate[12]).val(genderUpdate);
			    	  
			    	  
			    	  $("#occupationData"+dataUpdate[12]).attr('name', "family["+dataUpdate[12]+"].occupation");
			    	  $("#occupationData"+dataUpdate[12]).val(occupationUpdate);
			    	  
			    	  $("#positionData"+dataUpdate[12]).attr('name', "family["+dataUpdate[12]+"].position");
			    	  $("#positionData"+dataUpdate[12]).val(positionUpdate);
			    	  
			    	  $("#mobileData"+dataUpdate[12]).attr('name', "family["+dataUpdate[12]+"].mobile");
			    	  $("#mobileData"+dataUpdate[12]).val(mobileUpdate);
			    	  
			    	  
			    	  $("#addressData"+dataUpdate[12]).attr('name', "family["+dataUpdate[12]+"].address");
			    	  $("#addressData"+dataUpdate[12]).val(addressUpdate);
			    	  
			    	  $("#relationIdData"+dataUpdate[12]).attr('name', "family["+dataUpdate[12]+"].relationId");
			    	  $("#relationIdData"+dataUpdate[12]).val(relationUpdateId);
			    	  
			    	  $("#relationData"+dataUpdate[12]).attr('name', "family["+dataUpdate[12]+"].relation");
			    	  $("#relationData"+dataUpdate[12]).val(relationUpdate);
			    	  
			    		  
		    	  }
				      
				      

				     $('#addModal').modal('hide');
				 
	    	 	
	    	 	  
			    
	    	   
	       });
		   
		}
		
		
		
		
		
		 $('#tableResult tbody').on( 'click', '#delete', function (){	
			 
			 /*  var row = $(this).parents('tr');
	    	  var data = dt.row(row).data(); //get data in row 
	    	  alert("data[0]: "+data[0]); */	
	    	
	    	  var row = $(this).parents('tr');
	    	  var data = dt.fnGetData($(this).parents('tr'));
	    	  
	    	  
	    	  		deleteRowInDataTable(row,data);
	    	 		  
			 
		 });
		
		 
		 
		 
		 function deleteRowInDataTable(row,data){
		 	 
			 $('#deleteModal').modal('show');
			 
			 	 
		 	 $('#deleteBtn').off("click").on("click",function(){
		 		 
		 	    
		 		 var idDelete = data[0];
		 		 
		 		 /* var arrNameDelete = data[1].split(" ");
		 		 var ageDelete = data[2];
		 		 var genderDelete = data[3];
		 		 var occupationDelete = data[4];
		 		 var mobileDelete = data[5];
		 		 var addressUpdate = data[6];
		 		 var positionUpdate = data[7];
		 		 var relationUpdate = data[8];*/
		 		 
		 		
		 		 
		 		
				 if(idDelete!=0){
					 
					 /* cell1 = dt.cell(row,10); 
				     cell1.data('delete'); */
				     		     

					 dt.fnUpdate('delete', row,11);
					  
			    	  $("#statusData"+data[12]).attr('name', "family["+data[12]+"].status");
			    	  $("#statusData"+data[12]).val('delete');
			    	  					 
				 }else{
				 
					 //dt.row(row).remove().draw();
					 
					 dt.fnDeleteRow(row);
		 		 
				 }
				 
				 $('#deleteModal').modal('hide');
		 		 
		 	 });
		 }
		 
		 
		 
		 
		// $('#savetransection').on("click",function(){
		   
	 	
			 
			 //data = dt.rows().data();
			 //alert(JSON.stringify(data.length));
			
			 
			/*   data = dt.fnGetData();
			  alert(JSON.stringify(data.length));
			
			 
			 for(var i=0;i<data.length;i++){
				  */
				 /* datarow = dt.row(i).data();
				 arrName = datarow[1].split(" ");
				 transection.push({id:datarow[0],firstName:arrName[0],lastName:arrName[1],age:datarow[2],gender:datarow[3],mobile:datarow[5],address:datarow[6],occupation:datarow[4],position:datarow[7],relation:datarow[8],status:datarow[10]});
				 */
				 
			  // datarow = dt.fnGetData(i);
			 //	 arrName = datarow[1].split(" ");
		    //	 transection.push({id:datarow[0],firstName:arrName[0],lastName:arrName[1],age:datarow[2],gender:datarow[3],mobile:datarow[5],address:datarow[6],occupation:datarow[4],position:datarow[7],relation:datarow[8],status:datarow[10]});
				 
				 
		   //	 }
			 
			 
			 
			 
		 //	 alert(JSON.stringify(transection));
	 	//	 postData(transection);
		 		
	    //});
		 
		
		
		
		

		 
		 
		 
		 
		 function postData(transection){
			 
			 
	  	     $.ajax({  
	  	      type : "POST",   
	  	      url : "<%=request.getContextPath()%>/family/transection",   
	  	      dataType : 'json', 
	  	      data : JSON.stringify(transection),  
	  	      contentType :"application/json; charset=utf-8",
	  	     
	  	      success : function(data) {  
	    		
	  	    	
	  	    	alert(JSON.stringify(data));
	  	    	window.location.href = "<%=request.getContextPath()%>/employee";

	  	    	 
	  	     },  
	  	      error : function(e) {  	  	      
	  	    	  alert('Error: ' + e);   
	  	     }  
	  	    }); 
			 
		 }
		
		

	});
	
</script>
</head>


<body>
<div class="container">

<br/>
<br/>

<!-- 
<nav class="navbar navbar-default navbar-fixed-top" id="nav">
  <div class="container"> 
      
      <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">

                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>

            </button>
            <a class="navbar-brand" href="#">
               <label>Home</label>
            </a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">About</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </div>
      
  </div>
</nav> -->

 <ul class="nav nav-tabs">
  <li role="presentation"><a href="http://localhost:8080/AugHrSystem/listemployee">listemployee</a></li>
  <li role="presentation"><a href="http://localhost:8080/AugHrSystem/employee">employee</a></li>
  <li role="presentation" class="active"><a href="http://localhost:8080/AugHrSystem/family">family</a></li>
  <li role="presentation"><a href="http://localhost:8080/AugHrSystem/education">education</a></li>
  <li role="presentation"><a href="http://localhost:8080/AugHrSystem/experience">experience</a></li> 
  <li role="presentation" ><a href="http://localhost:8080/AugHrSystem/ability">ability</a></li>
  <li role="presentation"><a href="http://localhost:8080/AugHrSystem/reference">reference</a></li>
  <li role="presentation"><a href="http://localhost:8080/AugHrSystem/reward">reward</a></li>
  <li role="presentation"><a href="http://localhost:8080/AugHrSystem/history">history</a></li>
</ul>
 
<h2>Family</h2> 




<f:form  name="familyForm"  method="post" commandName="family" action="${pageContext.request.contextPath}/family/managedata">	 

	 <table id="tableResult" class="table table-striped table-bordered">
		    <thead>
	            <tr> 
	                <th>id</th>
	                <th><spring:message code="family.list.familyname"/></th>
	                <th><spring:message code="family.list.age"/></th>
	                <th><spring:message code="family.list.gender"/></th>
	                <th><spring:message code="family.list.occupation"/></th> 
	                <th><spring:message code="family.list.tel"/></th>
	                <th>address</th>
	                <th>position</th>
	                <th>relationid</th>
	                <th><spring:message code="family.list.relation"/></th> 
	                <th><spring:message code="family.list.edit"/></th>
	                <th>status</th>
	                <th>index</th> 
	                <th>hiddendata</th>
	                              
	            </tr>
	        </thead>
	
		   <tbody>
		   
		   </tbody>
	   </table>

   
   <div align="right">
  	 <button id="create" type="button" class="btn btn-default" data-toggle="modal" data-target="#addModal" data-dismiss="modal" data-backdrop="static"><span class="glyphicon glyphicon-pencil">Create</span> </button>   
     <button id="savetransection" name="saveContinute" type="submit" class="btn btn-default"><span class="glyphicon glyphicon-pencil">SaveAndContitue</span> </button>   
     
   </div>

   <br/>
   <br/>
   
</f:form>   
   
 
 
<!-- Modal Add data-->
<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body">
          
             <div id="aa"></div>
          
            <f:form id="formAdd" name="FamilyForm" method="post" commandName="family" class="form-horizontal" role="form">	      	 
	      	
	      	<spring:message code="label.add"/>
	        
	        <br/>
	        <br/>
	       
		    <div class="form-group form-group-sm">
			    
			        
			      <label class="col-lg-4 col-md-4 col-sm-3 col-xs-3 control-label required" >
			           <spring:message code="family.form.firstname" var="firstName"/> ${firstName} :
			      </label>	 		
			     
				     
			     <div class="col col-lg-6 col-md-6 col-sm-6 col-xs-6">		     		
			     		<f:input  id="firstName" name="firstName" path="firstName" cssClass="form-control required" placeholder="${firstName}" />
			     		<f:errors path="firstName"/>
			     </div>
		   </div>
		   
		   
		   <div class="form-group form-group-sm">
			    
			     <label class="col-lg-4 col-md-4 col-sm-3 col-xs-3 control-label required" >
			            <spring:message code="family.form.lastname" var="lastName"/> ${lastName} :
			     </label>	 		
			    
			     
			     <div class="col col-lg-6 col-md-6 col-sm-6 col-xs-6">		     		
			     		<f:input id="lastName" path="lastName" cssClass="form-control required" placeholder="${lastName}" />
			     		<f:errors path="lastName"/>
			     </div>
		   </div>
		   
		   
		   <div class="form-group form-group-sm">
			    
			     
			     <label class="col-lg-4 col-md-4 col-sm-3 col-xs-3 control-label required" >
			          <spring:message code="family.list.gender" var="gender"/> ${gender} :
			     </label>	 		


			      <div class="col col-lg-6 col-md-6 col-sm-6 col-xs-6">	
				       <label class="radio-inline" for="genderMale" > 
		 			     	<f:radiobutton id="genderMale" name="gender" path="gender" value="Male" checked="true"/><spring:message code="family.form.gender.male"/>
		 			   </label>
		 			 <label class="radio-inline" for="genderFemale"> 
		 			     <f:radiobutton id="genderFemale" name="gender" path="gender" value="Female"/><spring:message code="family.form.gender.female"/>
				     </label>  	
				     	<f:errors path="gender"/>					     		 
				  </div>
		           
		   </div>
		   
		   
		   <div class="form-group form-group-sm">
		   
		        
			     <label class="col-lg-4 col-md-4 col-sm-3 col-xs-3 control-label required" for="age" >
			         <spring:message code="family.list.age" var="age"/> ${age} :
			     </label>	 		
			    
			     
			     <div class="col col-lg-6 col-md-6 col-sm-6 col-xs-6">		     		
			     		<f:input  type="number" id="age" name="age" path="age" cssClass="form-control required" placeholder="${age}" />
			     		<f:errors path="age"/>
			     </div>		   
		   
		   </div>	
		   
		      
		   <div class="form-group form-group-sm">
		   
		   
			    <label class="col-lg-4 col-md-4 col-sm-3 col-xs-3 control-label required" for="mobile" >
			        <spring:message code="family.list.tel" var="mobile"/> ${mobile} :
			    </label>	 		

			    
			     <div class="col col-lg-6 col-md-6 col-sm-6 col-xs-6">		     		
			     		<f:input  type="tel" id="mobile" name="mobile" path="mobile" cssClass="form-control required" placeholder="${mobile}" />
			     		<f:errors path="mobile"/>
			     </div>		   
		   
		   </div>
		   
		   
		   
		   
		   
		    <div class="form-group">
		   
		              
			     <label class="col-lg-4 col-md-4 col-sm-3 col-xs-3 control-label required" for="address" >
			           <spring:message code="family.form.address" var="address"/> ${address} :
			     </label>	 		
			    
			     
			     <div class="col col-lg-6 col-md-6 col-sm-6 col-xs-6">		     		
			     		<f:textarea rows="3" id="address" name="address"  path="address" cssClass="form-control required" placeholder="${address}" />
			     		<f:errors path="address"/>
			     </div>	
			     	   
		  
		   </div>
	
		   
		   
		   
		   <div class="form-group form-group-sm">
		   
		         
			     <label class="col-lg-4 col-md-4 col-sm-3 col-xs-3 control-label" for="occupation">
			           <spring:message code="family.list.occupation" var="occupation"/> ${occupation} :
			     </label>	 		
			    
			     
			     <div class="col col-lg-6 col-md-6 col-sm-6 col-xs-6">		     		
			     		<f:input id="occupation" name="occupation" path="occupation" cssClass="form-control" placeholder="${occupation}" />
			     		<f:errors path="occupation"/>
			     </div>		   
		   
		   </div>
		   
		   
		      
		   <div class="form-group form-group-sm">
		   
		         
			     <label class="col-lg-4 col-md-4 col-sm-3 col-xs-3 control-label" for="position">
			           <spring:message code="family.form.position" var="position"/> ${position} :
			     </label>	 		
			    
			     
			     <div class="col col-lg-6 col-md-6 col-sm-6 col-xs-6">		     		
			     		<f:input id="position" name="position" path="position" cssClass="form-control" placeholder="${position}" />
			     		<f:errors path="position"/>
			     </div>		   
		   
		   </div>
		   
		   
		    
		    <div class="form-group form-group-sm">
		   
		           
		        <label class="col-lg-4 col-md-4 col-sm-3 col-xs-3 control-label required" for="masRelation" >
			           <spring:message code="family.list.relation" var="masRelation"/> ${masRelation} :
			    </label>	 		
			    
			     
			     
			     <div class="col col-lg-6 col-md-6 col-sm-6 col-xs-6">		     		

			     		 <f:select id="masRelation" path="masRelation" cssClass="form-control required" >
						  <f:option  value="-1" label="please select data"/>								
							<c:forEach var="obj" items="${ masRelationTypeList }">									
									<option value="${obj.id}" >${obj.relationType}</option> 									
							</c:forEach>
						</f:select> 
								
			     </div>		   
		   
		   </div>
		   
		  
		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal"><spring:message code="label.close"/></button>
		        <button id="saveBtn" name="saveBtn" type="button" class="btn btn-primary"><spring:message code="label.save"/></button>
		      </div>
 
      </f:form>
	  
	    </div>
	  </div>
	</div>   
 </div>
 
 
 
 
 
<!-- Modal Delete-->
<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body">
      
      				
      				<label>Are you sure delete data</label>
      
  	       
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button id="deleteBtn" type="button" class="btn btn-primary">Delete</button>
      </div>
    </div>
  </div>
</div>
 
 
 
 </div>

</body>
</html>