<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!-- Spring -->	
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>



<jsp:include page="../employeeMenu.jsp"></jsp:include>
<script src="<c:url value="/resources/js/site.js" />"></script>




<div class="row">
	<div class="col-md-6">
		<%-- <h2><spring:message code="site.name" /></h2> --%>
	</div>


</div>

<div class="row">
	<div id="message"></div>
	<div id="outputajax" class="form-group"></div>	
</div>		

<input id="empId" type="hidden" value="${id}"/>

 <table id="tableResult" class="dataTable stripe table-bordered"> 
 <caption title=""><spring:message code="site.name" /></caption>
	    <thead>
            <tr> 
                <th><spring:message code="site.startDate" var="startDate"/>${startDate }</th>
                <th><spring:message code="site.endDate" var="endDate"/>${endDate }</th>
                <th><spring:message code="site.projectname" var="projectname"/>${projectname }</th>
                <th><spring:message code="site.projectOwner" var="projectOwner"/>${projectOwner }</th> 
                <th><spring:message code="site.projectOwnerContact" var="projectOwnerContact"/>${projectOwnerContact }</th>
                <th><spring:message code="label.action" /></th>
            </tr>
        </thead>
 
   </table>
  
   
   
   
<!-- Modal Add and Update data-->
<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel"><spring:message code="site.name" /></h4>
      </div>
      <div class="modal-body">
          
             
          
            <f:form id="formAddUpdate" name="siteForm" method="post" commandName="siteDto" class="form-horizontal" role="form">	      	 
	      
	   <spring:message code="default.date" var="date"/>
		   <div class="form-group form-group-sm">
			    
			     <label class="col-lg-4 col-md-4 col-sm-3 col-xs-3 control-label required" >
			            ${startDate}:
			     </label>	 		
			    
                <div class="col col-lg-6 col-md-6 col-sm-6 col-xs-6">		
				     <div  class="input-group date" id='startDate'>		     		
				     		<f:input name="startDate" path="startDate" cssClass="form-control" placeholder="${date}"/>
				     		<span class="input-group-addon">
	                        	<span class="glyphicon glyphicon-calendar"></span>
	                    	</span>
				     </div>
				</div>
		   </div>
		   
		   
		   <div class="form-group form-group-sm">
			    
			     <label class="col-lg-4 col-md-4 col-sm-3 col-xs-3 control-label required" >
			            ${endDate}:
			     </label>	 		
			    
			     
			   
			    <div class="col col-lg-6 col-md-6 col-sm-6 col-xs-6">		
				     <div  class="input-group date" id='endDate'>		     		
				     		<f:input name="endDate" path="endDate" cssClass="form-control" placeholder="${date}"/>
				     		<span class="input-group-addon">
	                        <span class="glyphicon glyphicon-calendar"></span>
	                    </span>
				     </div>
				</div>		   
		   </div>
		   
		   
		   
		     <div class="form-group form-group-sm">
			    
			        
			      <label class="col-lg-4 col-md-4 col-sm-3 col-xs-3 control-label required" >
			            ${projectname}:
			      </label>	 		
			     
				     
			     <div class="col col-lg-6 col-md-6 col-sm-6 col-xs-6">		     		
			     		<f:input  id="projectName" path="projectName" cssClass="form-control required" placeholder="${projectname}" />			     		
			     </div>
		   </div>
		   
		   
		    <div class="form-group form-group-sm">
			    
			     <label class="col-lg-4 col-md-4 col-sm-3 col-xs-3 control-label required" >
			            ${projectOwner}:
			     </label>	 		
			    
			     
			     <div class="col col-lg-6 col-md-6 col-sm-6 col-xs-6">		     		
			     		<f:input id="projectOwner" path="projectOwner" cssClass="form-control required" placeholder="${projectOwner}"/>
			     </div>
		           
		   </div>
		   
		   
		   
		  <div class="form-group form-group-sm">
			    
			     <label class="col-lg-4 col-md-4 col-sm-3 col-xs-3 control-label required" >
			            ${projectOwnerContact}:
			     </label>	 		
			    
			     
			     <div class="col col-lg-6 col-md-6 col-sm-6 col-xs-6">		     		
			     		<f:input id="projectOwnerContact" path="projectOwnerContact" cssClass="form-control required" placeholder="${projectOwnerContact}"/>
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
	        <h4 class="modal-title" id="deleteModalLabel"><spring:message code="site.name" /></h4>
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
	   
