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
    var idUpdate;
    var idDelete ;
   
	$(document).ready(function(){
		
		
		
		
		  
		 $('#errormsg').hide();
		 $('#successmsg').hide();
		 
		
		
		 
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
  	  
		
		
		  

	      dt = $('#tableResult').DataTable( {
	        "ajax": "<%=request.getContextPath()%>/family/list",	        
	             "columns": [
				{ "data": "name" },
	            { "data": "age" },	  
	            { "data": "gender" },
	            { "data": "occupation" },
	            { "data": "mobile" },
	            { "data": "relation" } ,	            
	            {"defaultContent":"<button id='test' class='btn btn-default' data-toggle='modal' data-target='#myModalUpdate'><span class='glyphicon glyphicon-pencil'>edit</span></button>"+" "+
	            		"<button id='delete' class='btn btn-default'><span class='glyphicon glyphicon-trash'>delete</span></button>"} 
	           
	            ]
	            
	            
	    } );  	 
		 
	      
	      
		 
	      $('#tableResult tbody').on( 'click', '#test', function (){		   
	    	
	    	 
	    	  dt.ajax.reload(false, true );	   		
	    	 
	    	  var data = dt.row( $(this).parents('tr') ).data();
	    	  idUpdate = data.id;
	
	    	    
	    	  doInitEditDataPost(idUpdate); 
	    	  
	    	
	    	  
                   
	    	    	$('#updateBtn').on( 'click', function (){	
	    	    		
	    	    		  
	    	    		  doEditDataPost(idUpdate);
	    	    	
	    	   }); 
	    	   
	    	   
	      } );
	      
	      
	      
	      
	      
	      

	     $('#tableResult tbody').on( 'click', '#delete', function (){	
	    	  
	    	  var data = dt.row( $(this).parents('tr') ).data();
	    	  idDelete = data.id;
	    	  alert(idDelete);
	    	  bootbox.confirm("<spring:message code="family.delete.msg"/>", function(result) {
	    		 
	    		       if(result == true){	    		    	 
	    		    	   
		    		    	   
	    		    	   doDeleteDataPost(idDelete);	
	    		    	 
	    		       }

	    	  }); 
	      
	    	  
	      });
	      
	      
	      
	      
	      function doInitEditDataPost(idUpdate) {  
	   	   
	  	    var Id = idUpdate;	    
	  	    var json = {"Id":Id};
	  	    
	  	    
	  	    
	  	     $.ajax({  
	  	      type : "POST",   
	  	      url : "<%=request.getContextPath()%>/family/initedit",   
	  	      dataType : 'json', 
	  	      data : JSON.stringify(json),  
	  	      contentType :"application/json; charset=utf-8",
	  	     
	  	      success : function(data) {  
	    		
	  	    	
	  	    	alert(JSON.stringify(data));
	  	    	$('#firstNameUpdate').val(data.firstName);
	  	    	$('#lastNameUpdate').val(data.lastName);
	  	    	
	  	   
	  	    	$("[name=genderUpdate]").val(data.gender);
	  	    	var gender = $("[name=genderUpdate]").val();
	  	    	
	  	    	if(data.gender=="Male"){
	  	    		
	  	    	   $("#gender_male_update").prop("checked", true);
	  	    	   
	  	    	}else if(data.gender=="Female"){
	  	    		
	  	    	   $("#gender_female_update").prop("checked", true);
	  	    	   
	  	    	} 
	  	    	
	  	    	
	  	      
	  	    	$('#ageUpdate').val(data.age);
	  	    	$('#mobileUpdate').val(data.mobile);
	  	    	$('#addressUpdate').val(data.address);
	  	    	$('#occupationUpdate').val(data.occupation);
	  	    	$('#positionUpdate').val(data.position);
	  	    	$('#masRelationUpdate').val(data.relationId);

	  	    	 
	  	     },  
	  	      error : function(e) {  	  	      
	  	    	  alert('Error: ' + e);   
	  	     }  
	  	    }); 
	  	   
	    }
	      
	      
	      
	      
	      
	      
	      
	      function doEditDataPost(idUpdate) {  
	   	   
	    	var id = idUpdate;
	  		var firstName = $('#firstNameUpdate').val();
	  		var lastName = $('#lastNameUpdate').val();
			var gender;
	  		
	  		if($('#gender_male_update:checked').val()!=null){
	  			
	  			gender = $('#gender_male_update:checked').val();
	  			
	  		}else if($('#gender_female_update:checked').val()!=null){
	  			
	  			gender = $('#gender_female_update:checked').val();
	  		}
	  		
	  		var age = $('#ageUpdate').val();
	  		var mobile = $('#mobileUpdate').val();
	  		var address = $('#addressUpdate').val();
	  		var occupation = $('#occupationUpdate').val();
	  		var position = $('#positionUpdate').val();
	  		var relation = $('#masRelationUpdate').val();
	  		
	  		alert("id: "+idUpdate);

	  	    
	  	    var json = {"id":id,"firstName":firstName,"lastName":lastName,"gender":gender,"age":age,"mobile":mobile,"address":address,"occupation":occupation,"position":position,"masRelation":{"id":relation}};
	  	     
	  	    
	  	    $.ajax({  
	  	      type : "POST",   
	  	      url : "<%=request.getContextPath()%>/family/edit",   
	  	      dataType : 'json', 
	  	      data : JSON.stringify(json),  
	  	      contentType :"application/json; charset=utf-8",
	  	     
	  	      success : function(data) {  
	  	    	
	  	    	 
	  	    	  
	  	    	  alert(JSON.stringify(data));
	  	    	 
	  	    	
	  	       		 $('#myModalUpdate').modal('hide');	   	     
	  	          	 dt.ajax.reload(false, true );	
	  			     $('#successmsg').show();
	  				 if($('#successmsg').is(':visible'))
	  				 {  
	  					 $('#errormsg').hide();    
	  				 }
  	    	   	 
	  	        
	  	     },  
	  	      error : function(e) {  
	  	      alert('Error: ' + e); 
	  	      $('#myModalUpdate').modal('hide');	   
	  	      $('#errormsg').show();
	  	      
	  	      if($('#errormsg').is(':visible'))
			  {  
					 $('#successmsg').hide();   
		  	  }
 	   	 	  	      
	  	     }  
	  	    }); 	  	    
	    }
	      
	      
	      
	      
	     
	      
	      $('body').on('hidden.bs.modal', '.modal', function () {
	    	  
	          $(this).removeData('bs.modal');
	          $('#firstName').val("");
	          $('#lastName').val("");
	          $("#gender_male").prop("checked", true);
	          $('#lastName').val("");
	          $('#address').val("");
	          $('#relation').val("");
	          $('#occupation').val("");
	          $('#position').val("");
	          $('#age').val("");
	          $('#mobile').val("");
	       
	          
	      }); 
	      
	      
	       
	      
	      
	      
	
	     		 $('#saveBtn').on("click",function(){
	     			  $(this).removeData('bs.modal');
	     			  if($("#formAdd").valid()){
	     				 doSaveDataAjax();
	     			  }
	     		 });
			  
	
	
	      
	      
	      
	      
	      
	      function doSaveDataAjax() {  
	   	   
	    	  
	   	   
	  		
	  		var firstName = $('#firstName').val();
	  		var lastName = $('#lastName').val();
	  		var gender;
	  		
	  		
	  		if($('#gender_male:checked').val()!=null){
	  			
	  			gender = $('#gender_male:checked').val();
	  			
	  		}else if($('#gender_female:checked').val()!=null){
	  			
	  			gender = $('#gender_female:checked').val();
	  		}
	  	
	  		
	  		
	  		
	  		var age = $('#age').val();
	  		var mobile = $('#mobile').val();
	  		var address = $('#address').val();
	  		var occupation = $('#occupation').val();
	  		var position = $('#position').val();
	  		var relation = $('#masRelation').val();
	  			  	    
	  	    var json = {"firstName":firstName,"lastName" : lastName,"gender":gender,"age":age,"mobile":mobile,"address":address,"occupation":occupation,"position":position,"masRelation":{"id":relation}};
	  	   
	  	    
	  	    $.ajax({  
	  	      type : "POST",   
	  	      url : "<%=request.getContextPath()%>/family/add",   
	  	      dataType : 'json', 
	  	      data : JSON.stringify(json),  
	  	      contentType :"application/json; charset=utf-8",
	  	     
	  	      success : function(data) {  
	  	    	 
	  	    	    $('#myModal').modal('hide');
	  	    	    dt.ajax.reload(false, true );
	  	    	    $('#successmsg').show();
	  	    	    if($('#successmsg').is(':visible'))
	  				 {  
	  					 $('#errormsg').hide();    
	  				 }
		    		
	  	     },  
	  	      error : function(e) {  
	  	           
	  	    	   alert('Error: ' + e);  
	  	    	   $('#myModal').modal('hide');
	  	    	   $('#errormsg').show();		  	    	 
	  	    	   if($('#errormsg').is(':visible'))
	  			   {  
	  				 $('#successmsg').hide();    
	  			   }
	  	     }  
	  	    }); 
	  	    
	  	   
	     } 
	      
	      
	      
	      
	      
	      
	      
	      function doDeleteDataPost(idDelete) {  
		   	   
		  	    var Id = idDelete;	    
		  	    var json = {"Id":idDelete};
		  	    
		  	    
		  	    
		  	     $.ajax({  
		  	      type : "POST",   
		  	      url : "<%=request.getContextPath()%>/family/delete",   
		  	      dataType : 'json', 
		  	      data : JSON.stringify(json),  
		  	      contentType :"application/json; charset=utf-8",
		  	     
		  	      success : function(data) {  
		    		
		  	    	
		  	    	alert(JSON.stringify(data));
		  	    	dt.ajax.reload(false, true );	
		  	        $('#successmsg').show();	
	  	    	    if($('#successmsg').is(':visible'))
	  				 {  
	  					 $('#errormsg').hide();    
	  				 }

		  	    	 
		  	     },  
		  	      error : function(e) {  	  	      
		  	    	  alert('Error: ' + e);  
		  	    	  $('#errormsg').show();  	    	 
		  	    	  if($('#errormsg').is(':visible'))
		  			  {  
		  				 $('#successmsg').hide();    
		  			  }
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
</nav>


<!-- <a href="#" data-toggle="modal" data-backdrop="static" data-keyboard="false" data-target="#myModal"><span class="glyphicon glyphicon-plus-sign"></span>Add Data</a> 
 -->

<br/>
<br/>
<br/>
<br/>
<br/>




<div id="successmsg" class="alert alert-success" role="alert">
  <a href="#" class="alert-link">Success...</a>
</div>


<div id="errormsg" class="alert alert-danger" role="alert">
  <a href="#" class="alert-link">Please try again...</a>
</div>


 <table id="tableResult" class="dataTable stripe">
	    <thead>
            <tr> 
                
                <th><spring:message code="family.list.familyname"/></th>
                <th><spring:message code="family.list.age"/></th>
                <th><spring:message code="family.list.gender"/></th>
                <th><spring:message code="family.list.occupation"/></th> 
                <th><spring:message code="family.list.tel"/></th>
                <th><spring:message code="family.list.relation"/></th> 
                <th><spring:message code="family.list.edit"/></th>
                              
            </tr>
        </thead>

 
        <tfoot>
            <tr>
     
                <th><spring:message code="family.list.familyname"/></th>
                <th><spring:message code="family.list.age"/></th>
                <th><spring:message code="family.list.gender"/></th>
                <th><spring:message code="family.list.occupation"/></th> 
                <th><spring:message code="family.list.tel"/></th>
                <th><spring:message code="family.list.relation"/></th> 
                <th><spring:message code="family.list.edit"/></th>
                
            </tr>
        </tfoot>
        
	   <tbody>
	   
	   </tbody>
   </table>
   
   <div align="right">
  	 <button id="create" type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-pencil">Create</span> </button>   
   </div>

   <br/>
   <br/>
   
   
   
 
 
<!-- Modal Add data-->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body">
          
             
          
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
				       <label class="radio-inline" for="gender_male" > 
		 			     	<f:radiobutton id="gender_male" name="gender" path="gender" value="Male" checked="true"/><spring:message code="family.form.gender.male"/>
		 			   </label>
		 			 <label class="radio-inline" for="gender_female"> 
		 			     <f:radiobutton id="gender_female" name="gender" path="gender" value="Female"/><spring:message code="family.form.gender.female"/>
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
						  <f:option  value="" label="please select data"/>								
							<c:forEach var="obj" items="${ masRelationTypeList }">									
									<option value="${obj.id}" >${obj.relationType}</option> 									
							</c:forEach>
						</f:select> 
								
			     </div>		   
		   
		   </div>
		   
		  
		      <div class="form-group" align="center">
		        <button type="button" class="btn btn-default" data-dismiss="modal"><spring:message code="label.close"/></button>
		        <button id="saveBtn" name="saveBtn" type="button" class="btn btn-primary"><spring:message code="label.save"/></button>
		      </div>
 
 
      </f:form>
	  
	    </div>
	  </div>
	</div>   
 </div>
 
 
 
 
 
 
 
 
 
 
 
 <!-- Modal Update data-->
<div class="modal fade" id="myModalUpdate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body">
          
             <div id="output">  </div>
          
             <f:form id="formUpdate" name="familyForm" method="post" commandName="family" class="form-horizontal" role="form">	      	 
	      	
					<spring:message code="label.update" />
					     
	        <br/>
	        <br/>
	       
		    <div class="form-group form-group-sm">
			    
			         
			     <label class="col-lg-4 col-md-4 col-sm-3 col-xs-3 control-label" >
			           <spring:message code="family.form.firstname" var="firstName"/> ${firstName} :
			     </label>	 		
			     
			     
			     <div class="col col-lg-6 col-md-6 col-sm-6 col-xs-6">		     		
			     		<f:input  id="firstNameUpdate" name="firstName" path="firstName" cssClass="form-control" placeholder="${firstName}" />
			     		<f:errors path="firstName"/>
			     </div>
		   </div>
		   
		   
		   <div class="form-group form-group-sm">
			         
			     <label class="col-lg-4 col-md-4 col-sm-3 col-xs-3 control-label" >
			            <spring:message code="family.form.lastname" var="lastName"/> ${lastName} :
			     </label>	 		
			    
			     
			     <div class="col col-lg-6 col-md-6 col-sm-6 col-xs-6">		     		
			     		<f:input id="lastNameUpdate" path="lastName" cssClass="form-control" placeholder="${lastName}" />
			     		<f:errors path="lastName"/>
			     </div>
		   </div>
		   
		   
		   <div class="form-group form-group-sm">
			    
			       
			          <label class="col-lg-4 col-md-4 col-sm-3 col-xs-3 control-label" for="gender" >
			               <spring:message code="family.list.gender" var="gender"/> ${gender} :
			          </label>	 		
			   
			     
			       
			             <div class="col col-lg-6 col-md-6 col-sm-6 col-xs-6">	
				              <label class="radio-inline" for="gender_male" > 
		 			     		<f:radiobutton id="gender_male_update" name="genderUpdate" path="gender" value="Male"/><spring:message code="family.form.gender.male"/>
		 			     	  </label>
		 			     	  <label class="radio-inline" for="gender_female"> 
		 			     		<f:radiobutton id="gender_female_update" name="genderUpdate" path="gender" value="Female"/><spring:message code="family.form.gender.female"/>
				     		 </label>  	
				     		 	<f:errors path="gender"/>					     		 
				         </div>
		           
		   </div>
		   
		   
		   <div class="form-group form-group-sm">
		   
		           
			      <label class="col-lg-4 col-md-4 col-sm-3 col-xs-3 control-label" for="age">
			            <spring:message code="family.list.age" var="age"/> ${age} :
			     </label>	 		
			    
			     
			     <div class="col col-lg-6 col-md-6 col-sm-6 col-xs-6">		     		
			     		<f:input  type="number" id="ageUpdate" name="age" path="age" cssClass="form-control" placeholder="${age}" />
			     		<f:errors path="age"/>
			     </div>		   
		   
		   </div>	
		   
		   
		    <div class="form-group form-group-sm">
		   
		         
			     <label class="col-lg-4 col-md-4 col-sm-3 col-xs-3 control-label" for="mobile">
			            <spring:message code="family.list.tel" var="mobile"/> ${mobile} :
			     </label>	 		
			    
			     
			     <div class="col col-lg-6 col-md-6 col-sm-6 col-xs-6">		     		
			     		<f:input  type="tel" id="mobileUpdate" name="mobile" path="mobile" cssClass="form-control" placeholder="${mobile}" />
			     		<f:errors path="mobile"/>
			     </div>		   
		   
		   </div>
		   
		   
		   
		   
		   
		    <div class="form-group">
		   
		        
			     <label class="col-lg-4 col-md-4 col-sm-3 col-xs-3 control-label" for="mobile">
			           <spring:message code="family.form.address" var="address"/> ${address} :
			     </label>	 		
			   
			     
			     <div class="col col-lg-6 col-md-6 col-sm-6 col-xs-6">		     		
			     		<f:textarea rows="3" id="addressUpdate" name="address"  path="address" cssClass="form-control" placeholder="${address}" />
			     		<f:errors path="address"/>
			     </div>	
			     	   
		  
		   </div>
	
		   
		   
		   
		   <div class="form-group form-group-sm">
		   
		         
			     <label class="col-lg-4 col-md-4 col-sm-3 col-xs-3 control-label" for="occupation">
			           <spring:message code="family.list.occupation" var="occupation"/> ${occupation} :
			     </label>	 		
			    
			     
			     <div class="col col-lg-6 col-md-6 col-sm-6 col-xs-6">		     		
			     		<f:input id="occupationUpdate" name="occupation" path="occupation" cssClass="form-control" placeholder="${occupation}" />
			     		<f:errors path="occupation"/>
			     </div>		   
		   
		   </div>
		   
		   
		      
		   <div class="form-group form-group-sm">
		   
		         
			     <label class="col-lg-4 col-md-4 col-sm-3 col-xs-3 control-label" for="position">
			           <spring:message code="family.form.position" var="position"/> ${position} :
			     </label>	 		
			    
			     
			     <div class="col col-lg-6 col-md-6 col-sm-6 col-xs-6">		     		
			     		<f:input id="positionUpdate" name="position" path="position" cssClass="form-control" placeholder="${position}" />
			     		<f:errors path="position"/>
			     </div>		   
		   
		   </div>
		   
		   
		    
		    <div class="form-group form-group-sm">
		   

			     
			    <label class="col-lg-4 col-md-4 col-sm-3 col-xs-3 control-label" for="masRelation" >
			           <spring:message code="family.list.relation" var="masRelation"/> ${masRelation} :
			    </label>	 		
			    
			     
			     
			     <div class="col col-lg-6 col-md-6 col-sm-6 col-xs-6">		     		

			     		 <f:select id="masRelationUpdate" path="masRelation" cssClass="form-control" >
						  <f:option  value="" label="please select data"/>								
							<c:forEach var="obj" items="${ masRelationTypeList }">									
									<option value="${obj.id}" >${obj.relationType}</option> 									
							</c:forEach>
						</f:select> 								
			     </div>		   
		   
		   
		   </div>
		   
		  
		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal"><spring:message code="label.close"/></button>
		        <button id="updateBtn" name="updateBtn" type="button" class="btn btn-primary"><spring:message code="label.update"/></button>
		      </div>
 
      </f:form>
	  
	    </div>
	  </div>
	</div>   
 </div>
 
 
 
 </div>

</body>
</html>