<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Spring -->	
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>


<jsp:include page="../employeeMenu.jsp"></jsp:include>
<script src="<c:url value="/resources/js/family.js" />"></script>

 
 
<input id="empId" type="hidden" value="${id}">
<input id="appId" type="text" value="${appId}">


<div class="row">
	<div id="message"></div>
	<div id="outputajax" class="form-group"></div>	
</div>



<div class="form-group">
 <table id="tableResult" class="dataTable stripe table-bordered">
 <caption title=""><spring:message code="family.name" /></caption>
	    <thead>
            <tr> 
                <th><spring:message code="label.fullname" /></th>
                <th><spring:message code="family.occupation" /></th> 
                <th><spring:message code="label.telephone" /></th>
                <th><spring:message code="family.relation" /></th> 
                <th><spring:message code="family.action" /></th>
            </tr>
        </thead>

 
      
	   <tbody>
	   
	   </tbody>
   </table>
</div>   

 

   
   
 
 
<!-- Modal Add and Update data-->
<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel"><spring:message code="family.name" /></h4>
      </div>
      <div class="modal-body">
          
             
          
         <f:form id="formAdd" name="FamilyForm" method="post" commandName="family" role="form" class="form-horizontal">	      	 
	     

		   
	
		   
	     <div class="form-group form-group-sm col col-lg-12 col-md-12 col-sm-6 col-xs-12">
			    
			<div class="row">
			        
			      <label class="col-lg-3 col-md-3 col-sm-4 col-xs-4 control-label required" >
			           <spring:message code="label.fullname" />: 
			      </label>	 		
			     
				     
			     <div class="col col-lg-6 col-md-6 col-sm-6 col-xs-6">		  
			     		<f:input  id="familyName"  path="familyName" cssClass="form-control required" placeholder="Full Name" />   		
			     </div>
		  
		  
		  	   
		  	</div>
		   
		   </div>
	     


	     
	     <div class="form-group form-group-sm col col-lg-12 col-md-12 col-sm-12 col-xs-12">
			    
			<div class="row">
			     <label class="col-lg-3 col-md-3 col-sm-4 col-xs-4 control-label required" >
			     	  <spring:message code="family.gender" />:
			     </label>	 		


			      <div class="col col-lg-6 col-md-6 col-sm-6 col-xs-6">					    
				     	
				     <label class="radio-inline" for="gender_male" > 
		 			     	<f:radiobutton id="genderMale" name="gender" path="gender" value="Male" checked="true"/><spring:message code="family.gender.male" />
		 			 </label>
		 			 <label class="radio-inline" for="gender_female"> 
		 			     <f:radiobutton id="genderFemale" name="gender" path="gender" value="Female"/><spring:message code="family.gender.female" />
				     </label>  					     		 
				  </div>
		     </div>

		   </div>
		   
		   
		   
		   
		    <div class="form-group form-group-sm col col-lg-12 col-md-12 col-sm-12 col-xs-12">
			    
			<div class="row">
			        
			      <label class="col-lg-3 col-md-3 col-sm-4 col-xs-4 control-label required" for="age" >
			       	 <spring:message code="family.age" />:
			     </label>	 		
			    
			     
			     <div class="col col-lg-6 col-md-6 col-sm-6 col-xs-6">		    
						<f:input  type="number" id="age" name="age" path="age" cssClass="form-control required" placeholder="Age" />		
			     </div>		   

		  	</div>
		   
		   </div>
		   
		   
		   
		   <div class="form-group form-group-sm col col-lg-12 col-md-12 col-sm-12 col-xs-12">
			    
			<div class="row">
			 
			    <label class="col-lg-3 col-md-3 col-sm-4 col-xs-4 control-label required" for="mobile" >
			    	 <spring:message code="label.mobile" />:
			    </label>	 		

			    
			     <div class="col col-lg-6 col-md-6 col-sm-6 col-xs-6">		     		
			     		<f:input  type="tel" id="mobile" name="mobile" path="mobile" cssClass="form-control required" placeholder="Mobile" />
			     </div>		   
		  
		  	</div>
		   
		   </div>
		   
		   
		   
		   
		   <div class="form-group col col-lg-12 col-md-12 col-sm-12 col-xs-12">
		   
		      <div class="row">        
			     <label class="col-lg-3 col-md-3 col-sm-4 col-xs-4 control-label required" for="address" >
			           <spring:message code="label.address" />:
			     </label>	 		
			    
			     
			     <div class="col col-lg-6 col-md-6 col-sm-6 col-xs-6">		     		
			     		<f:textarea rows="2" id="address" name="address"  path="address" cssClass="form-control required" placeholder="Address" />
			   
			     </div>	
			  </div>   	   
		  
		   </div>
	
		   
		   
		   
		   
		   
		   <div class="form-group form-group-sm col col-lg-12 col-md-12 col-sm-12 col-xs-12">
		   
		     <div class="row">
			     <label class="col-lg-3 col-md-3 col-sm-4 col-xs-4 control-label" for="occupation">
			           <spring:message code="family.occupation" />:
			     </label>	 		
			    
			     
			     <div class="col col-lg-6 col-md-6 col-sm-6 col-xs-6">	
			     		<f:input id="occupation" name="occupation" path="occupation" cssClass="form-control" placeholder="Occupation" />	     		
			     		
			     </div>		   
		   
			 </div>  
		   
		   </div>
		   
		   
		   
		   
		   
		   <div class="form-group form-group-sm col col-lg-12 col-md-12 col-sm-12 col-xs-12">
		   
		     <div class="row">
	         
			     <label class="col-lg-3 col-md-3 col-sm-4 col-xs-4 control-label" for="position">
			     		<spring:message code="family.position" />:
			     </label>	 		
			    
			     
			     <div class="col col-lg-6 col-md-6 col-sm-6 col-xs-6">	
			     		<f:input id="position" name="position" path="position" cssClass="form-control" placeholder="Positon" />	     		
			     	
			     </div>		 
			 </div>  
		   
		   </div>
		   
		   
		   
		   
		   
		   
		   
		   <spring:message code="family.enter.Relation" var="Relation"/>
		   
		   
		   
		    <div class="form-group form-group-sm col col-lg-12 col-md-12 col-sm-12 col-xs-12">
		   
		           
		      <div class="row">
		        <label class="col-lg-3 col-md-3 col-sm-4 col-xs-4 control-label required" for="masRelation" >
		        	   <spring:message code="family.relation" />:
			          
			    </label>	 		
			    
			     
			     
			     <div class="col col-lg-6 col-md-6 col-sm-6 col-xs-6">		     		

			     		 <f:select id="masRelation" path="masRelationType" cssClass="form-control">
						  <option  value="">${Relation }</option>							
							<c:forEach var="obj" items="${ masRelationTypeList }">									
									<option value="${obj.id}" >${obj.relationType}</option> 									
							</c:forEach>
						</f:select> 
								
			     </div>		 
			     
			</div>  
		   
		   </div> 
	
		  
		      <div class="form-group" align="center">
		       		
		        <button type="button" class="btn btn-default" data-dismiss="modal"><spring:message code="label.close" /></button>
		        <button id="saveBtn" name="saveBtn" type="button" class="btn btn-primary"><spring:message code="label.save" /></button>
		 		     		     
		      </div>
		      
		      
 
      </f:form>
	  
	    </div>
	  </div>
	</div>   
 </div>
 
 
 
 <!-- Modal Delete -->
<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
    <div class="modal-header">
        <h4 class="modal-title" id="deleteModalLabel"><spring:message code="family.name" /></h4>
      </div>
      <div class="modal-body">
      	<spring:message code="default.delete.confirm" />
      </div>
      <div class="modal-footer">
		<button id="delete" type="button" class="btn btn-danger yesButton" ><spring:message code="default.yes" /></button>
      	<button type="button" class="btn btn-info" data-dismiss="modal"><spring:message code="default.no" /></button>
      </div>
    </div>
  </div>
</div>
 

