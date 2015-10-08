<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Spring -->	
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>

<jsp:include page="../employeeMenu.jsp"></jsp:include>
<script src="<c:url value="/resources/js/health.js" />"></script>
<link href="<c:url value="/resources/css/health.css" />" rel="stylesheet" media="all">


<input id="empId" type="hidden" value="${id}"/>
<input  id="idHealth" name="ididHealth" type="hidden" value='${healthDto.id}'/>


		<div id="div-information" class="col-md-12">
				<h2><spring:message code="label.health" />
					<i id="icon1" class="fa fa-chevron-up"></i>
				</h2>
	    </div>
	

	<div class="container">     
	

          <f:form id="formAddUpdate" name="healthForm" method="post" commandName="healthDto" class="form-horizontal" role="form">	      	 
	  
	  
		    <div  class="form-group form-group-sm col col-lg-12 col-md-12 col-sm-12 col-xs-12 divHealth">
		   	
		     <div class="row">       
		        <label class="col-lg-5 col-md-5 col-sm-5 col-xs-5 control-label required" for="congenitalDisease" >
			            <spring:message code="health.question.congenitalDisease" />?
			    </label>	 		
			    
			     
			     <div class="form-group form-group-sm col col-lg-6 col-md-6 col-sm-6 col-xs-6">	
			     
			     	<div class="col col-lg-8 col-md-8 col-sm-8 col-xs-8">			     				 	   	 
				 	   	   <f:input  id="congenitalDisease" path="congenitalDisease" cssClass="form-control required" placeholder="congenitalDisease" value="${healthDto.congenitalDisease}"/>					     													 		   				 	   	   				 	   	 
				 	</div>		
			     
			     
			         <div class="col col-lg-4 col-md-4 col-sm-4 col-xs-4">			     
				 	   	  <p>
				 	   	   <button id="btnOkCongenital" type="button" class="btn btn-link btn-md btnhealth btnconok"> <!-- data-toggle="modal" data-target="#congentailModal" --><span class="glyphicon glyphicon-ok">Yes/Update</span></button>	
				 	   	   <button id="btnNoCongenital" type="button" class="btn btn-link btn-md btnhealth btnconremove"><span id="remove" class="glyphicon glyphicon-remove">No</span></button>				 	   	  
				 	   	  <p>
				 	 </div>					 
		         </div>	     
		          
		    </div>
		       	  
		  </div> 
		  
		 
		             
		   
		   
		   
		   
		   <div id="congenitaldiv" class="form-group form-group-sm col col-lg-12 col-md-12 col-sm-12 col-xs-12">
		   
			     <div class="row">
			           
			        <label  class="col-lg-5 col-md-5 col-sm-5 col-xs-5 control-label required congenitalDiseaseExplain" for="congenitalDisease" >
				            <spring:message code="health.congenitalDiseaseExplain1" var="congenitalDiseaseExplain1"/>${congenitalDiseaseExplain1 }:
				    </label>	 		

     
				     <div class="col col-lg-6 col-md-6 col-sm-6 col-xs-6">	
				        	<f:input  id="congenitalDiseaseExplain" path="congenitalDiseaseExplain" cssClass="form-control required" placeholder="${congenitalDiseaseExplain1 }" value="${healthDto.congenitalDiseaseExplain}"/>					     								
				     </div>	
			     
			     </div>
		   </div>
			     
			 
		   <div id="congenital2div" class="form-group form-group-sm col col-lg-12 col-md-12 col-sm-12 col-xs-12">
			      <div class="row">
			         <label class="col-lg-5 col-md-5 col-sm-5 col-xs-5 control-label required congenitalDiseaseExplain" for="congenitalDisease2" >
			           		<spring:message code="health.congenitalDiseaseExplain2" var="congenitalDiseaseExplain2"/>${congenitalDiseaseExplain2 }: 
			   		 </label>	 		
		     
				     <div class="col col-lg-6 col-md-6 col-sm-6 col-xs-6 congenitalDiseaseExplain">	
				        	<f:input  id="congenitalDiseaseExplain2" path="congenitalDiseaseExplain2" cssClass="form-control required" placeholder="${congenitalDiseaseExplain2 }" value="${healthDto.congenitalDiseaseExplain2}"/>					     								
				     </div>			 	 
			 	 </div>
		   
		   </div>
		   
		   
		   
		   
		      <div  id="congenital3div" class="form-group form-group-sm col col-lg-12 col-md-12 col-sm-12 col-xs-12">
		   
			     <div class="row">
		   
			         <label class="col-lg-5 col-md-5 col-sm-5 col-xs-5 control-label required congenitalDiseaseExplain" for="congenitalDisease3" >
			           		<spring:message code="health.congenitalDiseaseExplain3" var="congenitalDiseaseExplain3"/>${congenitalDiseaseExplain3 }: 
			   		 </label>	 		
		     
				     <div class="col col-lg-6 col-md-6 col-sm-6 col-xs-6">	
				        	<f:input  id="congenitalDiseaseExplain3" path="congenitalDiseaseExplain3" cssClass="form-control required" placeholder="${congenitalDiseaseExplain3 }" value="${healthDto.congenitalDiseaseExplain3}"/>					     								
				     </div>	
				 </div>
			</div>
			 	
			 	
		   
		   
		   
		   
		   
		   
		     <div  class="form-group form-group-sm col col-lg-12 col-md-12 col-sm-12 col-xs-12 divHealth">
		   
		      <div class="row">
		           
		        <label class="col-lg-5 col-md-5 col-sm-5 col-xs-5 control-label required" for="geneticDisease" >
			           <spring:message code="health.question.GeneticDisease" />?
			    </label>	 		
			    
			     
			     
			    <div class="form-group form-group-sm col col-lg-6 col-md-6 col-sm-6 col-xs-6">	
			     
			     	<div class="col col-lg-8 col-md-8 col-sm-8 col-xs-8">			     				 	   	 
				 	   	   <f:input  id="geneticDisease" path="geneticDisease" cssClass="form-control required" placeholder="geneticDisease" value="${healthDto.geneticDisease}"/>					     													 		   				 	   	   				 	   	 
				 	</div>		
			     
			     
			         <div class="col col-lg-4 col-md-4 col-sm-4 col-xs-4">			     
				 	   	  <p>
				 	   	   <button id="geneticDiseaseBtnOk" type="button" class="btn btn-link btn-md btnhealth btngenok" data-toggle="modal" data-target="#geneticModal"><span class="glyphicon glyphicon-ok">Yes/Update</span></button>	
				 	   	   <button id="geneticDiseaseBtnNo" type="button" class="btn btn-link btn-md btnhealth btngenremove"><span id="remove" class="glyphicon glyphicon-remove">No</span></button>				 	   	  
				 	   	  <p>
				 	 </div>					 
		         </div>	     
		         
		    </div>
		   </div>
		   
		   
		
		   
		   
		   
		   
		   <div id="geneticDiseaseExplainDiv" class="form-group form-group-sm col col-lg-12 col-md-12 col-sm-12 col-xs-12">
		   
			     <div class="row">
			           
			        <label class="col-lg-5 col-md-5 col-sm-5 col-xs-5 control-label required" for="geneticDisease" >
				           <spring:message code="health.geneticDiseaseExplain1" var="geneticDiseaseExplain1"/>${geneticDiseaseExplain1 }: 
				    </label>	 		

     
				     <div class="col col-lg-6 col-md-6 col-sm-6 col-xs-6">	
				        	<f:input  id="geneticDiseaseExplain" path="geneticDiseaseExplain" cssClass="form-control required" placeholder="${geneticDiseaseExplain1 }" value="${healthDto.geneticDiseaseExplain}"/>					     								
				     </div>	
				 
		        
			 	 </div>
		   
		   </div>
		   
		   
		   
		    <div id="geneticDiseaseExplainDiv2" class="form-group form-group-sm col col-lg-12 col-md-12 col-sm-12 col-xs-12">
		   
			     <div class="row">
			           
			     
		           
			         <label class="col-lg-5 col-md-5 col-sm-5 col-xs-5 control-label required" for="congenitalDisease2" >
			           		<spring:message code="health.geneticDiseaseExplain2" var="geneticDiseaseExplain2"/>${geneticDiseaseExplain2 }: 
			   		 </label>	 		
		     
				     <div class="col col-lg-6 col-md-6 col-sm-6 col-xs-6">	
				        	<f:input  id="geneticDiseaseExplain2" path="geneticDiseaseExplain2" cssClass="form-control required" placeholder="${geneticDiseaseExplain1}"  value="${healthDto.geneticDiseaseExplain2}"/>					     								
				     </div>			 	 			 
			         
			 	 </div>
		   
		   </div>
		   
		   
		   
		    <div id="geneticDiseaseExplainDiv3" class="form-group form-group-sm col col-lg-12 col-md-12 col-sm-12 col-xs-12">
		   
			     <div class="row">
		   
				    <label class="col-lg-5 col-md-5 col-sm-5 col-xs-5 control-label required" for="congenitalDisease3" >
					    <spring:message code="health.geneticDiseaseExplain3" var="geneticDiseaseExplain3"/>${geneticDiseaseExplain3 }: 
				    </label>	 		
		     
				     <div class="col col-lg-6 col-md-6 col-sm-6 col-xs-6">	
				         <f:input  id="geneticDiseaseExplain3" path="geneticDiseaseExplain3" cssClass="form-control required" placeholder="${geneticDiseaseExplain1}"  value="${healthDto.geneticDiseaseExplain3}"/>					     								
		 			</div>	
		 		</div>
		 	</div>
			 	 
		   
		    </br>
		   
		   
		    <div class="form-group form-group-sm col col-lg-12 col-md-12 col-sm-12 col-xs-12 divHealth">
		   
		       <div class="row">
		           
			        <label class="col-lg-5 col-md-5 col-sm-5 col-xs-5 control-label required" for="geneticDisease" >
				          <spring:message code="health.question.TakeMedicine" />?			          
				    </label>	 		
				    
				    <div class="form-group form-group-sm col col-lg-6 col-md-6 col-sm-6 col-xs-6">				     
			     	
			     		<div class="col col-lg-8 col-md-8 col-sm-8 col-xs-8">			     				 	   	 
				 	   	   <f:input  id="takeMedicine" path="takeMedicine" cssClass="form-control required" placeholder="takeMedicine" value="${healthDto.takeMedicine}"/>					     													 		   				 	   	   				 	   	 
				 		</div>		
			     
			     
			         	<div class="col col-lg-4 col-md-4 col-sm-4 col-xs-4">			     
				 	   	  <p>
				 	   	   <button id="takeMedicineOk" type="button" class="btn btn-link btn-md btnhealth btntakeok"><span class="glyphicon glyphicon-ok">Yes/Update</span></button>	
				 	   	   <button id="takeMedicineNo" type="button" class="btn btn-link btn-md btnhealth btntakeremove"><span id="remove" class="glyphicon glyphicon-remove">No</span></button>				 	   	  
				 	   	  <p>
				 		</div>					 
		            </div>	     
				</div>
			</div>
			    
			    
			
			  
			    
			     <div id="takeMedicineDiv" class="form-group form-group-sm col col-lg-12 col-md-12 col-sm-12 col-xs-12">
			         <div class="row">
				        <label class="col-lg-5 col-md-5 col-sm-5 col-xs-5 control-label required" for="takeMedicineExplain" >
					           <spring:message code="health.takeMedicineExplain1" var="takeMedicineExplain1"/>${takeMedicineExplain1 }: 
					    </label>	 		
	
	     
					     <div class="col col-lg-6 col-md-6 col-sm-6 col-xs-6">	
					        	<f:input  id="takeMedicineExplain" path="takeMedicineExplain" cssClass="form-control required" placeholder="${takeMedicineExplain1}"  value="${healthDto.takeMedicineExplain}" />					     								
					     </div>	
					  </div>
				
			    </div>
			    
			    
			    
			    
			    
			    
			    
			     <div class="form-group form-group-sm col col-lg-12 col-md-12 col-sm-12 col-xs-12 divHealth">
		   
		     	  <div class="row">
		           
			        <label class="col-lg-5 col-md-5 col-sm-5 col-xs-5 control-label required" for="intolerance" >
				          <spring:message code="health.question.Intolerance" />?
				    </label>	 
				    		
				    
				      <div class="form-group form-group-sm col col-lg-6 col-md-6 col-sm-6 col-xs-6">				     
			     	
				     		<div class="col col-lg-8 col-md-8 col-sm-8 col-xs-8">			     				 	   	 
					 	   	   <f:input  id="intolerance" path="intolerance" cssClass="form-control required" placeholder="intolerance" value="${healthDto.intolerance}"/>					     													 		   				 	   	   				 	   	 
					 		</div>		
				     
				     
				         	<div class="col col-lg-4 col-md-4 col-sm-4 col-xs-4">			     
					 	   	  <p>
					 	   	   <button id="intoOk" type="button" class="btn btn-link btn-md btnhealth btninok"><span class="glyphicon glyphicon-ok">Yes/Update</span></button>	
					 	   	   <button id="intoNo" type="button" class="btn btn-link btn-md btnhealth btninremove"><span id="remove" class="glyphicon glyphicon-remove">No</span></button>				 	   	  
					 	   	  <p>
					 		</div>					 
		             </div>	     
				  
				  </div> 
			    </div>
			    
			    
			  
			  
			    
			     <div id="intoleranceDiv"  class="form-group form-group-sm col col-lg-12 col-md-12 col-sm-12 col-xs-12">
			      <div class="row">
			           
			        <label class="col-lg-5 col-md-5 col-sm-5 col-xs-5 control-label required" for="intoleranceExplain" >
				          <spring:message code="health.intoleranceExplain" var="intoleranceExplain"/>${intoleranceExplain }: 
				    </label>	 		

     
				     <div class="col col-lg-6 col-md-6 col-sm-6 col-xs-6">	
				        	<f:input  id="intoleranceExplain" path="intoleranceExplain" cssClass="form-control required" placeholder="${intoleranceExplain}"  value="${healthDto.intoleranceExplain}"/>					     								
				     </div>	
				  </div>
			    </div>
	
	
		     <div id="btn" align="center">
		      <p>
		        <button  id="renew" type="button" class="btn btn-default btn-md" ><spring:message code="label.renew" /></button>
		        <button id="saveBtn" name="saveBtn" type="button" class="btn btn-info btn-md"  data-toggle="modal" data-target="#createModal"><spring:message code="label.save" /></button>
		        <button id="deleteBtn" name="deleteBtn" type="button" class="btn btn-danger active btn-md" data-toggle="modal" data-target="#deleteModal"><spring:message code="label.delete" /></button>
		      </p>
		      </div>
		   </div>
 
      </f:form>
</div>
 



<!-- Modal Create and Update -->
<div class="modal fade" id="createModal" tabindex="-1" role="dialog" aria-labelledby="createModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
    <div class="modal-header">
        <h4 class="modal-title" id="createModalLabel"><spring:message code="health.name" /></h4>
      </div>
      <div class="modal-body">
      	<spring:message code="default.create.confirm" />
      </div>
      <div class="modal-footer">
		<button id="create" type="button" class="btn btn-info yesButton" ><spring:message code="default.yes" /></button>
      	<button type="button" class="btn btn-danger" data-dismiss="modal"><spring:message code="default.no" /></button>
      </div>
    </div>
  </div>
</div>




<!-- Modal Delete -->
<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
    <div class="modal-header">
        <h4 class="modal-title" id="deleteModalLabel"><spring:message code="health.name" /></h4>
      </div>
      <div class="modal-body">
      	<spring:message code="default.delete.confirm" />
      </div>
      <div class="modal-footer">
		<button id="delete" type="button" class=" btn btn-info yesButton" ><spring:message code="default.yes" /></button>
      	<button type="button" class="btn btn-danger" data-dismiss="modal"><spring:message code="default.no" /></button>
      </div>
    </div>
  </div>
</div>
 
 
 
 
 
 