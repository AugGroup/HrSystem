<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- Spring -->	
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>

<!-- Bootstrap -->
<script src="<c:url value="/resource/bootstrap/js/jquery-1.11.2.js" />"></script>
<link href="<c:url value="/resource/bootstrap/css/bootstrap.css" />" rel="stylesheet" media="all">
<link href="<c:url value="/resource/bootstrap/css/bootstrap-theme.css" />" rel="stylesheet" media="all">
<script src="<c:url value="/resource/bootstrap/js/bootstrap.js" />"></script>

<!-- Date Picker -->
<script src="<c:url value="/resource/datepicker/js/bootstrap-datepicker.js" />"></script>
<link href="<c:url value="/resource/datepicker/css/datepicker.css" />" rel="stylesheet" media="all">

<!-- Data Table -->
<script src="<c:url value="/resource/datatable/js/jquery.dataTables.js" />"></script>
<link href="<c:url value="/resource/datatable/css/jquery.dataTables.min.css" />" rel="stylesheet">
<link href="<c:url value="/resource/datatable/css/jquery.dataTables_themeroller.css" />" rel="stylesheet">

<title>Employee</title>

<style>
.datepicker{z-index:1151 !important;}
</style>

</head>
<body>
<div class="container">

<input type="hidden" id="emp">
<input type="hidden" id="empname">

 <div class="row">
 	<div class="span12">
            <ul class="nav nav-tabs" id="myTabs">

              <li class="active"><a href="#employee" data-toggle="tab">Employee</a></li>
              <li><a href="#family" data-toggle="tab">Family</a></li>
              <li><a href="#education" data-toggle="tab">Education</a></li>
              <li><a href="#experience" data-toggle="tab">Experience</a></li>
              <li><a href="#ability" data-toggle="tab">Ability</a></li>
              <li><a href="#reference" data-toggle="tab">Reference</a></li>
              <li><a href="#reward" data-toggle="tab">Reward</a></li>
              <li><a href="#history" data-toggle="tab">History</a></li>
              <li><a href="#probation" data-toggle="tab">Probation</a></li>
              <li><a href="#punish" data-toggle="tab">Punish</a></li>
              <li><a href="#leave" data-toggle="tab">Leave</a></li>  
              <li><a href="#skilllanguage" data-toggle="tab">SkillLanguage</a></li>
              <li><a href="#site" data-toggle="tab">Site</a></li>  
              <li><a href="#certification" data-toggle="tab">Certification</a></li>
              <li><a href="#card" data-toggle="tab">Card</a></li>
              <li><a href="#allowances" data-toggle="tab">Allowances</a></li>
              <li><a href="#health" data-toggle="tab">Health</a></li>
             
            </ul>

	</div>
</div>
<div class="tab-content">
	<div class="tab-pane active" id="employee">
    	
<f:form method="post" commandName="employee" class="form-horizontal" role="form" action="${pageContext.request.contextPath}/employee/submit">
<div class="container" style="padding: 0px 0px 25px 0px;">

<!------------------------------------------------------ Start Information-------------------------------------------------------->
		
		<div id="message"></div>
		<div id = "div-information" class="col-md-12" style="padding: 15px 0px 15px 0px;">
				<h2 style="border-bottom: 1px solid #8f8f8f;">Information
					<i style="position: absolute; right: 20px; cursor:pointer;" id = "icon1" class="fa fa-chevron-up"></i>
				</h2>
		 </div>
			 <div class="col-md-12">

							<div class="form-group">
								<div class="col-md-3">
									<label for="id"> ID :</label> <input id="id" name="id" disabled="true" type="text" class="form-control"
									id="id" placeholder="Enter ID">
								</div>
							
								<div class="col-md-3">
									<label for="employee_code"> Employee Code :</label> <input id="employeeCode" name="employeeCode" type="text" class="form-control"
									id="employeeCode" name="employeeCode" placeholder="Enter Employee Code">
								</div>
								
							</div>
							
					
	        </div>
	        
	        
	         <div class="col-md-12">
	         		
							<div class="form-group">
								<div class="col-md-3">
									<label> Name (Thai.) :</label> <input type="text" class="form-control"
									id="nameThai"name="nameThai" placeholder="Enter Name (Thai)">
								</div>
								<div class="col-md-3">
									<label> SurName (Thai.) :</label> <input type="text" class="form-control"
									id="surnameThai" name="surnameThai" placeholder="Enter Surname (Thai)">
								</div>
								<div class="col-md-3">
									<label> NickName (Thai.) :</label> <input type="text" class="form-control"
									id="nicknameThai" name="nicknameThai" placeholder="Enter Nickname (Thai)">
								</div>
							</div>
					
	         </div>
	         
	         <div class="col-md-12">
	         		
							<div class="form-group">
								<div class="col-md-3">
									<label> Name (Eng.) :</label> <input type="text" class="form-control"
									id="nameEng" name="nameEng" placeholder="Enter Name (Eng)">
								</div>
								<div class="col-md-3">
									<label> SurName (Eng.) :</label> <input type="text" class="form-control"
									id="surnameEng" name="surnameEng" placeholder="Enter Surname (Eng)">
								</div>
								<div class="col-md-3">
									<label> NickName (Eng.) :</label> <input type="text" class="form-control"
									id="nicknameEng" name="nicknameEng" placeholder="Enter Nickname (Eng)">
								</div>
							</div>
					
	         </div>
	         
 <!-------------------------------------------------- Start Address-------------------------------------------------->
 
	       <div id = "div-information" class="col-md-12" style="padding: 15px 0px 15px 0px;">
				<h2 style="border-bottom: 1px solid #8f8f8f;">Address
					<i style="position: absolute; right: 20px; cursor:pointer;" id = "icon1" class="fa fa-chevron-up"></i>
				</h2>
	       </div>
	       
	    <div class="col-md-12">
	    <label>Address:</label>
	    <div class="form-group" align="right">
	      <button type="button"class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal">
          Add</button>	
        </div>
        <div id="outputAddress">
	       <table id="tbResult" class ="dataTable stripe">
						<thead>
							<tr>
							    <th>Id</th>
							    <th>IdAddressType</th>
								<th>Type</th> 
								<th>Address</th>
								<th>Address (Cont.)</th>
								<th>IdProvince</th>
								<th>Province</th> 
								<th>Zipcode</th>
								<th>GetIndex</th>
								<th>Edit</th>
								<th>Delete</th>
								<th>Status</th>
								<th>HiddenIndex</th>
							</tr>
						
						</thead>
						
						<tbody>
						
						</tbody>
					</table>
					
	     </div>
	     </div>
	     
 <!----------------------------------------- Start General------------------------------------------------------>
	     
	     <div id = "div-information" class="col-md-12" style="padding: 15px 0px 15px 0px;">
				<h2 style="border-bottom: 1px solid #8f8f8f;">General
					<i style="position: absolute; right: 20px; cursor:pointer;" id = "icon1" class="fa fa-chevron-up"></i>
				</h2>
	       </div>
	     
	     
	      <div class="col-md-12">
	         		
							<div class="form-group">
								<div class="col-md-3">
									<label> Email :</label> <input type="text" class="form-control"
									id="email" name="email" placeholder="Enter Email">
								</div>
								<div class="col-md-3">
									<label> Tel. (Home) :</label> <input type="text" class="form-control"
									id="telHome" name="telHome" placeholder="xx-xxx-xxxx">
								</div>
								<div class="col-md-3">
									<label> Tel. (Mobile) :</label> <input type="text" class="form-control"
									id="telMobile" name="telMobile" placeholder="xxx-xxx-xxxx">
								</div>
								<div class="col-md-3">
									<label> Tel. (Fax) :</label> <input type="text" class="form-control"
									id="telFax" name="telFax" placeholder="xx-xxx-xxxx">
								</div>
							</div>
					
	        </div>
	        
	        <div class="col-md-12">
	         		
							<div class="form-group">
								<div class="col-md-6">
									<label> Health (Congenital Disease) :</label> <input type="text" class="form-control"
									id="congenitalDisease" name="congenitalDisease" placeholder="Enter Congenital Disease">
								</div>
								<div class="col-md-6">
									<label> Hospital :</label> <input type="text" class="form-control"
									id="hospital" name="hospital" placeholder="Enter Hospital">
								</div>
							</div>
					
	        </div>
	        
	         <div class="col-md-12">
	         		
							<div class="form-group">
								<div class="col-md-6">
									<label> Emergency Contact :</label> <input type="text" class="form-control"
									id="emergencyContact" name="emergencyContact" placeholder="Enter Emergency Name">
								</div>
								<div class="col-md-6">
									<label> Relationship with Emergency Contact :</label> <input type="text" class="form-control"
									id="relationshipWithEmergencyContact" name="relationshipWithEmergencyContact" placeholder="Enter Emergency Relation">
								</div>
							</div>
					
	        </div>
	        
	        
	         <div class="col-md-12">
	         		
							<div class="form-group">
								<div class="col-md-6">
									<label> Emergency Contact Address :</label> <input type="text" class="form-control"
									id="emergencyContactAddress" name="emergencyContactAddress" placeholder="Enter Emergency Address">
								</div>
								<div class="col-md-3">
									<label> Emergency Contact Phone Number  :</label> <input type="text" class="form-control"
									id="emergencyContactPhoneNumber" name="emergencyContactPhoneNumber" placeholder="xxx-xxx-xxxx">
								</div>
							</div>
					
	        </div>
	       
	       
	       <div class="col-md-12">
	         		
							<div class="form-group">
								<div class="col-md-3">
									<p><label> Date of Birth :</label> <input type="text" class="form-control"
									id="dateOfBirth" name="dateOfBirth" placeholder="Enter DOB"></p>
								</div>
								<div class="col-md-3">
									<label> Place of Birth :</label> <input type="text" class="form-control"
									id="placeOfBirth" name="placeOfBirth" placeholder="Enter POB">
								</div>
								<div class="col-md-3">
									<label> Age :</label> <input type="text" class="form-control"
									id="age" name="age" placeholder="Enter Age">
								</div>
								<div class="col-md-3">
									<label> Religion :</label> <input type="text" class="form-control"
									id="religion" name="religion" placeholder="Enter Religion">
								</div>
								
							</div>
					
	        </div>
	        
	        
	         <div class="col-md-12">
	         		
							<div class="form-group">
								<div class="col-md-3">
									<label> ID Card :</label> <input type="text" class="form-control"
									id="idCard" name="idCard" placeholder="Enter Id Card">
								</div>
								<div class="col-md-3">
									<label> Issued Office :</label> <input type="text" class="form-control"
									id="issuedOffice" name="issuedOffice" placeholder="Enter Issued Office">
								</div>
								<div class="col-md-3">
									<label> Expiry Date :</label> <input type="text" class="form-control"
									id="expiryDate" name="expiryDate" placeholder="Enter Expiry Date">
								</div>
							</div>
					
	        </div>
	        
	        
	         <div class="col-md-12">
	         		
							<div class="form-group">
								<div class="col-md-3">
									<label> Height (cms.) :</label> <input type="text" class="form-control"
									id="height" name="height" placeholder="Enter Height">
								</div>
								<div class="col-md-3">
									<label> Weigth (kgs.) :</label> <input type="text" class="form-control"
									id="weigth" name="weigth" placeholder="Enter Weigth">
								</div>
							</div>
					
	        </div>
	        
	        
	         <div class="col-md-12">
	         		
							<div class="form-group">
								<div class="col-md-3">
									<label> Sex :</label>
									<div class="radio">
     									 <label><input type="radio" name="sex" >Male</label>
      									 <label><input type="radio" name="sex" >Female</label>
    								</div>
								</div>
    						</div>	
					
	        </div>
	        
	        
	         <div class="col-md-12">
	         		
							<div class="form-group">
								<div class="col-md-3">
									<label> Marital Status :</label>
									<div class="radio">
     									 <label><input type="radio" name="maritalStatus">Single</label> 
      									 <label><input type="radio" name="maritalStatus">Married</label>
      									 <label><input type="radio" name="maritalStatus">Divorce</label>
    								</div>
								</div>
    						</div>	
					
	        </div>
	        
	        
	           <div class="col-md-12">
	         		
							<div class="form-group">
								<div class="col-md-3">
									<label> Number of Children :</label> <input type="text" class="form-control"
									id="numberOfChildren" name="numberOfChildren" placeholder="Enter Number Of Children">
								</div>
								<div class="col-md-3">
									<label> Spouse: Name :</label> <input type="text" class="form-control"
									id="spouseName" name="spouseName" placeholder="Enter Spouse Name">
								</div>
								<div class="col-md-3">
									<label> Marriage certificate No. :</label> <input type="text" class="form-control"
									id="marriageCertificateNo" name="marriageCertificateNo" placeholder="Enter Marriage Cert No.">
								</div>
								<div class="col-md-3">
									<label> Issued Office :</label> <input type="text" class="form-control"
									id="issuedOffice2" name="issuedOffice2" placeholder="Enter Issue Office">
								</div>
							</div>
					
	        </div>
	       
	       
	        <div class="col-md-12">
	         		
							<div class="form-group">
								<div class="col-md-3">
									<label> Address :</label> <input type="text" class="form-control"
									id="address" name="address" placeholder="Enter Address">
								</div>
								<div class="col-md-3">
									<label> Occupation :</label> <input type="text" class="form-control"
									id="occupation" name="occupation" placeholder="Enter Occupation">
								</div>
							</div>
					
	        </div>
	       
	       
	           <div class="col-md-12">
	         		
							<div class="form-group">
								<div class="col-md-3">
									<label> How do you know augmentis? :</label>
									<div class="checkbox">
     									 <label><input type="checkbox" name="knowAugNewspaper">Newspaper</label>
     									 <input type="text" class="form-control" id="descriptionNewspaper" name="descriptionNewspaper" placeholder="Enter Newspaper">
     									 
      									 <label><input type="checkbox" name="knowAugMagazine">Magazine</label>
      									 <input type="text" class="form-control" id="descriptionMagazine" name="descriptionMagazine" placeholder="Enter Magazine">
      									 
      									 <label><input type="checkbox" name="knowAugWebsite">Website</label>
      									 <input type="text" class="form-control" id="descriptionWebsite" name="descriptionWebsite" placeholder="Enter Website">
      									 
      									 <label><input type="checkbox" name="knowAugFriend">Friend</label>
      									 <input type="text" class="form-control" id="descriptionFriend" name="descriptionFriend" placeholder="Enter Friend">
      									 
      									 <label><input type="checkbox" name="knowAugOther">Other (Please specify.)</label>
      									 <input type="text" class="form-control" id="descriptionOther" name="descriptionOther" placeholder="Enter Other">
    								</div>
								</div>
    						</div>	
					
	        </div>
	        
	        
	         <div class="col-md-12">
	         		
							<div class="form-group">
								<div class="col-md-6">
									<label> Do you know anyone now being employed by this company? :</label>
									<div class="checkbox">
     									 <label><input type="checkbox" name="knowEmployedYes">Yes</label>
     									 <input type="text" class="form-control" id="descriptionYes" name="descriptionYes" placeholder="Enter Please write name,position and relation">
    								</div>
    								
    								<div class="checkbox">
     									 <label><input type="checkbox" name="knowEmployerNo">No</label>
    								</div>
								</div>
    						</div>	
					
	        </div>
	        
	        
	        <div class="col-md-12">
	         		
							<div class="form-group">
								
									<label> Have you ever served in the military service? :</label>
    								<div class="checkbox">
     									 <label><input type="checkbox" name="militaryServiceYes">Yes</label>
     								</div>
     								<div class="col-md-3">
    									 <label> From Year :</label>
    									 <input type="text" class="form-control" id="fromYear" name="fromYear" placeholder="Enter From year">
    								</div>
    								<div class="col-md-3">
    									 <label> To Year :</label>
    									 <input type="text" class="form-control" id="toYear" name="toYear" placeholder="Enter To Year">
    								</div>
    								<div class="col-md-3">
    									 <label> Branch of Service :</label>
    									 <input type="text" class="form-control" id="branchOfService" name="branchOfService" placeholder="Enter Branch Of Service">
    								</div>
    								<div class="col-md-3">
     									 <label> Service No :</label>
    									 <input type="text" class="form-control" id="serviceNo" name="serviceNo" placeholder="Enter Service No">
    							    </div>
    						</div>	
					
	        </div>
	        
	        
	         <div class="col-md-12">
	         		
							<div class="form-group">
    								<div class="checkbox">
     									 <label><input type="checkbox" name="litaryServiceNo">No</label>
     								</div>
     								<div class="col-md-6">
    									 <label> Please state the reasons :</label>
    									 <input type="text" class="form-control" id="reasonsNo" name="reasonsNo" placeholder="Enter Reasons">
    								</div>
    								<div class="col-md-3">
    									 <label> Date to be drafted :</label>
    									 <input type="text" class="form-control" id="dateToBeDrafted" name="dateToBeDrafted" placeholder="Enter Date Drafted">
    								</div>
    						</div>	
					
	        </div>
	        
	        
	         <div class="col-md-12">
	         		
							<div class="form-group">
							<br></br>
							<label> May inquiry be made of your previous employers reguarding you character,qualification record of employment? :</label>
								<div class="col-md-6">
									<div class="checkbox">
									 <label><input type="checkbox" name="previousEmployerYes">Yes</label>
    								</div>
    								
    								<div class="checkbox">
     									 <label><input type="checkbox" name="previousEmployerNo">No</label>
     									 <input type="text" class="form-control" id="previousEmpreasonsNo" name="previousEmpreasonsNo" placeholder="Enter Give the reason">
    									
    								</div>
								</div>
    						</div>	
					
	        </div>

	  		         
	 <!---------------------------------------------------------- Start Official--------------------------------------------->   
	      
	    <div id = "div-information" class="col-md-12" style="padding: 15px 0px 15px 0px;">
			<h2 style="border-bottom: 1px solid #8f8f8f;">Official
					<i style="position: absolute; right: 20px; cursor:pointer;" id = "icon1" class="fa fa-chevron-up"></i>
			</h2>
	   </div>
	    <div class="form-group">
	    <div class="col-md-12">
							<div class="col-md-3">
									
								</div>
								<div class="col-md-3">
									
								</div>
								<div class="col-md-3">
									
								</div>
								
			 			<div class="col-md-3">
									<label> Date :</label> <input type="text" class="form-control"
									id="date" name="date" placeholder="Enter Date">
								</div>
			</div>
			</div>
			
			<div class="form-group">
			<div class="col-md-12">	
				<div class="col-md-6">
									<label> Position Applied For :</label> <input type="text" class="form-control"
									id="positionAppliedFor" name="positionAppliedFor" placeholder="Enter Position">
								</div>
								
				<div class="col-md-6">
									<label> Salary Expected :</label> <input type="text" class="form-control"
									id="salaryExpected" name="salaryExpected" placeholder="Enter Salary">
								</div>				
							
							</div>
	   
	    </div>
	     
	     
<!--------------------------------------------------  Official link to table--------------------------------- --> 	    
	    
	    <div class="col-md-12">
	       
				<div class="form-group">
					 <div class="col-md-3">
    					<label>Location :</label>
    						<f:select  path="masLocation.id"  class="form-control">
							 	 <f:option  value="-1" label="--Select Location--" />
  								 <f:options items="${ locationList }"  itemValue="id" itemLabel="name" />
							</f:select>
						</div> 
						
  				</div>
			
	    </div>
	    
	      <div class="col-md-12">
	         
				<div class="form-group">
						<div class="col-md-3">
    						<label> Start Work Date :</label> <input type="text" class="form-control"
									id="startWorkDate" placeholder="Enter Start Work Date">
						</div>
						
						<div class="col-md-3">
    						<label> End Work Date :</label> <input type="text" class="form-control"
									id="endWorkDate" placeholder="Enter End Work Date">
						</div>
  				</div>
			
	    </div>
	    
	     <div class="col-md-12">
	       
				<div class="form-group">
					 <div class="col-md-3">
    					<label>Employment :</label>
    					
    						<f:select  path="masEmployment.id"  class="form-control">
    						
    						<f:option  value="-1" label="--Select Employment--" />
  							<f:options items="${ employmentList }"  itemValue="id" itemLabel="name" />
    						
								
							</f:select>
						</div> 
						
  				</div>
			
	    </div>
	    
	     <div class="col-md-12">
	         
				<div class="form-group">
						<div class="col-md-3">
    						<label>Division :</label>
    						
    						<f:select  path="masDivision.id"  class="form-control">
    						
	    						<f:option  value="-1" label="--Select Division--" />
	  							<f:options items="${ divisionList }"  itemValue="id" itemLabel="name" />
	    						
								
							</f:select>
    						
    						
						</div>
						
						
						<div class="col-md-3">
    						<label>Staff Type :</label>
    						
    						<f:select  path="masStaffType.id"  class="form-control">
    						
	    						<f:option  value="-1" label="--Select Staff Type--" />
	  							<f:options items="${ staffTypeList }"  itemValue="id" itemLabel="name" />
	    						
								
							</f:select>
    						
  				</div>
			
	    </div>
	    </div>
	    
	    <div class="col-md-12">
	         
				<div class="form-group">
						<div class="col-md-3">
    						<label>Joblevel :</label>
    						
    						<f:select  path="masJoblevel.id"  class="form-control" >
    						
	    						<f:option  value="-1" label="--Select Joblevel--" />
	  							<f:options items="${ joblevelList }"  itemValue="id" itemLabel="name" />
	    						
								
							</f:select>
    						
						</div>
						
						<div class="col-md-3">
    						<label>Core Skill :</label>
    						
    						 <f:select  path="masCoreSkill.id"  class="form-control">
    						 
    						 	<f:option  value="-1" label="--Select Core Skill--" />
	  							 <f:options items="${ coreskillList }"  itemValue="id" itemLabel="name" /> 
	    						 
								
							</f:select> 
    						
    						
						</div>
  				</div>
			
	    </div>
	    
	     <div class="col-md-12">
	         
				<div class="form-group">
						<div class="col-md-3">
    						<label>Technology :</label>
    						
    						<f:select  path="technology.id"  class="form-control">
    						 
	    						 <f:option  value="-1" label="--Select Technology--" />
	  							 <f:options items="${ technologyList }"  itemValue="id" itemLabel="name" />
	    						  
								
							</f:select>  
    						
    						
						</div>
						
  				</div>
			
	    </div>
	    
	      <div class="col-md-12">
	         
				<div class="form-group">
				
				<div class="col-md-3">
				<label> AIM :</label>
								<div class="checkbox">
     								<label><input type="checkbox" name="isAIM">isAIM</label>
								</div>
			</div>
				<%-- <div class="form-group">
					
    				<label>AIM :</label>
    				
    				  <f:select  path="aimempid"  class="form-control">
    						 
    						 <f:option  value="-1" label="--Select AIM--" />
  							 <f:options items="${ aimList }"  itemValue="id" itemLabel="name" />
    						  
								
							</f:select>  
    				
						</div> --%>
  				</div>
			
	    </div>
	    
	    
	     <div class="col-md-12">
				<div class="form-group">
						<div class="col-md-3">
						
						<label> Probation Date :</label> <input type="text" class="form-control"
									id="probationDate" placeholder="Enter Probation Date">
						
						</div>
  				</div>
			</div>
			
			
			<div align="center">
				<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
    			<!-- <button type="button" class="btn btn-primary saveButton">Save</button> -->
    			<button type="submit" class="btn btn-primary">Save&Continue</button>
	    	</div>
	    
	</div>
</f:form>   
    
<!----------------------------------------------------------- Modal Address --------------------------------------------------->
		
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">Add Address</h4>
					</div>
					<div class="modal-body">
						
					
						<div class="form-group">
	    					<label>Address Type :</label>
	    
							<div class="form-group">
		 					 <select class="form-control" id="addressType">
								<option value="-1" label="---Select Address Type---" />
								<c:forEach var="obj" items="${ masAddressTypeList }">
									<option value="${obj.id }">${ obj.name}</option>
								</c:forEach>
							</select>
							</div>
	  				
							

							<div class="form-group">
								<label>Address:</label>
								<textarea class="form-control" rows="1" id="address1"></textarea>
							</div>


							<div class="form-group">
								<label>Address(Cont.):</label>
								<textarea class="form-control" rows="1" id="address2"></textarea>
							</div>


						
 			 <div class="form-group">
	    				<label>Province :</label>
	    
	    
						
		 					 <select  class="form-control" id="province">
								<option value="-1" label="---Select Province---" />
								<c:forEach var="obj" items="${ provinceList }">
									<option value="${obj.id }">${ obj.name}</option>
								</c:forEach>
							</select>
						
	  				</div> 

							<div class="form-group">
								<label>Zipcode:</label>
								<textarea class="form-control" rows="1" id="zipcode"></textarea>
							</div>

						
						</div>
						
						<div class="form-group" align="center">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="button" id= "saveAddressButton"class="btn btn-primary saveAddressButton">Save
								changes</button>
						</div>
						
					
					</div>
				</div>
	    	</div>
	</div>    
	 
	    
<!------------------------------------------------- Modal Delete --------------------------------------------->

<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
    <div class="modal-header">
        <h4 class="modal-title" id="deleteModalLabel">Delete Address</h4>
      </div>
      <div class="modal-body">
      	Do you want to delete address ?
      </div>
      <div class="modal-footer">
      <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
      <button type="button"id="yesButton" class="btn btn-primary yesButton">Yes</button>
      </div>
    </div>
  </div>
</div>    
</div>


    <div class="tab-pane" id="family">
      <iframe src="${pageContext.request.contextPath}/family" style="width: 100%; height: 600px; "
            marginwidth="0" marginheight="0" frameborder="0"
            vspace="0" hspace="0">

      </iframe>
    </div>
              

    <div class="tab-pane" id="education">
      <iframe src="${pageContext.request.contextPath}/education" style="width: 100%; height: 600px; "
            marginwidth="0" marginheight="0" frameborder="0"
            vspace="0" hspace="0"></iframe>
    </div>

    <div class="tab-pane" id="experience">
      <iframe src="${pageContext.request.contextPath}/experience" style="width: 100%; height: 600px; "
            marginwidth="0" marginheight="0" frameborder="0"
            vspace="0" hspace="0"></iframe>
    </div>


    <div class="tab-pane" id="ability">
      <iframe src="${pageContext.request.contextPath}/ability" style="width: 100%; height: 600px; "
            marginwidth="0" marginheight="0" frameborder="0"
            vspace="0" hspace="0"></iframe>
    </div>

    <div class="tab-pane" id="reference">
      <iframe src="${pageContext.request.contextPath}/reference" style="width: 100%; height: 600px; "
            marginwidth="0" marginheight="0" frameborder="0"
            vspace="0" hspace="0" scrolling="no"></iframe>
    </div>

    <div class="tab-pane" id="reward">
      <iframe src="${pageContext.request.contextPath}/reward" style="width: 100%; height: 600px; "
            marginwidth="0" marginheight="0" frameborder="0"
            vspace="0" hspace="0" scrolling="no"></iframe>
    </div>

    <div class="tab-pane" id="history">
        <iframe src="${pageContext.request.contextPath}/history" style="width: 100%; height: 600px; "
            marginwidth="0" marginheight="0" frameborder="0"
            vspace="0" hspace="0"></iframe>
    </div>

    <div class="tab-pane" id="probation">
      <iframe src="${pageContext.request.contextPath}/probation" style="width: 100%; height: 600px; "
            marginwidth="0" marginheight="0" frameborder="0"
            vspace="0" hspace="0"></iframe>
    </div>


    <div class="tab-pane" id="punish">
        <iframe src="${pageContext.request.contextPath}/punish" style="width: 100%; height: 600px; "
            marginwidth="0" marginheight="0" frameborder="0"
            vspace="0" hspace="0" scrolling="no"></iframe>
    </div>
    
    <div class="tab-pane" id="leave">
                  <iframe src="${pageContext.request.contextPath}/leave" style="width: 100%; height: 600px; " 
		marginwidth="0" marginheight="0" frameborder="0"
		vspace="0" hspace="0"></iframe>
              </div>

	<div class="tab-pane" id="skilllanguage">
		<iframe src="${pageContext.request.contextPath}/skilllanguage"
			style="width: 100%; height: 600px;" marginwidth="0"
			marginheight="0" frameborder="0" vspace="0" hspace="0"></iframe>
	</div>

	<div class="tab-pane" id="site">
		<iframe src="${pageContext.request.contextPath}/site"
			style="width: 100%; height: 600px;" marginwidth="0"
			marginheight="0" frameborder="0" vspace="0" hspace="0"></iframe>
	</div>

	<div class="tab-pane" id="certification">
		<iframe src="${pageContext.request.contextPath}/certification"
			style="width: 100%; height: 600px;" marginwidth="0"
			marginheight="0" frameborder="0" vspace="0" hspace="0"></iframe>
	</div>
	
	 <div class="tab-pane" id="card">
		<iframe src="${pageContext.request.contextPath}/card"
			style="width: 100%; height: 600px;" marginwidth="0"
			marginheight="0" frameborder="0" vspace="0" hspace="0" scrolling="no"></iframe>
	</div>
	

	<div class="tab-pane" id="allowances">
		<iframe src="${pageContext.request.contextPath}/allowances"
			style="width: 100%; height: 600px;" marginwidth="0"
			marginheight="0" frameborder="0" vspace="0" hspace="0"></iframe>
	</div>

	 <div class="tab-pane" id="health">
      <iframe src="${pageContext.request.contextPath}/health" style="width: 100%; height: 600px; "
            marginwidth="0" marginheight="0" frameborder="0"
            vspace="0" hspace="0">

      </iframe>
    </div>

</div>  
            
            
        

</div>

<!---------------------------------------------------------- Start JQuery ----------------------------------------------------->	  
	    
<script type="text/javascript">
var dt;
var rowUpdate;
var dataUpdate;
var getIndex = 0;

	$(document).ready(function() {
		var date1 = $( "#dateOfBirth" ).datepicker({
			clearBtn : true,
			autoclose : true,
			forceParse : false,
			language : "en",
			format : "dd/mm/yyyy",
			todayHighlight : true
		});
		
    	var date2 = $( "#expiryDate" ).datepicker({
			clearBtn : true,
			autoclose : true,
			forceParse : false,
			language : "en",
			format : "dd/mm/yyyy",
			todayHighlight : true
		});
    	
    	var date3 = $( "#fromYear" ).datepicker({
			clearBtn : true,
			autoclose : true,
			forceParse : false,
			language : "en",
			format : "dd/mm/yyyy",
			todayHighlight : true
		});
    	
    	var date4 = $( "#toYear" ).datepicker({
			clearBtn : true,
			autoclose : true,
			forceParse : false,
			language : "en",
			format : "dd/mm/yyyy",
			todayHighlight : true
		});
    	
    	var date5 = $( "#dateToBeDrafted" ).datepicker({
			clearBtn : true,
			autoclose : true,
			forceParse : false,
			language : "en",
			format : "dd/mm/yyyy",
			todayHighlight : true
		});
    	
    	var date6 = $( "#date" ).datepicker({
			clearBtn : true,
			autoclose : true,
			forceParse : false,
			language : "en",
			format : "dd/mm/yyyy",
			todayHighlight : true
		});
    	
    	var date6 = $( "#startWorkDate" ).datepicker({
			clearBtn : true,
			autoclose : true,
			forceParse : false,
			language : "en",
			format : "dd/mm/yyyy",
			todayHighlight : true
		});
    	
    	var date6 = $( "#endWorkDate" ).datepicker({
			clearBtn : true,
			autoclose : true,
			forceParse : false,
			language : "en",
			format : "dd/mm/yyyy",
			todayHighlight : true
		});
    	
    	var date6 = $( "#probationDate" ).datepicker({
			clearBtn : true,
			autoclose : true,
			forceParse : false,
			language : "en",
			format : "dd/mm/yyyy",
			todayHighlight : true
		});
    	
		
    	dt=$("#tbResult").dataTable(
    			{ "columnDefs": [
    	    	                 {
    	    	                     "targets": [ 0 ],
    	    	                     "visible": false
    	    	                 },
    	    	                 {
    	    	                     "targets": [ 1 ],
    	    	                     "visible": false
    	    	                 },
    	    	                 
    	    	                 {
    	    	                     "targets": [ 5 ],
    	    	                     "visible": false
    	    	                 }
    	    	                 
    	    	                /*  {
    	    	                     "targets": [ 8 ],
    	    	                     "visible": false
    	    	                 },
    	    	                 
    	    	                 {
    	    	                     "targets": [ 12 ],
    	    	                     "visible": false
    	    	                 } */
    	    	             ]
    			
    			});
 		//listAll();
 		
 		
 		
 		
 		
 		var button = $(event.relatedTarget);
    	var addId = button.data("addid"); 
    	var buttonemp = $(event.relatedTarget);
    	var empId = button.data("empid"); 
  		$(this).find(".saveButton").off("click").on("click", function()
  		
  				
    		{
    			if(empId != null){
    				editEmployee();
    			}
    			else {
    				addEmployee();
    			}
    			
    		});
  		
  		
  		
  		$(this).find(".saveAddressButton").off("click").on("click", function()
  				
  				{
			
				addAddress();
			
			
		});
  		
  		
 /* --------------------------------------------------- Clear Address Function --------------------------------------------------- */	  		
  		function clearDataModal(){
  			
  			$('#addressType').val(-1);
  			$('#address1').val('');
  			$('#address2').val('');
  			$("#province").val(-1);
  			$('#zipcode').val('');
  			
  		}
/* --------------------------------------------------- Add Employee Function --------------------------------------------------- */	
    	
			function addEmployee() {
	alert("add");
    			$.ajax({
    				url : "${pageContext.request.contextPath}/employee/add",
    				type : "POST",
    				 data : JSON.stringify({
    					 nameThai: $("#nameThai").val(),
    					 surnameThai: $("#surnameThai").val(),
    					 nicknameThai: $("#nicknameThai").val(),
    					 nameEng: $("#nameEng").val(),
    					 surnameEng: $("#surnameEng").val(),
    					 nicknameEng: $("#nicknameEng").val(),
    					 telHome: $("#telHome").val(),
    					 telMobile: $("#telMobile").val(),
    					 telFax: $("#telFax").val(),
    					 emergencyContact: $("#emergencyContact").val(),
    					 relationshipWithEmergencyContact: $("#relationshipWithEmergencyContact").val(),
    					 emergencyContactAddress: $("#emergencyContactAddress").val(),
    					 emergencyContactPhoneNumber: $("#emergencyContactPhoneNumber").val(),
    					 dateOfBirth: $("#dateOfBirth").val(),
    					 placeOfBirth: $("#placeOfBirth").val(),
    					 age: $("#age").val(),
    					 religion: $("#religion").val(),
    					 idCard: $("#idCard").val(),
    					 issuedOffice: $("#issuedOffice").val(),
    					 expiryDate: $("#expiryDate").val(),
    					 height: $("#height").val(),
    					 weigth: $("#weigth").val(),
    					 sex: $("#sex").val(),
    					 maritalStatus: $("#maritalStatus").val(),
    					 numberOfChildren: $("#numberOfChildren").val(),
    					 spouseName: $("#spouseName").val(),
    					 marriageCertificateNo: $("#marriageCertificateNo").val(),
    					 issuedOffice2: $("#issuedOffice2").val(),
    					 address: $("#address").val(),
    					 occupation: $("#occupation").val(),
    					 knowAugNewspaper: $("#knowAugNewspaper").val(),
    					 descriptionNewspaper: $("#descriptionNewspaper").val(),
    					 knowAugMagazine: $("#knowAugMagazine").val(),
    					 descriptionMagazine: $("#descriptionMagazine").val(),
    					 knowAugWebsite: $("#knowAugWebsite").val(),
    					 descriptionWebsite: $("#descriptionWebsite").val(),
    					 knowAugFriend: $("#knowAugFriend").val(),
    					 descriptionFriend: $("#descriptionFriend").val(),
    					 knowAugOther: $("#knowAugOther").val(),
    					 descriptionOther: $("#descriptionOther").val(),
    					 knowEmployedYes: $("#knowEmployedYes").val(),
    					 descriptionYes: $("#descriptionYes").val(),
    					 knowEmployerNo: $("#knowEmployerNo").val(),
    					 militaryServiceYes: $("#militaryServiceYes").val(),
    					 fromYear: $("#fromYear").val(),
    					 toYear: $("#toYear").val(),
    					 branchOfService: $("#branchOfService").val(),
    					 serviceNo: $("#serviceNo").val(),
    					 militaryServiceNo: $("#militaryServiceNo").val(),
    					 reasonsNo: $("#reasonsNo").val(),
    					 dateToBeDrafted: $("#dateToBeDrafted").val(),
    					 previousEmployerYes: $("#previousEmployerYes").val(),
    					 previousEmployerNo: $("#previousEmployerNo").val(),
    					 previousEmpreasonsNo: $("#previousEmpreasonsNo").val(),
    					 
    			
    					}),
    				 datatype: "json",
    				 contentType: "application/json",
    				success : function(data) {
    					$("#message").html('<div class="alert alert-success" role="alert">Success</div>');
    					
    					window.parent.document.getElementById('emp').value=data.id;
    					window.parent.document.getElementById('empname').value=data.nameEng;
    					
    					/* dt.fnClearTable();
    					dt.fnAddData([
    					       data.id,
    					       data.employeeCode,
    					       data.nameThai,
    					       data.surnameThai,
    					       data.nicknameThai,
    					       data.nameEng,
    					       data.surnameEng,
    					       data.nicknameEng,
    					       data.telHome,
    					       data.telMobile,
    					       data.telFax,
    					       data.emergencyContact,
    					       data.relationshipWithEmergencyContact,
    					       data.emergencyContactAddress,
    					       data.emergencyContactPhoneNumber,
    					       data.dateOfBirth,
    					       data.placeOfBirth,
    					       data.age,
    					       data.religion,
    					       data.idCard,
    					       data.issuedOffice,
    					       data.expiryDate,
    					       data.height,
    					       data.weigth,
    					       data.sex,
    					       data.maritalStatus,
    					       data.numberOfChildren,
    					       data.spouseName,
    					       data.marriageCertificateNo,
    					       data.issuedOffice2,
    					       data.address,
    					       data.occupation,
    					       data.knowAugNewspaper,
    					       data.descriptionNewspaper,
    					       data.knowAugMagazine,
    					       data.descriptionMagazine,
    					       data.knowAugWebsite,
    					       data.descriptionWebsite,
    					       data.knowAugFriend,
    					       data.descriptionFriend,
    					       data.knowAugOther,
    					       data.descriptionOther,
    					       data.knowEmployedYes,
    					       data.descriptionYes,
    					       data.knowEmployerNo,
    					       data.militaryServiceYes,
    					       data.fromYear,
    					       data.toYear,
    					       data.branchOfService,
    					       data.serviceNo,
    					       data.militaryServiceNo,
    					       data.reasonsNo,
    					       data.dateToBeDrafted,
    					       data.previousEmployerYes,
    					       data.previousEmployerNo,
    					       data.previousEmpreasonsNo,
    					       
    					    '<button type="button" class="btn btn-info btn-sm active" data-empId="' + data.id + '" data-target="#addModal" data-toggle="modal">Edit</button>',
   	    					'<button type="button" class="btn btn-danger btn-sm active" data-empId="' + data.id + '" data-target="#deleteModal" data-toggle="modal">Delete</button>'
    					              
						]);               */
    					              
    				},
    				error : function(data,testStatus,jqXHR) {
    					$("#message").html('<div class="alert alert-danger" role="alert">Error</div>');
    					}
    				});
    		}
    		
    		
/* --------------------------------------------------- Edit Employee Function --------------------------------------------------- */		
    		
    		function editEmployee() {
    			alert(empId+" edit");
				$.ajax({
					url : "${pageContext.request.contextPath}/employee/edit",
					type : "POST",
					data : JSON.stringify({
						 id: empId,
						 nameThai: $("#nameThai").val(),
    					 surnameThai: $("#surnameThai").val(),
    					 nicknameThai: $("#nicknameThai").val(),
    					 nameEng: $("#nameEng").val(),
    					 surnameEng: $("#surnameEng").val(),
    					 nicknameEng: $("#nicknameEng").val(),
    					 telHome: $("#telHome").val(),
    					 telMobile: $("#telMobile").val(),
    					 telFax: $("#telFax").val(),
    					 emergencyContact: $("#emergencyContact").val(),
    					 relationshipWithEmergencyContact: $("#relationshipWithEmergencyContact").val(),
    					 emergencyContactAddress: $("#emergencyContactAddress").val(),
    					 emergencyContactPhoneNumber: $("#emergencyContactPhoneNumber").val(),
    					 dateOfBirth: $("#dateOfBirth").val(),
    					 placeOfBirth: $("#placeOfBirth").val(),
    					 age: $("#age").val(),
    					 religion: $("#religion").val(),
    					 idCard: $("#idCard").val(),
    					 issuedOffice: $("#issuedOffice").val(),
    					 expiryDate: $("#expiryDate").val(),
    					 height: $("#height").val(),
    					 weigth: $("#weigth").val(),
    					 sex: $("#sex").val(),
    					 maritalStatus: $("#maritalStatus").val(),
    					 numberOfChildren: $("#numberOfChildren").val(),
    					 spouseName: $("#spouseName").val(),
    					 marriageCertificateNo: $("#marriageCertificateNo").val(),
    					 issuedOffice2: $("#issuedOffice2").val(),
    					 address: $("#address").val(),
    					 occupation: $("#occupation").val(),
    					 knowAugNewspaper: $("#knowAugNewspaper").val(),
    					 descriptionNewspaper: $("#descriptionNewspaper").val(),
    					 knowAugMagazine: $("#knowAugMagazine").val(),
    					 descriptionMagazine: $("#descriptionMagazine").val(),
    					 knowAugWebsite: $("#knowAugWebsite").val(),
    					 descriptionWebsite: $("#descriptionWebsite").val(),
    					 knowAugFriend: $("#knowAugFriend").val(),
    					 descriptionFriend: $("#descriptionFriend").val(),
    					 knowAugOther: $("#knowAugOther").val(),
    					 descriptionOther: $("#descriptionOther").val(),
    					 knowEmployedYes: $("#knowEmployedYes").val(),
    					 descriptionYes: $("#descriptionYes").val(),
    					 knowEmployerNo: $("#knowEmployerNo").val(),
    					 militaryServiceYes: $("#militaryServiceYes").val(),
    					 fromYear: $("#fromYear").val(),
    					 toYear: $("#toYear").val(),
    					 branchOfService: $("#branchOfService").val(),
    					 serviceNo: $("#serviceNo").val(),
    					 militaryServiceNo: $("#militaryServiceNo").val(),
    					 reasonsNo: $("#reasonsNo").val(),
    					 dateToBeDrafted: $("#dateToBeDrafted").val(),
    					 previousEmployerYes: $("#previousEmployerYes").val(),
    					 previousEmployerNo: $("#previousEmployerNo").val(),
    					 previousEmpreasonsNo: $("#previousEmpreasonsNo").val(),
    					  
					 }),
					datatype: "json",
					contentType: "application/json",
					success : function(data) {
						$("#message").html('<div class="alert alert-success" role="alert">Success</div>');
						dt.fnClearTable();
    					/* dt.fnAddData([
    					       data.id,
    					       data.employeeCode,
    					       data.nameThai,
    					       data.surnameThai,
    					       data.nicknameThai,
    					       data.nameEng,
    					       data.surnameEng,
    					       data.nicknameEng,
    					       data.telHome,
    					       data.telMobile,
    					       data.telFax,
    					       data.emergencyContact,
    					       data.relationshipWithEmergencyContact,
    					       data.emergencyContactAddress,
    					       data.emergencyContactPhoneNumber,
    					       data.dateOfBirth,
    					       data.placeOfBirth,
    					       data.age,
    					       data.religion,
    					       data.idCard,
    					       data.issuedOffice,
    					       data.expiryDate,
    					       data.height,
    					       data.weigth,
    					       data.sex,
    					       data.maritalStatus,
    					       data.numberOfChildren,
    					       data.spouseName,
    					       data.marriageCertificateNo,
    					       data.issuedOffice2,
    					       data.address,
    					       data.occupation,
    					       data.knowAugNewspaper,
    					       data.descriptionNewspaper,
    					       data.knowAugMagazine,
    					       data.descriptionMagazine,
    					       data.knowAugWebsite,
    					       data.descriptionWebsite,
    					       data.knowAugFriend,
    					       data.descriptionFriend,
    					       data.knowAugOther,
    					       data.descriptionOther,
    					       data.knowEmployedYes,
    					       data.descriptionYes,
    					       data.knowEmployerNo,
    					       data.militaryServiceYes,
    					       data.fromYear,
    					       data.toYear,
    					       data.branchOfService,
    					       data.serviceNo,
    					       data.militaryServiceNo,
    					       data.reasonsNo,
    					       data.dateToBeDrafted,
    					       data.previousEmployerYes,
    					       data.previousEmployerNo,
    					       data.previousEmpreasonsNo, */
    					       
    					/*     '<button type="button" class="btn btn-info btn-sm active" data-empId="' + data.id + '" data-target="#addModal" data-toggle="modal">Edit</button>',
   	    					'<button type="button" class="btn btn-danger btn-sm active" data-empId="' + data.id + '" data-target="#deleteModal" data-toggle="modal">Delete</button>'
    					              
						]);  */             
					},
					error : function(data,testStatus,jqXHR) {
						
						$("#message").html('<div class="alert alert-danger" role="alert">Error</div>');
						}
					});
			}
			
			
   	/* ----------------------------------------------------- Add Address Function --------------------------------------------------- */		
			
			function addAddress() {
				alert("Do you want to Add Address ?");
				
				
				
    			/* $.ajax({
    				url : "${pageContext.request.contextPath}/employee/addAddress",
    				type : "POST",
    				 data : JSON.stringify({
    					 
    					 addressType : {id:$("#addressType").val(), name: $("#addressType option:selected").text()},
    					 address1: $("#address1").val(),
    					 address2: $("#address2").val(),
    					 province :{id:$("#province").val(), name: $("#province option:selected").text()},
    					 zipcode: $("#zipcode").val(),
    					 
    				 }),
    				 
    			 datatype: "json",
    			 contentType: "application/json",
    			 success : function(data) {
    					//$("#message").html('<div class="alert alert-success" role="alert">Success Address</div>');
    					alert("kkk");
    					dt.fnAddData([
    					              data.addressType.name,
    					              data.address1,
    					              data.address2,
    					              data.province.name,
    					              data.zipcode,
    					              
    					              
    					              
    				 '<button type="button" class="btn btn-info btn-sm active" data-addId="' + data.id + '" data-target="#addModal" data-toggle="modal">Edit</button>',
    			   	 '<button type="button" class="btn btn-danger btn-sm active" data-addId="' + data.id + '" data-target="#deleteModal" data-toggle="modal">Delete</button>'
    				
    			   	 ]);
    					
    					$('#myModal').modal('toggle');
   	
    			 },
 				error : function(data,testStatus,jqXHR) {
 					$("#message").html('<div class="alert alert-danger" role="alert">Error</div>');
 					}
 				}); */
 		
 				 var addressId = $("#addressType").val();
				 var addressType = $("#addressType option:selected").text();
				 
				 var address1 = $("#address1").val();
				 var address2 = $("#address2").val();
				 
				 var provinceId = $("#province").val();
				 var province = $("#province option:selected").text();
				 
				 var zipcode= $("#zipcode").val();
				 
				 var id=0;
				 var status="add";
				 
				//alert("addressType: "+addressType+" address1: "+address1+" address2: "+address2+" province: "+province+" zipcode: "+zipcode);
				//alert("Do you want to Add Address ?");
				 
				  dt.fnAddData([  id, 
				                  addressId,
				                  addressType,
					              address1,
					              address2,
					              provinceId,
					              province,
					              zipcode,
					              getIndex,
					              
					              '<button id="edit" type="button" class="btn btn-info btn-sm active"  data-target="#addModal" data-toggle="modal">Edit</button>',
				    			  '<button id="delete" type="button" class="btn btn-danger btn-sm active" data-target="#deleteModal" data-toggle="modal">Delete</button>',
				    			  status,
				    			  '<input id="dataaddressid'+getIndex+'" type ="text" name = "addresses['+getIndex+'].id" value="'+id+'">'+
				    			  '<input id="dataaddresstype'+getIndex+'"type ="text" name = "addresses['+getIndex+'].addressTypeId" value="'+addressId+'">'+
				    			  '<input id="dataaddress1'+getIndex+'"type ="text" name = "addresses['+getIndex+'].address1" value="'+address1+'">'+
				    			  '<input id="dataaddress2'+getIndex+'"type ="text" name = "addresses['+getIndex+'].address2" value="'+address2+'">'+
				    			  '<input id="dataprovinceid'+getIndex+'"type ="text" name = "addresses['+getIndex+'].provinceId" value="'+provinceId+'">'+
				    			  '<input id="datazipcode'+getIndex+'"type ="text" name = "addresses['+getIndex+'].zipcode" value="'+zipcode+'">'+
				    			  '<input id="datastatus'+getIndex+'"type ="text" name = "addresses['+getIndex+'].status" value="'+status+'">'
				    			  
				    				
			   	 ]); 
				  
				  				getIndex = getIndex+1; 
				
				 
				  $('#myModal').modal('toggle');
				  clearDataModal();
   	
   	    }
   	
   	
/* ----------------------------------------------------- Edit Address Function --------------------------------------------------- */		
		 	
			$('#tbResult tbody').on( 'click', '#edit', function (){		   
		    	
				//alert("Do you want to Add Address ?");
				
		    	  rowUpdate = $(this).parents('tr');
		    	  dataUpdate = dt.fnGetData($(this).parents('tr'));
		    	  //alert("data[1]: "+dataUpdate[1]); 
		    	
		    	  editAddress(rowUpdate,dataUpdate);
		    	    	  
		  }); 
   	
   	
			 //transection.push({id:id,address:{id:datarow[0],firstName:arrName[0],lastName:arrName[1],age:datarow[2],gender:datarow[3],mobile:datarow[5],address:datarow[6],occupation:datarow[4],position:datarow[7],relation:datarow[8],status:datarow[10]}});

   	
   	function editAddress(rowUpdate,dataUpdate){
   		
   		$('#myModal').modal('show');
   		
   		$("#addressType").val(dataUpdate[1]);
   		$("#address1").val(dataUpdate[3]);
   		$("#address2").val(dataUpdate[4]);
   		$("#province").val(dataUpdate[5]);
   		$("#zipcode").val(dataUpdate[7]);
   		
   		
   		$('#saveAddressButton').off("click").on("click",function(){
   			
   		var id = dataUpdate[0];	
   		var addressId = $("#addressType").val();
		var addressType = $("#addressType option:selected").text();
		
   		var address1 = $("#address1").val();
   		var address2 = $("#address2").val();
   		
   	   var provinceId = $("#province").val();
	   var province = $("#province option:selected").text();
	   var zipcode= $("#zipcode").val();
	   
   		
   		
   		
   		if(dataUpdate[0]!=0){
   			
   			dt.fnUpdate(addressId, rowUpdate, 1);
   			dt.fnUpdate(addressType, rowUpdate, 2);
		    dt.fnUpdate(address1, rowUpdate, 3);
		    dt.fnUpdate(address2, rowUpdate, 4);
		    dt.fnUpdate(provinceId, rowUpdate, 5);
		    dt.fnUpdate(province, rowUpdate, 6);
		    dt.fnUpdate(zipcode, rowUpdate, 7);
		    dt.fnUpdate('edit', rowUpdate, 11);
		    
		    $("#dataaddressid"+dataUpdate[8]).attr('name', "addresses["+dataUpdate[8]+"].id");
		    $("#dataaddressid"+dataUpdate[8]).val(addressId);
		    
		    $("#dataaddresstype"+dataUpdate[8]).attr('name', "addresses["+dataUpdate[8]+"].addressTypeId");
		    $("#dataaddresstype"+dataUpdate[8]).val(addressType);
		    
		    $("#dataaddress1"+dataUpdate[8]).attr('name', "addresses["+dataUpdate[8]+"].address1");
		    $("#dataaddress1"+dataUpdate[8]).val(address1);
		    
		    $("#dataaddress2"+dataUpdate[8]).attr('name', "addresses["+dataUpdate[8]+"].address2");
		    $("#dataaddress2"+dataUpdate[8]).val(address2);
		    
		    $("#dataprovinceid"+dataUpdate[8]).attr('name', "addresses["+dataUpdate[8]+"].provinceId");
		    $("#dataprovinceid"+dataUpdate[8]).val(provinceId);
		    
		
		    $("#datazipcode"+dataUpdate[8]).attr('name', "addresses["+dataUpdate[8]+"].zipcode");
		    $("#datazipcode"+dataUpdate[8]).val(zipcode);
		    
		    $("#datastatus"+dataUpdate[8]).attr('name', "addresses["+dataUpdate[8]+"].status");
		    $("#datastatus"+dataUpdate[8]).val('edit');
	    	
		    
   	 }else{
   		 
   		dt.fnUpdate(addressId, rowUpdate, 1);
	    dt.fnUpdate(addressType, rowUpdate, 2);
	    dt.fnUpdate(address1, rowUpdate, 3);
	    dt.fnUpdate(address2, rowUpdate, 4);
	    dt.fnUpdate(provinceId, rowUpdate, 5);
	    dt.fnUpdate(province, rowUpdate, 6);
	    dt.fnUpdate(zipcode, rowUpdate, 7);
	    
	    $("#dataaddressid"+dataUpdate[8]).attr('name', "addresses["+dataUpdate[8]+"].id");
	    $("#dataaddressid"+dataUpdate[8]).val(addressId);
	    
	    $("#dataaddresstype"+dataUpdate[8]).attr('name', "addresses["+dataUpdate[8]+"].addressTypeId");
	    $("#dataaddresstype"+dataUpdate[8]).val(addressType);
	    
	    $("#dataaddress1"+dataUpdate[8]).attr('name', "addresses["+dataUpdate[8]+"].address1");
	    $("#dataaddress1"+dataUpdate[8]).val(address1);
	    
	    $("#dataaddress2"+dataUpdate[8]).attr('name', "addresses["+dataUpdate[8]+"].address2");
	    $("#dataaddress2"+dataUpdate[8]).val(address2);
	    
	    $("#dataprovinceid"+dataUpdate[8]).attr('name', "addresses["+dataUpdate[8]+"].provinceId");
	    $("#dataprovinceid"+dataUpdate[8]).val(provinceId);
	    
	
	    $("#datazipcode"+dataUpdate[8]).attr('name', "addresses["+dataUpdate[8]+"].zipcode");
	    $("#datazipcode"+dataUpdate[8]).val(zipcode);
   	 }
   		
   		$('#myModal').modal('toggle');
   		
   	
   		});
   	
   	
   	}
   	
   	
   	
   	$('#tbResult tbody').on( 'click', '#delete', function (){	
   		
   	  var row = $(this).parents('tr');
      var dataDelete = dt.fnGetData($(this).parents('tr'));
      if(dataDelete[0]==0){
   	  
	   	 $('#yesButton').off("click").on("click",function(){ 
	   	  
		  dt.fnDeleteRow(row);
		  $('#deleteModal').modal('toggle');
	   	});
	 		
      }else{
    	  
    	  $('#yesButton').off("click").on("click",function(){ 
	    	  dt.fnUpdate('delete', row, 11);
	    	  $("#datastatus"+dataDelete[8]).attr('name', "addresses["+dataUpdate[8]+"].status");
			  $("#datastatus"+dataDelete [8]).val('delete');
    	 	});
      }
   	 
   	 
   	clearDataModal();
 });
   	
   	
   	
   	
   	
   	
   		function listAddress(){
   			$.ajax({
				url : "${pageContext.request.contextPath}/employee/listAll",
				type : "POST",
				success : function(data) {
					dt.fnClearTable();
				for (var i=0;i< data.length; i++) {
					dt.fnAddData([data[i].id,
					              data[i].addressType.name,
					              data[i].address1,
					              data[i].address2, 
					              data[i].zipcode,
						'<button id="edit" type="button" class="btn btn-info btn-sm active" data-addId="' + data[i].id + '" data-target="#addModal" data-toggle="modal">Edit</button>',
						'<button id="delete" type="button" class="btn btn-danger btn-sm active" data-addId="' + data[i].id + '" data-target="#deleteModal" data-toggle="modal">Delete</button>',
						           "unmodified",
						'<input id="dataaddress'+getIndex+'"type ="text" name = "addresses['+getIndex+'].id" value="'+id+'">'+
					    '<input id="dataaddress'+getIndex+'"type ="text" name = "addresses['+getIndex+'].addressTypeId" value="'+addressType+'">'+
					    '<input id="dataaddress'+getIndex+'"type ="text" name = "addresses['+getIndex+'].address1" value="'+address1+'">'+
					    '<input id="dataaddress'+getIndex+'"type ="text" name = "addresses['+getIndex+'].address2" value="'+address2+'">'+
					    '<input id="dataaddress'+getIndex+'"type ="text" name = "addresses['+getIndex+'].provinceId" value="'+provinceId+'">'+
					    '<input id="dataaddress'+getIndex+'"type ="text" name = "addresses['+getIndex+'].zipcode" value="'+zipcode+'">'+
					    '<input id="dataaddress'+getIndex+'"type ="text" name = "addresses['+getIndex+'].status" value="'+status+'">']);
					
						getIndex = getIndex+1; 
			
					}
				},
				
				
				error : function(data,testStatus,jqXHR) {
					$("#outputajax").text(testStatus);
					}
				}); 
		}
	
	});
			
			
  /* ---------------------------------------------------- Init Edit Function --------------------------------------------------- */				
			
			function initEditEmployee(empId) {
				alert(empId+" Init edit");
				$.ajax({
					url : "${pageContext.request.contextPath}/employee/initEdit/"+empId,
					type : "POST",
					success : function(data) {
						$("#nameThai").val(data.nameThai);
						$("#surnameThai").val(data.surnameThai);
						$("#nicknameThai").val(data.nicknameThai);
						$("#nameEng").val(data.nameEng);
						$("#surnameEng").val(data.surnameEng);
						$("#nicknameEng").val(data.nicknameEng);
						$("#telHome").val(data.telHome);
						$("#telMobile").val(data.telMobile);
						$("#telFax").val(data.telFax);
						$("#emergencyContact").val(data.emergencyContact);
						$("#relationshipWithEmergencyContact").val(data.relationshipWithEmergencyContact);
						$("#emergencyContactAddress").val(data.emergencyContactAddress);
						$("#emergencyContactPhoneNumber").val(data.emergencyContactPhoneNumber);
						$("#dateOfBirth").val(data.dateOfBirth);
						$("#placeOfBirth").val(data.placeOfBirth);
						$("#age").val(data.age);
						$("#religion").val(data.religion);
						$("#idCard").val(data.idCard);
						$("#issuedOffice").val(data.issuedOffice);
						$("#expiryDate").val(data.expiryDate);
						$("#height").val(data.height);
						$("#weigth").val(data.weigth);
						$("#sex").val(data.sex);
						$("#maritalStatus").val(data.maritalStatus);
						$("#numberOfChildren").val(data.numberOfChildren);
						$("#spouseName").val(data.spouseName);
						$("#marriageCertificateNo").val(data.marriageCertificateNo);
						$("#issuedOffice2").val(data.issuedOffice2);
						$("#address").val(data.address);
						$("#occupation").val(data.occupation);
						$("#knowAugNewspaper").val(data.knowAugNewspaper);
						$("#descriptionNewspaper").val(data.descriptionNewspaper);
						$("#knowAugMagazine").val(data.knowAugMagazine);
						$("#descriptionMagazine").val(data.descriptionMagazine);
						$("#knowAugWebsite").val(data.knowAugWebsite);
						$("#descriptionWebsite").val(data.descriptionWebsite);
						$("#knowAugFriend").val(data.knowAugFriend);
						$("#descriptionFriend").val(data.descriptionFriend);
						$("#knowAugOther").val(data.knowAugOther);
						$("#descriptionOther").val(data.descriptionOther);
						$("#knowEmployedYes").val(data.knowEmployedYes);
						$("#descriptionYes").val(data.descriptionYes);
						$("#knowEmployerNo").val(data.knowEmployerNo);
						$("#militaryServiceYes").val(data.militaryServiceYes);
						$("#fromYear").val(data.fromYear);
						$("#toYear").val(data.toYear);
						$("#branchOfService").val(data.branchOfService);
						$("#serviceNo").val(data.serviceNo);
						$("#militaryServiceNo").val(data.militaryServiceNo);
						$("#reasonsNo").val(data.reasonsNo);
						$("#dateToBeDrafted").val(data.dateToBeDrafted);
						$("#previousEmployerYes").val(data.previousEmployerYes);
						$("#previousEmployerNo").val(data.previousEmployerNo);
						$("#previousEmpreasonsNo").val(data.previousEmpreasonsNo);
						
						 
		
					},
					error : function(data,testStatus,jqXHR) {
						$("#message").html('<div class="alert alert-danger" role="alert">Error</div>');
						}
					});
			}
			
			
	
/* --------------------------------------------------- Delete Function --------------------------------------------------- */		
			/* 
			$("#deleteModal").on("show.bs.modal", function(event){
				var button = $(event.relatedTarget);
				var empId = button.data("empid");
				alert("delete "+empId);
				$(this).find(".yesButton").off("click").on("click", function()
						{
							deleteEmployee(button,empId);
							alert("go fn");
						});
				
				function deleteEmployee(button,empId){
					alert("in fn");
					$.ajax({
						url : "${pageContext.request.contextPath}/employee/delete/"+empId,
						type : "POST",
						success : function(data) {
							$('#deleteModal').modal('toggle');
							$("#message").html('<div class="alert alert-success" role="alert">Success</div>');		
						},
						error : function(data,testStatus,jqXHR) {
							$('#deleteModal').modal('toggle');
							$("#message").html('<div class="alert alert-danger" role="alert">Error</div>');
							}
						});
				}
    		   	
			
  	}); */
  	
  
  </script>
</body>
</html>