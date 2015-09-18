<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Spring -->	
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<jsp:include page="../employeeMenu.jsp"></jsp:include>


<c:if test="${ not empty msgerror }">
	<div class="alert alert-danger" >
	<span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>&nbsp;${msgerror }</div>
	<%-- <c:remove var="msgerror" scope="session"/>--%> 
</c:if>









<input type="hidden" id="emp">
<input type="hidden" id="empname">
<!-- <input type="hidden" id="id"> -->

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
<%-- <f:form method="post" id="addForm" commandName="allEmployeeDto" class="form-horizontal" role="form" action="${pageContext.request.contextPath}/employee/submit" enctype="multipart/form-data"> --%>

<f:form method="post" id="addForm" commandName="allEmployeeDto" class="form-horizontal" role="form" name="employeeForm" enctype="multipart/form-data">

<!------------------------------------------------------ Start Information-------------------------------------------------------->
		
		 <input id="employeeCodeDto" name="employeeCodeDto.rungingNumber" type="hidden" class="form-control"  placeholder="Location ID" value="${ employeeCodeDto.rungingNumber}">
		
		
		<div id="message"></div>
		<div id = "div-information" class="col-md-12" style="padding: 15px 0px 15px 0px;">
				<h2 style="border-bottom: 1px solid #8f8f8f;">Information
					<i style="position: absolute; right: 20px; cursor:pointer;" id = "icon1" class="fa fa-chevron-up"></i>
				</h2>
		 </div>
		 
		 
		 <div class="col-md-7">

							<div class="form-group">
									<!-- <label for="id"> ID :</label> -->
									 <input id="id" name="id" type="hidden" class="form-control" placeholder="Enter ID" value="${id}">
								
								<div class="col-md-6">
		    					<label>Location :</label>
		    						<f:select id="masLocation" path="masLocation"  class="form-control" value="TH">
									 	 <option  value="" label="--Select Location--" />
		  								 <f:options items="${ locationList }"  itemValue="code" itemLabel="name" />
									</f:select>
								</div> 
							
								<div class="col-md-6">
									<label for="employeeCode"> Employee Code :</label> 
									<input id="employeeCodefalse" name="employeeCodefalse" type="text" class="form-control" disabled placeholder="Enter Employee Code" value="${allEmployeeDto.employeeCode}">
								</div>
								
									<input id="employeeCode" name="employeeCode" type="text" class="form-control"  value="${allEmployeeDto.employeeCode}"> 
								
								
							</div>
							
					
	        
	        
	         		
							<div class="form-group">
								<div class="col-md-4">
									<label> Name (Thai.) :</label> 
									<input type="text" class="form-control" 
									id="nameThai"name="nameThai" placeholder="Enter Name (Thai)" value="${allEmployeeDto.nameThai}">
								</div>
								<div class="col-md-4">
									<label> SurName (Thai.) :</label> 
									<input type="text" class="form-control" 
									id="surnameThai" name="surnameThai" placeholder="Enter Surname (Thai)" value="${allEmployeeDto.surnameThai}">
								</div>
								<div class="col-md-4">
									<label> NickName (Thai.) :</label> 
									<input type="text" class="form-control" 
									id="nicknameThai" name="nicknameThai" placeholder="Enter Nickname (Thai)" value="${allEmployeeDto.nicknameThai}">
								</div>
							</div>
					
	         
	         		
							<div class="form-group">
								<div class="col-md-4">
									<label> Name (Eng.) :</label> 
									<input type="text" class="form-control" id="nameEng" name="nameEng" placeholder="Enter Name (Eng)" value="${allEmployeeDto.nameEng}">
								</div>
								<div class="col-md-4">
									<label> SurName (Eng.) :</label> <input type="text" class="form-control"
									id="surnameEng" name="surnameEng" placeholder="Enter Surname (Eng)" value="${allEmployeeDto.surnameEng}">
								</div>
								<div class="col-md-4">
									<label> NickName (Eng.) :</label> <input type="text" class="form-control"
									id="nicknameEng" name="nicknameEng" placeholder="Enter Nickname (Eng)" value="${allEmployeeDto.nicknameEng}">
								</div>
							</div>
					
	         </div>
	         
	       <!--   Upload image -->
							<div class="col-md-5">
								<div class="form-group">
									<div class="col-md-12">


										<div class="col-md-3"></div>
										
										<div class="col-md-9">
										<div class="row" align="center">
										   <c:if test="${empty allEmployeeDto.image}">
												<div  id="imagePreview" class="img-rounded img-responsive"
													style="background-image:url('<c:url value="/resource/images/no_image.gif" />');">
												</div>
											</c:if>
											
											<c:if test="${not empty allEmployeeDto.image}">
										   		 <div id="imagePreview" class="img-rounded img-responsive" style="background-image:url('${pageContext.request.contextPath}/DisplayImageServlet?namespace=EMPLOYEE&fileName=${allEmployeeDto.image}');"></div>
										    </c:if>
											</div>
											<br>
											<label> Upload File :</label> 
										
										
											<input type="file" id="uploadFile" name="fileupload" accept="image/*"
												class="file" data-show-upload="false"
												data-show-preview="false" data-initial-caption="${allEmployeeDto.image}"
												data-overwrite-initial="false"> 
												
												<input type="hidden" name="image"
												class="form-control element-to-paste-filename"
												value="${allEmployeeDto.image}" />

											
										</div>
									 </div>


   								        <%--    <c:if test="${empty allEmployeeDto.image}">
										    	<div id="imagePreview" class="img-rounded img-responsive"
												style="background-image:url('<c:url value="/resources/images/no_image.gif" />');"></div>
										    </c:if>
										    
										    
										    
										    <c:if test="${not empty allEmployeeDto.image}">
											<!-- <div id="imagePreview" class="img-rounded img-responsive" background-image:url('${pageContext.request.contextPath}/DisplayImageServlet?namespace=EMPLOYEE&fileName=${allEmployeeDto.image}');"></div> -->
										    <div id="imagePreview" class="img-rounded img-responsive" style="background-image:url('${pageContext.request.contextPath}/DisplayImageServlet?namespace=EMPLOYEE&fileName=${allEmployeeDto.image}');"></div>
										    </c:if> --%>
										   

										<!-- <div class="col-md-3"></div> -->

									</div>
								</div>

						
	         
	         
 <!-------------------------------------------------- Start Address-------------------------------------------------->
 
	       <div id = "div-information" class="col-md-12" style="padding: 15px 0px 15px 0px;">
				<h2 style="border-bottom: 1px solid #8f8f8f;">Address
					<i style="position: absolute; right: 20px; cursor:pointer;" id = "icon1" class="fa fa-chevron-up"></i>
				</h2>
	       </div>
	       
	    <div class="col-md-12">
	    <div class="form-group" align="right">
	      <button id="addaddress" type="button"class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal">
          New record</button>	
        </div>
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
								<th>Action</th>
								<!-- <th>Delete</th> -->
								<th>Status</th>
							    <!-- <th>HiddenIndex</th>  -->
							</tr>
						
						</thead>
						
						<tbody>
						
						</tbody>
					</table>
					
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
									<label> Email :</label> <input type="email" class="form-control"
									id="email" name="email" placeholder="Enter Email" value="${allEmployeeDto.email}">
								</div>
								<div class="col-md-3">
									<label> Tel. (Home) :</label> <input type="text" class="form-control"
									id="telHome" name="telHome" placeholder="xx-xxx-xxxx" value="${allEmployeeDto.telHome}">
								</div>
								<div class="col-md-3">
									<label> Tel. (Mobile) :</label> <input type="text" class="form-control"
									id="telMobile" name="telMobile" placeholder="xxx-xxx-xxxx" value="${allEmployeeDto.telMobile}">
								</div>
								<div class="col-md-3">
									<label> Tel. (Fax) :</label> <input type="text" class="form-control"
									id="telFax" name="telFax" placeholder="xx-xxx-xxxx" value="${allEmployeeDto.telFax}">
								</div>
							</div>
					
	        </div>
	        
	        <div class="col-md-12">
	         		
							<div class="form-group">
								<div class="col-md-6">
									<label> Health (Congenital Disease) :</label> <input type="text" class="form-control"
									id="congenitalDisease" name="congenitalDisease" placeholder="Enter Congenital Disease" value="${allEmployeeDto.congenitalDisease}">
								</div>
								<div class="col-md-6">
									<label> Hospital :</label> <input type="text" class="form-control"
									id="hospital" name="hospital" placeholder="Enter Hospital" value="${allEmployeeDto.hospital}">
								</div>
							</div>
					
	        </div>
	        
	         <div class="col-md-12">
	         		
							<div class="form-group">
								<div class="col-md-6">
									<label> Emergency Contact :</label> <input type="text" class="form-control"
									id="emergencyContact" name="emergencyContact" placeholder="Enter Emergency Name" value="${allEmployeeDto.emergencyContact}">
								</div>
								<div class="col-md-6">
									<label> Relationship with Emergency Contact :</label> <input type="text" class="form-control"
									id="relationshipWithEmergencyContact" name="relationshipWithEmergencyContact" placeholder="Enter Emergency Relation"
									value="${allEmployeeDto.relationshipWithEmergencyContact}">
								</div>
							</div>
					
	        </div>
	        
	        
	         <div class="col-md-12">
	         		
							<div class="form-group">
								<div class="col-md-6">
									<label> Emergency Contact Address :</label> <input type="text" class="form-control"
									id="emergencyContactAddress" name="emergencyContactAddress" placeholder="Enter Emergency Address" value="${allEmployeeDto.emergencyContactAddress}">
								</div>
								<div class="col-md-3">
									<label> Emergency Contact Phone Number  :</label> <input type="text" class="form-control"
									id="emergencyContactPhoneNumber" name="emergencyContactPhoneNumber" placeholder="xxx-xxx-xxxx" value="${allEmployeeDto.emergencyContactPhoneNumber}">
								</div>
							</div>
					
	        </div>
	       
	       
	       <div class="col-md-12">
	         		
							<div class="form-group">
								<div class="col-md-3">
									<label> Date of Birth :</label> 
									<div class='input-group date'  id='dateOfBirth'>
									
								
									
									<input type="text" class="form-control"
									id="dateOfBirth" name="dateOfBirth" placeholder="Enter DOB"            							 
           							value='<fmt:formatDate pattern="dd-MM-yyyy" value="${allEmployeeDto.dateOfBirth}" />' /> 
           							           							
									
									<span class="input-group-addon">
							            <span class="glyphicon glyphicon-calendar"></span>
							        </span>
							        </div>
								</div>
																	
								
								
								<div class="col-md-3">
									<label> Place of Birth :</label> <input type="text" class="form-control"
									id="placeOfBirth" name="placeOfBirth" placeholder="Enter POB">
								</div>
								
								
								<%-- <div class="col-md-3">
								
									<label> Place of Birth :</label>
									<div class='input-group date' id='placeOfBirth'> <input type="text" class="form-control"
									id="placeOfBirth" name="placeOfBirth" placeholder="Enter POB" value="${allEmployeeDto.placeOfBirth}">
									<span class="input-group-addon">
									<span class="glyphicon glyphicon-calendar"></span>
									</span></div>
								</div> --%>
								
								
								<div class="col-md-3">
									<label> Age :</label> <input type="text" class="form-control"
									id="age" name="age" placeholder="Enter Age" value="${allEmployeeDto.age}">
								</div>
								<div class="col-md-3">
									<label> Religion :</label> <input type="text" class="form-control"
									id="religion" name="religion" placeholder="Enter Religion" value="${allEmployeeDto.religion}">
								</div>
								
							</div>
					
	        </div>
	        
	        
	         <div class="col-md-12">
	         		
							<div class="form-group">
								<div class="col-md-3">
									<label> ID Card :</label> <input type="text" class="form-control"
									id="idCard" name="idCard" placeholder="Enter Id Card" value="${allEmployeeDto.idCard}">
								</div>
								<div class="col-md-3">
									<label> Issued Office :</label> <input type="text" class="form-control"
									id="issuedOffice" name="issuedOffice" placeholder="Enter Issued Office" value="${allEmployeeDto.issuedOffice}">
								</div>
								<div class="col-md-3">
									<label> Expiry Date :</label>
									<div class='input-group date' id='expiryDate'> <input type="text" class="form-control"
									id="expiryDate" name="expiryDate" placeholder="Enter Expiry Date" value='
									<fmt:formatDate pattern="dd-MM-yyyy" value="${allEmployeeDto.expiryDate}" />' />
								
								<span class="input-group-addon">
								<span class="glyphicon glyphicon-calendar"></span>
								</span></div></div>
							</div>
					
	        </div>
	        
	        
	         <div class="col-md-12">
	         		
							<div class="form-group">
								<div class="col-md-3">
									<label> Height (cms.) :</label> <input type="text" class="form-control"
									id="height" name="height" placeholder="Enter Height" value="${allEmployeeDto.height}">
								</div>
								<div class="col-md-3">
									<label> Weigth (kgs.) :</label> <input type="text" class="form-control"
									id="weigth" name="weigth" placeholder="Enter Weigth" value="${allEmployeeDto.weigth}">
								</div>
							</div>
					
	        </div>
	        
	        
	         <div class="col-md-12">
	         		
							<div class="form-group">
								<div class="col-md-3">
									<label> Sex :</label>
									<div class="radio">
									 <c:if test="${empty allEmployeeDto.sex}">									
									  		 <label><input type="radio" name="sex" id="Male" value="Male">Male</label>
									  		 <label><input type="radio" name="sex" id="Female" value="Female">Female</label>
									  </c:if>
									  
									  
									  <c:if test="${not empty allEmployeeDto.sex}">

										 <c:if test="${allEmployeeDto.sex =='Male'}">
										        <label><input type="radio" name="sex" id="Male" value="Male" checked="checked">Male</label>
										        <label><input type="radio" name="sex" id="Female" value="Female">Female</label>
										  </c:if>
										    
										   <c:if test="${allEmployeeDto.sex =='Female'}">
										       <label><input type="radio" name="sex" id="Male" value="Male">Male</label>
										       <label><input type="radio" name="sex" id="Female" value="Female" checked="checked">Female</label>						  
										   </c:if>
									  </c:if>
									 
    								</div>
								</div>
    						</div>	
					
	        </div>
	        
	        
	         <div class="col-md-12">
	         		
							<div class="form-group">
								<div class="col-md-3">
									<label> Marital Status :</label>
									<div class="radio">
									  <c:if test="${empty allEmployeeDto.maritalStatus}">	
     									 <label><input type="radio" name="maritalStatus" id="Single" value="Single">Single</label> 
      									 <label><input type="radio" name="maritalStatus" id="Married" value="Married">Married</label>
      									 <label><input type="radio" name="maritalStatus" id="Divorce" value="Divorce">Divorce</label>
    								  </c:if>
    								  <c:if test="${not empty allEmployeeDto.maritalStatus}">
    								        
    								        <c:choose>
										    <c:when test="${allEmployeeDto.maritalStatus =='Single'}">
										       <label><input type="radio" name="maritalStatus" id="Single" value="Single" checked="checked">Single</label> 
      									 	   <label><input type="radio" name="maritalStatus" id="Married" value="Married">Married</label>
      									       <label><input type="radio" name="maritalStatus" id="Divorce" value="Divorce">Divorce</label>
										    </c:when>
										    
										     <c:when test="${allEmployeeDto.maritalStatus =='Married'}">
										       <label><input type="radio" name="maritalStatus" id="Single" value="Single">Single</label> 
      									 	   <label><input type="radio" name="maritalStatus" id="Married" value="Married" checked="checked">Married</label>
      									       <label><input type="radio" name="maritalStatus" id="Divorce" value="Divorce">Divorce</label>
										    </c:when>
										    
										    <c:when test="${allEmployeeDto.maritalStatus =='Divorce'}">
										       <label><input type="radio" name="maritalStatus" id="Single" value="Single">Single</label> 
      									 	   <label><input type="radio" name="maritalStatus" id="Married" value="Married" checked="checked">Married</label>
      									       <label><input type="radio" name="maritalStatus" id="Divorce" value="Divorce">Divorce</label>
										    </c:when>
										    
										    <c:otherwise>
										       <label><input type="radio" name="maritalStatus" id="Single" value="Single">Single</label> 
      									 	   <label><input type="radio" name="maritalStatus" id="Married" value="Married">Married</label>
      									       <label><input type="radio" name="maritalStatus" id="Divorce" value="Divorce">Divorce</label>
										    </c:otherwise>
										   </c:choose>
    								  
    								  </c:if>
    								  
    								</div>
								</div>
    						</div>	
					
	        </div>
	        
	        
	           <div class="col-md-12">
	         		
							<div class="form-group">
								<div class="col-md-3">
									<label> Number of Children :</label> <input type="text" class="form-control"
									id="numberOfChildren" name="numberOfChildren" placeholder="Enter Number Of Children" value="${allEmployeeDto.numberOfChildren}">
								</div>
								<div class="col-md-3">
									<label> Spouse: Name :</label> <input type="text" class="form-control"
									id="spouseName" name="spouseName" placeholder="Enter Spouse Name" value="${allEmployeeDto.spouseName}">
								</div>
								<div class="col-md-3">
									<label> Marriage certificate No. :</label> <input type="text" class="form-control"
									id="marriageCertificateNo" name="marriageCertificateNo" placeholder="Enter Marriage Cert No." value="${allEmployeeDto.marriageCertificateNo}">
								</div>
								<div class="col-md-3">
									<label> Issued Office :</label> <input type="text" class="form-control"
									id="issuedOffice2" name="issuedOffice2" placeholder="Enter Issue Office" value="${allEmployeeDto.issuedOffice2}">
								</div>
							</div>
					
	        </div>
	       
	       
	        <div class="col-md-12">
	         		
							<div class="form-group">
								<div class="col-md-3">
									<label> Address :</label> <input type="text" class="form-control"
									id="address" name="address" placeholder="Enter Address" value="${allEmployeeDto.address}">
								</div>
								<div class="col-md-3">
									<label> Occupation :</label> <input type="text" class="form-control"
									id="occupation" name="occupation" placeholder="Enter Occupation" value="${allEmployeeDto.occupation}">
								</div>
							</div>
					
	        </div>
	       
	       
	           <div class="col-md-12">
	         		
							<div class="form-group">
								<div class="col-md-3">
									<label> How do you know augmentis? :</label>
									<div class="checkbox">
									    
									  
    								  <c:if test="${empty allEmployeeDto.knowAugNewspaper}">	
     									  <label><input type="checkbox" id="Newspaper" name="knowAugNewspaper" value="Newspaper">Newspaper</label>   										 
     									  <input type="text" class="form-control" id="descriptionNewspaper" name="descriptionNewspaper" placeholder="Enter Newspaper" value="${allEmployeeDto.descriptionNewspaper}">
     									
    								  </c:if>
    								 
									  <c:if test="${not empty allEmployeeDto.knowAugNewspaper}">	
     									   <label><input type="checkbox" id="Newspaper" name="knowAugNewspaper" value="Newspaper" checked="checked">Newspaper</label>
    								  	   <input type="text" class="form-control" id="descriptionNewspaper" name="descriptionNewspaper" placeholder="Enter Newspaper" value="${allEmployeeDto.descriptionNewspaper}">
    								  		
    								  </c:if>
    								 
									  
									  
									  <c:if test="${empty allEmployeeDto.descriptionMagazine}">	
     									 <label><input type="checkbox" id="Magazine" name="knowAugMagazine" value="Magazine">Magazine</label>
      									 <input type="text" class="form-control" id="descriptionMagazine" name="descriptionMagazine" placeholder="Enter Magazine" value="${allEmployeeDto.descriptionMagazine}">
      									 
    								  </c:if>
    								 
									  <c:if test="${not empty allEmployeeDto.descriptionMagazine}">	
     									   <label><input type="checkbox" id="" name="knowAugNewspaper" value="Magazine" checked="checked">Magazine</label>
    								  	   <input type="text" class="form-control" id="descriptionMagazine" name="descriptionMagazine" placeholder="Enter Magazine" value="${allEmployeeDto.descriptionMagazine}">
      									 
    								  </c:if>

									  
									 <c:if test="${empty allEmployeeDto.knowAugWebsite}">	
     									 <label><input type="checkbox" id="Website" name="knowAugWebsite" value="Website">Website</label>
      									 <input type="text" class="form-control" id="descriptionWebsite" name="descriptionWebsite" placeholder="Enter Website" value="${allEmployeeDto.descriptionWebsite}">
      									
    								  </c:if>
    								 
									  <c:if test="${not empty allEmployeeDto.knowAugWebsite}">	
     									 <label><input type="checkbox" id="Website" name="knowAugWebsite" value="Website" checked="checked">Website</label>
      									 <input type="text" class="form-control" id="descriptionWebsite" name="descriptionWebsite" placeholder="Enter Website" value="${allEmployeeDto.descriptionWebsite}">
      									
    								  </c:if>
									
									  
									  <c:if test="${empty allEmployeeDto.knowAugFriend}">	
     									 <label><input type="checkbox" id="Friend" name="knowAugFriend" value="Friend">Friend</label>
      									 <input type="text" class="form-control" id="descriptionFriend" name="descriptionFriend" placeholder="Enter Friend" value="${allEmployeeDto.descriptionFriend}">
      									
    								  </c:if>
    								 
									  <c:if test="${not empty allEmployeeDto.knowAugFriend}">	
     									 <label><input type="checkbox" id="Friend" name="knowAugFriend" value="Friend" checked="checked">Friend</label>
      									 <input type="text" class="form-control" id="descriptionFriend" name="descriptionFriend" placeholder="Enter Friend" value="${allEmployeeDto.descriptionFriend}">
      									
    								  </c:if>
									    
									    
									  <c:if test="${empty allEmployeeDto.knowAugOther}">	
									    <label><input type="checkbox" id="Other" name="knowAugOther" value="Other">Other (Please specify.)</label>
      									<input type="text" class="form-control" id="descriptionOther" name="descriptionOther" placeholder="Enter Other" value="${allEmployeeDto.descriptionOther}">
    								  </c:if>
									    
									  <c:if test="${not empty allEmployeeDto.knowAugOther}">	
									    <label><input type="checkbox" id="Other" name="knowAugOther" value="Other" checked="checked">Other (Please specify.)</label>
      									<input type="text" class="form-control" id="descriptionOther" name="descriptionOther" placeholder="Enter Other" value="${allEmployeeDto.descriptionOther}">
    								  </c:if>
									    			 
      									 
      							    </div>
								</div>
    						</div>	
					
	        </div>
	        
	        
	         <div class="col-md-12">
	         		
							<div class="form-group">
								<div class="col-md-6">
									<label> Do you know anyone now being employed by this company? :</label>
									<div class="checkbox">
									<c:if test="${ empty allEmployeeDto.knowEmployedYes}">	
     									  <label><input type="checkbox" id="Yes" name="knowEmployed[]" value="Yes">Yes</label>
    								</c:if>
    								<c:if test="${not empty allEmployeeDto.knowEmployedYes}">	
	    								<c:if test="${allEmployeeDto.knowEmployedYes=='Yes'}">	
	     									  <label><input type="checkbox" id="Yes" name="knowEmployed[]" value="Yes" checked="checked">Yes</label>
	    								</c:if>
    								</c:if>
     									 <input type="text" class="form-control" id="descriptionYes" name="descriptionYes" placeholder="Enter Please write name,position and relation" value="${allEmployeeDto.descriptionYes}">
    								</div>
    								
    								
    								
    								
    								<div class="checkbox">
    								  <c:if test="${ empty allEmployeeDto.knowEmployerNo}">	
     									 <label><input type="checkbox" id="No" name="knowEmployed[]" value="No">No</label>
    								  </c:if>
    								  
    								  <c:if test="${not empty allEmployeeDto.knowEmployedYes}">	  								  
    								 	<c:if test="${allEmployeeDto.knowEmployedYes=='No'}">	
     									    <label><input type="checkbox" id="No" name="knowEmployed[]" value="No" checked="checked">No</label>
    								   </c:if>
    								  </c:if>
    								</div>
								</div>
    						</div>	
					
	        </div>
	        
	        <div class="col-md-12">
	         		
							<div class="form-group">
							</div>
			</div>
	        
	        <div class="col-md-12">
	         		
							<div class="form-group">
								<div class="col-md-12">
									<label> Have you ever served in the military service? :</label>
    								<div class="checkbox">
    								 <c:if test="${ empty allEmployeeDto.militaryServiceYes}">	
     									  <label><input type="checkbox" id="militaryServiceYes" name="militaryServiceYes" value="Yes">Yes</label>
    								  </c:if>
    								  <c:if test="${not empty allEmployeeDto.militaryServiceYes}">	
     									  <label><input type="checkbox" id="militaryServiceYes" name="militaryServiceYes" value="Yes" checked="checked">Yes</label>
    								   </c:if>
     								</div>
     								</div>
     								<div class="col-md-3">
    									 <label> From Year :</label>

    									 <div class='input-group date' id='fromYear'>
    									 <input type="text" class="form-control" id="fromYear" name="fromYear" placeholder="Enter From year"
    									  value='<fmt:formatDate pattern="dd-MM-yyyy" value="${allEmployeeDto.fromYear}" />' />
    								     <span class="input-group-addon">
										 <span class="glyphicon glyphicon-calendar"></span>
										 </span></div>
									</div>
									
    								<div class="col-md-3">
    									 <label> To Year :</label>
    									 <div class='input-group date' id='toYear'>
    									 <input type="text" class="form-control" id="toYear" name="toYear" placeholder="Enter To Year"
    									  value='<fmt:formatDate pattern="dd-MM-yyyy" value="${allEmployeeDto.toYear}" />'  />
    									 <span class="input-group-addon">    									 
    									 <span class="glyphicon glyphicon-calendar"></span>
    									 </span>
										</div>
									</div>



    								<%-- 	 <input type="text" class="form-control" id="fromYear" name="fromYear" placeholder="Enter From year" value="${allEmployeeDto.fromYear}">
    								</div>
    								<div class="col-md-3">
    									 <label> To Year :</label>
    									 <input type="text" class="form-control" id="toYear" name="toYear" placeholder="Enter To Year" value="${allEmployeeDto.toYear}">
    								</div> --%>



    								<div class="col-md-3">
    									 <label> Branch of Service :</label>
    									 <input type="text" class="form-control" id="branchOfService" name="branchOfService" placeholder="Enter Branch Of Service" value="${allEmployeeDto.branchOfService}">
    								</div>
    								<div class="col-md-3">
     									 <label> Service No :</label>
    									 <input type="text" class="form-control" id="serviceNo" name="serviceNo" placeholder="Enter Service No" value="${allEmployeeDto.serviceNo}">
    							    </div>
    						</div>	
					
	        </div>
	        
	        
	         <div class="col-md-12">
	         		
							<div class="form-group">
							<div class="col-md-12">
    								<div class="checkbox">
    								 <c:if test="${ empty allEmployeeDto.militaryServiceNo}">	
     									   <label><input type="checkbox" id="militaryServiceNo" name="militaryServiceNo" value="No">No</label>
    								  </c:if>
    								  <c:if test="${not empty allEmployeeDto.militaryServiceNo}">	
     									    <label><input type="checkbox" id="militaryServiceNo" name="militaryServiceNo" value="No">No</label>     									       									 
    								   </c:if>
     								</div>
     								</div>
     								<div class="col-md-6">
    									 <label> Please state the reasons :</label>
    									 <input type="text" class="form-control" id="reasonsNo" name="reasonsNo" placeholder="Enter Reasons" value="${allEmployeeDto.reasonsNo}">
    								</div>
    								<div class="col-md-3">
    									 <label> Date to be drafted :</label>

    									 <div class='input-group date' id='dateToBeDrafted'>
    									 <input type="text" class="form-control" id="dateToBeDrafted" name="dateToBeDrafted" placeholder="Enter Date Drafted" 
    									 value='<fmt:formatDate pattern="dd-MM-yyyy" value="${allEmployeeDto.dateToBeDrafted}" />'  />
    							      	 <span class="input-group-addon">
										 <span class="glyphicon glyphicon-calendar"></span>
										 </span></div></div>

    									<%--  <input type="text" class="form-control" id="dateToBeDrafted" name="dateToBeDrafted" placeholder="Enter Date Drafted" value="${allEmployeeDto.dateToBeDrafted}">
    									</div> --%>

    						</div>	
					
	        </div>
	        
	        
	         <div class="col-md-12">
	         		
							<div class="form-group">
							<br></br>
							<div class="col-md-12">
							<label> May inquiry be made of your previous employers reguarding you character,qualification record of employment? :</label>
							</div>	
								<div class="col-md-6">
									<div class="checkbox">
									<c:if test="${ empty allEmployeeDto.previousEmployerYes}">	
     									 <label><input type="checkbox" id="previousEmployerYes" name="previousEmployerYes" value="Yes">Yes</label>
    								  </c:if>
    								  <c:if test="${not empty allEmployeeDto.previousEmployerYes}">	
     									  <label><input type="checkbox" id="previousEmployerYes" name="previousEmployerYes" value="Yes" checked="checked">Yes</label>   									       									 
    								   </c:if>
    								</div>
    								
    								<div class="checkbox">
    								  <c:if test="${ empty allEmployeeDto.previousEmployerNo}">	
     									   <label><input type="checkbox" id="previousEmployerNo" name="previousEmployerNo" value="No">No</label>
    								  </c:if>
    								  <c:if test="${not empty allEmployeeDto.previousEmployerNo}">	
     									     <label><input type="checkbox" id="previousEmployerNo" name="previousEmployerNo" value="No" checked="checked">No</label>     									       									 
    								   </c:if>
     									
     									 <input type="text" class="form-control" id="previousEmpreasonsNo" name="previousEmpreasonsNo" placeholder="Enter Give the reason" value="${allEmployeeDto.previousEmpreasonsNo}">
    									
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
	    
	    <div class="col-md-12">
	    <div class="form-group">
							<div class="col-md-4">
									
								</div>
								<div class="col-md-4">
									
								</div>
								
			 			<div class="col-md-4">
									<label> Date :</label> 

									<div class='input-group date' id='officialDate'>
									<input type="text" class="form-control" id="officialDate" name="officialDate" placeholder="Enter Date" 
									value='<fmt:formatDate pattern="dd-MM-yyyy" value="${allEmployeeDto.officialDate}"/>' />
								    <span class="input-group-addon">
									<span class="glyphicon glyphicon-calendar"></span>
									</span></div></div>

									<%-- <input type="text" class="form-control" id="officialDate" name="officialDate" placeholder="Enter Date" value="${allEmployeeDto.officialDate}">
							  	    </div> --%>

			</div>
			</div>
			
			
			<div class="col-md-12">	
			<div class="form-group">
				<div class="col-md-4">
									<label> Position Applied For :</label> 
									<input type="text" class="form-control" id="positionAppliedFor" name="positionAppliedFor" placeholder="Enter Position" value="${allEmployeeDto.positionAppliedFor}">
								</div>
								

				<div class="col-md-4">
				<label> Salary Expected :</label> <input type="text" class="form-control" id="salaryExpected" name="salaryExpected" placeholder="Enter Salary" value="${allEmployeeDto.salaryExpected}">
				
			
				<%-- <div class="col-md-6">
									<label> Salary Expected :</label> <input type="text" class="form-control" id="salaryExpected" name="salaryExpected" placeholder="Enter Salary" value="${allEmployeeDto.salaryExpected}">
 				--%>
								</div>				
							
							</div>
	   
	    </div>
	     
	     
<!--------------------------------------------------  Official link to table--------------------------------- --> 	    
	    
	    <%-- <div class="col-md-12">
	       
				<div class="form-group">
					 <div class="col-md-3">
    					<label>Location :</label>
    						<f:select id="masLocation" path="masLocation"  class="form-control" value="TH">
							 	 <f:option  value="-1" label="--Select Location--" />
  								 <f:options items="${ locationList }"  itemValue="code" itemLabel="name" />
							</f:select>
						</div> 
						
  				</div>
			
	    </div> --%>
	    
	      <div class="col-md-12">
	         
				<div class="form-group">

						<div class="col-md-4">
    						<label> Start Work Date :</label> 
    						<div class='input-group date' id='startWorkDate'><input type="text" class="form-control"
							id="startWorkDate" name="startWorkDate" placeholder="Enter Start Work Date" 
							value='<fmt:formatDate pattern="dd-MM-yyyy" value="${allEmployeeDto.startWorkDate}"/>'  />
							<span class="input-group-addon">
							<span class="glyphicon glyphicon-calendar"></span>
							</span></div></div>
						
						
						<div class="col-md-4">
    						<label> End Work Date :</label>
    						<div class='input-group date' id='endWorkDate'>
    						<input type="text" class="form-control"
							id="endWorkDate" name="endWorkDate" placeholder="Enter End Work Date" 
							value='<fmt:formatDate pattern="dd-MM-yyyy" value="${allEmployeeDto.endWorkDate}"/>' />
						    <span class="input-group-addon">
							<span class="glyphicon glyphicon-calendar"></span>
							</span>
						</div>
						
						
						<%-- ${allEmployeeDto.endWorkDate} --%> 


					  <%-- 	<div class="col-md-3">
    						<label> Start Work Date :</label> <input type="text" class="form-control"
									id="startWorkDate" name="startWorkDate" placeholder="Enter Start Work Date" value="${allEmployeeDto.startWorkDate}">
						</div>
						
						<div class="col-md-3">
    						<label> End Work Date :</label> <input type="text" class="form-control"
									id="endWorkDate" name="endWorkDate" placeholder="Enter End Work Date" value="${allEmployeeDto.endWorkDate}">
						</div> --%>


  				</div>
			
	    </div>
	    </div>
	     <div class="col-md-12">
	       
				<div class="form-group">
					 <div class="col-md-4">
    					<label>Employment :</label>
    					
    						<f:select  id="masEmployment" path="masEmployment"  class="form-control">
    						
    						<option  value="" label="--Select Employment--" />
  							<f:options items="${ employmentList }"  itemValue="id" itemLabel="name" />
    						
								
							</f:select>
						</div> 
						
						<div class="col-md-4">
    						<label>Division :</label>
    						
    						<f:select  id="masDivision" path="masDivision"  class="form-control">
    						
	    						<option  value="" label="--Select Division--" />
	  							<f:options items="${ divisionList }"  itemValue="id" itemLabel="name" />
	    						
								
							</f:select>
    						
    						
						</div>
						
  				</div>
			
	    </div>
	    
	     <div class="col-md-12">
	         
				<div class="form-group">
						
						
						
						<div class="col-md-4">
    						<label>Staff Type :</label>
    						
    						<f:select  id="masStaffType" path="masStaffType"  class="form-control">
    						
	    						<option  value="" label="--Select Staff Type--" />
	  							<f:options items="${ staffTypeList }"  itemValue="id" itemLabel="name" />
	    						
								
							</f:select>
    						
  				</div>
  				
  				<div class="col-md-4">
    						<label>Joblevel :</label>
    						
    						<f:select  id="masJoblevel" path="masJoblevel"  class="form-control" >
    						
	    						<option  value="" label="--Select Joblevel--" />
	  							<f:options items="${ joblevelList }"  itemValue="id" itemLabel="name" />
	    						
								
							</f:select>
    						
						</div>
			
	    </div>
	    </div>
	    
	    <div class="col-md-12">
	         
				<div class="form-group">
						
						
						<div class="col-md-4">
    						<label>Core Skill :</label>
    						
    						 <f:select  id="masCoreSkill" path="masCoreSkill"  class="form-control">
    						 
    						 	<option  value="" label="--Select Core Skill--" />
	  							 <f:options items="${ coreskillList }"  itemValue="id" itemLabel="name" /> 
	    						 
								
							</f:select> 
    						
    						
						</div>
						
						<div class="col-md-4">
    						<label>Technology :</label>
    						
    						<f:select  id="technology" path="technology"  class="form-control">
    						 
	    						 <option  value="" label="--Select Technology--" />
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
     								
     							<c:if test="${empty allEmployeeDto.isManager}">
     								<label><input type="checkbox" value = "1" name="isManager">isAIM</label>
								</c:if>
								<c:if test="${not empty allEmployeeDto.isManager}">
     								<label><input type="checkbox" value = "1" name="isManager" checked="checked">isAIM</label>
								</c:if>
								
								</div>
			</div>

  				</div>
			
	    </div>
	    
	    <div class="col-md-12">
	    <div class="form-group">
	    <div class="col-md-4">
    				
    			<%-- <label>AIM : ${aimList.size()}</label> --%>


				<%-- <div class="form-group">					
    			<label>AIM :${aimList.size()}</label> --%>
						<label>AIM : ${aimList.size()}</label>
    				  <f:select  path="aimempid"  class="form-control">
    						 
    						 <f:option  value="" label="--Select AIM--" />
  							 <f:options items="${ aimList }"  itemValue="id" itemLabel="name_eng" />
    						  
								
							</f:select>  
    				</div>
    				
    		<div class="col-md-4">
						

						<label> Probation Date :</label> 
						<div class='input-group date' id='probationDate'>
						<input type="text" class="form-control"
									id="probationDate" name="probationDate" placeholder="Enter Probation Date" 
									value='<fmt:formatDate pattern="dd-MM-yyyy" value="${allEmployeeDto.probationDate}"/>' />


						<%-- <label> Probation Date :</label> <input type="text" class="form-control"
							 id="probationDate" name="probationDate" placeholder="Enter Probation Date" value="${allEmployeeDto.probationDate}">
						 --%>


					<span class="input-group-addon"> <span
						class="glyphicon glyphicon-calendar"></span>
					</span>
				</div>
				</div>
	    </div>
	    </div>
	    
	
			<div  align="center">
				<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
    			<!-- <button type="button" class="btn btn-primary saveButton">Save</button> -->
    			<button type="button" class="btn btn-primary" name="saveButton">Save&Continue</button>
    			
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
						<h4 class="modal-title" id="myModalLabel">Address</h4>
					</div>
					<div class="modal-body">
						
					<form id="validateAddress" name="validateAddress">
						<div class="form-group">
	    					<label>Address Type :</label>
	    
							<div class="form-group">
		 					 <select class="form-control" id="addressType" name="addressType">
								<option value="" label="---Select Address Type---" />
								<c:forEach var="obj" items="${ masAddressTypeList }">
									<option value="${obj.id }">${ obj.name}</option>
								</c:forEach>
							</select>
							</div>
	  				
							

							<div class="form-group">
								<label>Address:</label>
								<textarea class="form-control" rows="1" id="address1" name="address1"></textarea>
							</div>


							<div class="form-group">
								<label>Address(Cont.):</label>
								<textarea class="form-control" rows="1" id="address2" name="address2"></textarea>
							</div>


						
 			 <div class="form-group">
	    				<label>Province :</label>
	    
	    
						
		 					 <select  class="form-control" id="province" name="province">
								<option value="" label="---Select Province---" />
								<c:forEach var="obj" items="${ provinceList }">
									<option value="${obj.id }">${ obj.name}</option>
								</c:forEach>
							</select>
						
	  				</div> 

							<div class="form-group">
								<label>Zipcode:</label>
								<textarea class="form-control" rows="1" id="zipcode" name="zipcode"></textarea>
							</div>

						
						</div>
						
						<div class="form-group" align="center">
							<button type="button" class="btn btn-default closeAddressButton" 
								data-dismiss="modal">Close</button>
							<button type="button" id= "saveAddressButton"class="btn btn-primary saveAddressButton">Save
								changes</button>
						</div>
						
					</form>
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


	

<!---------------------------------------------------------- Start JQuery ----------------------------------------------------->	  
	    
<script type="text/javascript">
var dt;
var rowUpdate;
var dataUpdate;
var getIndex = 0;

	$(document).ready(function() {


//------------------------------------------------------ Validate --------------------------------------------------------------------------------------------

$('input.example').on('change', function() {
    $('input.example').not(this).prop('checked', false);  
});


$(".closeAddressButton").off("click").on("click",function() {
	//$('#validateAddress').bootstrapValidator('resetForm', true);
});


//$('#validateAddress').bootstrapValidator({
//  live: 'disabled',
 /*  message: 'This value is not valid',
  feedbackIcons: {
      valid: 'glyphicon glyphicon-ok',
      invalid: 'glyphicon glyphicon-remove',
      validating: 'glyphicon glyphicon-refresh'
  },
  fields: {
	  zipcode: {
  
	  validators: {
          notEmpty: {
              message: 'Zipcode is required and cannot be empty'
         	 },
         	digits: {
              	message: 'Zipcode is required'
              },
              regexp: {
                regexp: /^\d{5}$/,
                message: 'The TH zipcode must contain 5 digits'
              }
              
	  		}
	  },
	  addressType: {
		  
		  validators: {
	          notEmpty: {
	              message: 'AddressType is required and cannot be empty'
	         	 }
		  		}
		  },
		  address1: {
			  
			  validators: {
		          notEmpty: {
		              message: 'Address is required and cannot be empty'
		         	 }
			  		}
			  },
			  address2: {
				  
				  validators: {
			          notEmpty: {
			              message: 'Address is required and cannot be empty'
			         	 }
				  		}
				  },
				province: {
					  
					  validators: {
				          notEmpty: {
				              message: 'Province is required and cannot be empty'
				         	 }
					  		}
					  },
				  
  }
});



$('#addForm').bootstrapValidator({ */
//    live: 'disabled',
   /*  message: 'This value is not valid',
    feedbackIcons: {
        valid: 'glyphicon glyphicon-ok',
        invalid: 'glyphicon glyphicon-remove',
        validating: 'glyphicon glyphicon-refresh'
    },
    fields: {
    	nameThai: {
             validators: {
                 notEmpty: {
                     message: 'FirstName(Thai) is required and cannot be empty'
                 }
             }
         },
         
         surnameThai: {
             validators: {
                 notEmpty: {
                     message: 'Surname(Thai) is required and cannot be empty'
                 }
             }
         },
         
         nicknameThai: {
             validators: {
                 notEmpty: {
                     message: 'Nickname(Thai) is required and cannot be empty'
                 }
             }
         },
         
         nameEng: {
             validators: {
                 notEmpty: {
                     message: 'FirstName(Eng) is required and cannot be empty'
                 }
             }
         },
         
         surnameEng: {
             validators: {
                 notEmpty: {
                     message: 'Surname(Eng) is required and cannot be empty'
                 }
             }
         },
         
         nicknameEng: {
             validators: {
                 notEmpty: {
                     message: 'Nickname(Eng) is required and cannot be empty'
                 }
             }
         },
         
         email: {
             validators: {
            	 notEmpty: {
                     message: 'Email is required and cannot be empty'
                 },
            	 emailAddress: {
                     message: 'The value is not a valid email address'
                 },
             }
         },
         
         telHome: {
             validators: {
                 notEmpty: {
                     message: 'Tel. Home is required and cannot be empty'
                 },
                  regexp: {
                      regexp: /^\d{2}-\d{3}-\d{4}$/,
                      message: 'Tel. Home must format xx-xxx-xxxx'
                    }
             }
         },
         
         telMobile: {
             validators: {
                 notEmpty: {
                     message: 'Tel. Mobile is required and cannot be empty'
                 },
                 regexp: {
                     regexp: /^\d{3}-\d{3}-\d{4}$/,
                     message: 'Tel. Mobile must format xxx-xxx-xxxx'
                   }
             }
         },
         
         telFax: {
             validators: {
                 notEmpty: {
                     message: 'Fax is required and cannot be empty'
                 },
                 regexp: {
                     regexp: /^\d{2}-\d{3}-\d{4}$/,
                     message: 'Fax must format xx-xxx-xxxx'
                   }
             }
         },
         
         congenitalDisease: {
             validators: {
                 notEmpty: {
                     message: 'The CongenitalDisease is required and cannot be empty'
                 }
             }
         },
         
         hospital: {
             validators: {
                 notEmpty: {
                     message: 'The Hospital is required and cannot be empty'
                 }
             }
         },
         
         emergencyContact: {
             validators: {
                 notEmpty: {
                     message: 'The Emergency Contact is required and cannot be empty'
                 }
             }
         },
         
         relationshipWithEmergencyContact: {
             validators: {
                 notEmpty: {
                     message: 'The Relationship With EmergencyContact is required and cannot be empty'
                 }
             }
         },
         
         emergencyContactAddress: {
             validators: {
                 notEmpty: {
                     message: 'The Emergency Contact Address is required and cannot be empty'
                 }
             }
         },
         
         emergencyContactPhoneNumber: {
             validators: {
                 notEmpty: {
                     message: 'The Emergency Contact PhoneNumber is required and cannot be empty'
                 },
                 regexp: {
                     regexp: /^\d{3}-\d{3}-\d{4}$/,
                     message: 'Tel. Emergency must format xxx-xxx-xxxx'
                   }
             }
         },
    	
         dateOfBirth: {
            validators: {
                notEmpty: {
                    message: 'The Date of Birth is required and cannot be empty'
                },
                date: {
                    format: 'DD-MM-YYYY'
                }
            }
        },
        
        placeOfBirth: {
            validators: {
                notEmpty: {
                    message: 'The Place of Birth is required and cannot be empty'
                }
            }
        },
        
        age: {
            validators: {
                notEmpty: {
                    message: 'Age is required and cannot be empty'
                },
                digits: {
                  	message: 'Age is required'
                  },
                lessThan: {
                      value: 100,
                      inclusive: true,
                      message: 'Age must to be less than 60'
                  },
                 greaterThan: {
                      value: 10,
                      inclusive: false,
                      message: 'Age must to be greater than or equals to 18'
                  }
            }
        },
        
        religion: {
            validators: {
                notEmpty: {
                    message: 'Religion is required and cannot be empty'
                }
            }
        },
        
        idCard: {
            validators: {
                notEmpty: {
                    message: 'Id-Card is required and cannot be empty'
                },
                digits: {
                  	min:0,
                  	message: 'Id-Card is required'
                  },
                regexp: {
                    regexp: /^\d{13}$/,
                    message: 'Id-Card must contain 13 digits'
                    }
            }
        },
        
        issuedOffice: {
            validators: {
                notEmpty: {
                    message: 'The Issued Office is required and cannot be empty'
                }
            }
        },
        
        expiryDate: {
            validators: {
                notEmpty: {
                    message: 'The Expiry Date is required and cannot be empty'
                },
                date: {
                    format: 'DD-MM-YYYY'
                }
            }
        },
        
        height: {
            validators: {
                notEmpty: {
                    message: 'Height is required and cannot be empty'
                },
                digits: {
                  	min:0,
                  	message: 'Height is required'
                  },
            }
        },
        
        weigth: {
            validators: {
                notEmpty: {
                    message: 'Weigth is required and cannot be empty'
                },
                digits: {
                  	min:0,
                  	message: 'Weigth is required'
                  },
            }
        },
        
        sex: {
            validators: {
                notEmpty: {
                    message: 'Sex is required and cannot be empty'
                }
            }
        },
        
        maritalStatus: {
            validators: {
                notEmpty: {
                    message: 'The Marital Status is required and cannot be empty'
                }
            }
        },
        
        numberOfChildren: {
            validators: {
                notEmpty: {
                    message: 'The Number of Children is required and cannot be empty'
                },
                digits: {
                  	min:0,
                  	message: 'The Number of Children is required'
                  },
            }
        },
        
        spouseName: {
            validators: {
                notEmpty: {
                    message: 'Spouse Name is required and cannot be empty'
                }
            }
        },
        
        marriageCertificateNo: {
            validators: {
                notEmpty: {
                    message: 'Marriage Certificate No. is required and cannot be empty'
                },
                digits: {
                  	min:0,
                  	message: 'Marriage Certificate No. is required'
                  },
            }
        },
        
        issuedOffice2: {
            validators: {
                notEmpty: {
                    message: 'The Issued Office is required and cannot be empty'
                }
            }
        },
        
        address: {
            validators: {
                notEmpty: {
                    message: 'Address is required and cannot be empty'
                }
            }
        },
        
        occupation: {
            validators: {
                notEmpty: {
                    message: 'Occupation is required and cannot be empty'
                }
            }
        },
        
        'knowEmployed[]': {
            validators: {
                choice: {
                	min:1,
                	max:1,
                    message: 'Please Choose one'
                },
                notEmpty: {
                    message: 'Not empty'
                }
            }
        },
        
        descriptionYes: {
            validators: {
                notEmpty: {
                    message: 'Not empty'
                }
            }
        },
        officialDate: {
            validators: {
                notEmpty: {
                    message: 'Official Date is required and cannot be empty'
                },
                date: {
                    format: 'DD-MM-YYYY'
                }
            }
        },
        
        startWorkDate: {
            validators: {
                notEmpty: {
                    message: 'Start Work Date is required and cannot be empty'
                },
                date: {
                    format: 'DD-MM-YYYY'
                }
            }
        },
        
        endWorkDate: {
            validators: {
                notEmpty: {
                    message: 'End Work Date is required and cannot be empty'
                },
                date: {
                    format: 'DD-MM-YYYY'
                }
            }
        },
        
        positionAppliedFor: {
            validators: {
                notEmpty: {
                    message: 'Position Applied for is required and cannot be empty'
                }
            }
        },
        
        salaryExpected: {
            validators: {
                notEmpty: {
                    message: 'Salary Expected is required and cannot be empty'
                },
                digits: {
                  	min:0,
                  	message: 'Salary Expected is required'
                  },
            }
        },
        
        probationDate: {
            validators: {
                notEmpty: {
                    message: 'Probation Date is required and cannot be empty'
                },
                date: {
                    format: 'DD-MM-YYYY'
                }
            }
        },
        
        
        masCoreSkill: {
            validators: {
                notEmpty: {
                    message: 'Core Skill is required and cannot be empty'
                }
            }
        },
        
        masEmployment: {
            validators: {
                notEmpty: {
                    message: 'Employment is required and cannot be empty'
                }
            }
        },
        
        masDivision: {
            validators: {
                notEmpty: {
                    message: 'Division is required and cannot be empty'
                }
            }
        },
        
        masJoblevel: {
            validators: {
                notEmpty: {
                    message: 'Joblevel is required and cannot be empty'
                }
            }
        },
        
        technology: {
            validators: {
                notEmpty: {
                    message: 'Technology is required and cannot be empty'
                }
            }
        },
        
        masStaffType: {
            validators: {
                notEmpty: {
                    message: 'Staff Type is required and cannot be empty'
                }
            }
        }
        
    }
}); */


		var date1 = $( "#dateOfBirth" ).datetimepicker({
			format : "DD-MM-YYYY",
			viewMode : 'years'
		});
		
    	var date2 = $( "#expiryDate" ).datetimepicker({
    		format : "DD-MM-YYYY",
    		viewMode : 'years'
		});
    	
    	var date3 = $( "#fromYear" ).datetimepicker({
    		format : "DD-MM-YYYY",
    		viewMode : 'years'
		});
    	
    	var date4 = $( "#toYear" ).datetimepicker({
    		format : "DD-MM-YYYY",
    		viewMode : 'years'
		});
    	
    	var date5 = $( "#dateToBeDrafted" ).datetimepicker({
    		format : "DD-MM-YYYY",
    		viewMode : 'years'
		});
    	
    	var date6 = $( "#officialDate" ).datetimepicker({
    		format : "DD-MM-YYYY",
    		viewMode : 'years'
		});
    	
    	var date6 = $( "#startWorkDate" ).datetimepicker({
    		format : "DD-MM-YYYY",
    		viewMode : 'years'
		});
    	
    	var date6 = $( "#endWorkDate" ).datetimepicker({
    		format : "DD-MM-YYYY",
    		viewMode : 'years'
		});
    	
    	var date6 = $( "#probationDate" ).datetimepicker({
    		format : "DD-MM-YYYY",
    		viewMode : 'years'
		});
    	
	
		
    	$('[name="saveButton"]').click(function() {
    				
    				
    				alert("aaaa");
        			
    				$('[name="employeeForm"]').attr('action',
    						"${pageContext.request.contextPath}/employee/submit");
    				$('[name="employeeForm"]').submit();
    			});
    	
		
    	 dt=$("#tbResult").dataTable( 
    		 	 { 
    		 		"searching": false,
    				"bLengthChange": false,
    				"iDisplayLength": 10,
    				"pagingType": "simple_numbers",
    				"ordering": false,
    				"info": false,
    				"paging": false,
    		 		 
    		 	 
    		 		 "columnDefs": [
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
    	    	                 }, 
    	    	                 
    	    	                 {
    	    	                     "targets": [ 7 ],
    	    	                     "visible": false
    	    	                 },
    	    	                 
    	    	                 {
    	    	                     "targets": [ 8 ],
    	    	                     "visible": false
    	    	                 },
    	    	                 
    	    	                 {
    	    	                     "targets": [ 10 ],
    	    	                     "visible": false
    	    	                 }     	    	                 
    	    	           ]  
    			
    			} ); 
    	 
    	 
    	
 		//listAll();
		//$('input[type=file]').change(function(e){
		//$('.element-to-paste-filename').attr('value',e.target.files[0].name);
		//});

			    	
		
	 	$("#nameThai").val('bbb');
		$("#surnameThai").val('aaa');
		$("#nicknameThai").val('nnn');
		$("#nameEng").val('mmm');
		$("#surnameEng").val('ppp');
		$("#nicknameEng").val('aaa');
		$("#email").val('bb@hotmail.com');
		$("#telHome").val('02356995');
		$("#telMobile").val('02445533');
		$("#telFax").val('0235996');
		$("#congenitalDisease").val('help');
		$("#hospital").val('rama');
		$("#emergencyContact").val('bbaa');
		$("#relationshipWithEmergencyContact").val('mom');
		$("#emergencyContactAddress").val('adcd');
		$("#emergencyContactPhoneNumber").val('0235660');
		//$("#dateOfBirth").val(),
		$("#placeOfBirth").val('home');
		$("#age").val(25);
		$("#religion").val('christ');
		$("#idCard").val(122233333333);
		$("#issuedOffice").val('bnn');
		//$("#expiryDate").val(),
		$("#height").val(160);
		$("#weigth").val(45);
		$("#Female").prop('checked','checked');
		$("#Married").prop('checked','checked');
		$("#numberOfChildren").val('5');
		$("#spouseName").val('num');
		$("#marriageCertificateNo").val('2');
		$("#issuedOffice2").val('aa');
		$("#address").val('aaa/bb');
		$("#occupation").val('vvvv');
		$("#Newspaper").prop('checked','checked');
		$("#descriptionNewspaper").val('nn');
		$("#Magazine").prop('checked','checked');
		$("#descriptionMagazine").val('doo');
		$("#Website").prop('checked','checked');
		$("#descriptionWebsite").val('vv');
		$("#Friend").prop('checked','checked');
		$("#descriptionFriend").val('aa');
		$("#Other").prop('checked','checked');
		$("#descriptionOther").val('ll');
		$("#Yes").prop('checked','checked');
		$("#descriptionYes").val('yes');
		$("#No").prop('checked','checked');
		//$("#militaryServiceYes").prop('checked','checked');
		//$("#fromYear").val(),
		//$("#toYear").val(),
		$("#branchOfService").val('gg');
		$("#serviceNo").val('aa');
		//$("#militaryServiceNo").prop('checked','checked');
		$("#reasonsNo").val('bbb');
		//$("#dateToBeDrafted").val();
		$("#previousEmployerYes").prop('checked','checked');
		$("#previousEmployerNo").prop('checked','checked');
		$("#previousEmpreasonsNo").val('n');
		$("#statusemp").val('office'); 

		
		
			    	  
			    
			       $("#masLocation").change(function() {
			    	   alert('aaa');
			    	   var code = $("#masLocation").val();
			    	   alert(code);
			  	       $('#employeeCode').val(code+'10XXX');

			    	   
			    	   
			    	
			    	 <%--  $.ajax({  
				  	      type : "POST",   
				  	      url : "<%=request.getContextPath()%>/employee/findRunningNo/"+code,   
				  	      //data:  JSON.stringify(id),
				  	      dataType : 'json', 
				  	      contentType :"application/json; charset=utf-8",
				  	     
				  	      success : function(data) {  
				    		
				  	        $('#employeeCodeDto').val(data.rungingNumber);
				  	    	
					    	  
					    	  var empCode = parseInt($('#employeeCodeDto').val())+1;
					    	
					    		  
					    		  if($('#employeeCodeDto').val()==null&&$('#employeeCodeDto').val()===" "){
					    		  
					    		  	$('#employeeCode').val(code+'10'+'001');
					    		  	$('#employeeCodefalse').val(code+'10'+'001');
					    		  
					    		  }else if(empCode.toString().length==1){
					    			  $('#employeeCode').val(code+'10'+'00' +empCode.toString());
					    			  $('#employeeCodefalse').val(code+'10'+'00' +empCode.toString());
					    			  
					    		  }else if(empCode.toString().length==2){
					    			 
					    			  $('#employeeCode').val(code+'10'+'0'+empCode.toString());
					    			  $('#employeeCodefalse').val(code+'10'+'0'+empCode.toString());
					    			  
					    		  }else if(empCode.toString().length==3){
					    			  $('#employeeCode').val(code+'10'+empCode.toString());
					    			  $('#employeeCodefalse').val(code+'10'+empCode.toString());
					    			  
					    		  }
					    		  
					  	    	 
				  	     },  
				  	      error : function(e) {  	
				  	    	  
				  	    	  alert(e);
				  	    	
				  	     }  
				  	    }); --%>
			    	  

			    }); 
			       
			});
		

	
	

 		
 			$("#uploadFile").on("change", function()
		    {
		        var files = !!this.files ? this.files : [];
		        if (!files.length || !window.FileReader) return; // no file selected, or no FileReader support

		        if (/^image/.test( files[0].type)){ // only image file
		            var reader = new FileReader(); // instance of the FileReader
		            reader.readAsDataURL(files[0]); // read the local file

		            reader.onloadend = function(){ // set image data as background of div
		            	
		                $("#imagePreview").css("background-image", "url("+this.result+")");
   	              }
		        }
		        
		    });
 		
 		
 		
    		
    		
    $('body').on('click','#addaddress', function() {
    	
    		
  		$("#saveAddressButton").off("click").on("click", function()
  				
  		{
			
   			
   				
   			//$('[name="validateAddress"]').submit();
   			/* if($('#validateAddress').data('bootstrapValidator').isValid())
   				{
   				addAddress();
   				} */
			addAddress();
			
			
		});
    		
    });		
    		
    	

        $("#myModal").on("hide.bs.modal", function(event){
        	
        	clearDataModal();
       
        });
    		
    		
    
    	$("#deleteModal").on("show.bs.modal", function(event){
   	    	  
 	    	    var button = $(event.relatedTarget);
 	    		var idDelete = button.data("iddelete"); 
 	    		
 	     		
 	    		$(this).find("#delete").off("click").on("click", function()
 	    		{
 	    			doDeleteDataPost(idDelete);
 	    		});
 	    	  
 	      });
  		
  		
 /* --------------------------------------------------- Clear Address Function --------------------------------------------------- */	  		
  		function clearDataModal(){
  			
  			$('#addressType').val('');
  			$('#address1').val('');
  			$('#address2').val('');
  			$("#province").val('');
  			$('#zipcode').val('');
  			
  		}

   
   	/* ----------------------------------------------------- Add Address Function --------------------------------------------------- */		
			
			function addAddress() {
				alert("Do you want to Add Address ?"); 
				
 				 var addressId = $("#addressType").val();
				 var addressType = $("#addressType option:selected").text();
				 
				 var address1 = $("#address1").val();
				 var address2 = $("#address2").val();
				 
				 var provinceId = $("#province").val();
				 var province = $("#province option:selected").text();
				 
				 var zipcode= $("#zipcode").val();
				 
				 var id=0;
				 var status="add";
				 
				  dt.fnAddData([  id, 
				                  addressId,
				                  addressType,
					              address1,
					              address2,
					              provinceId,
					              province,
					              zipcode,
					              getIndex,
					              
					              '<button id="edit" type="button" class="btn btn-info btn-sm active"  data-target="#addModal" data-toggle="modal">Edit</button>'+
				    			  '<button id="delete" type="button" class="btn btn-danger btn-sm active" data-target="#deleteModal" data-toggle="modal">Delete</button>',
				    			 
				    			  status
				    				
			   	 ]); 
				  
				  
				  $('<input>').attr({
					    type: 'hidden',
					    id: 'dataaddressid'+getIndex,
					    name: 'addressList['+getIndex+'].id',
					    value: id
					}).appendTo('form');
				  
				  
				  $('<input>').attr({
					    type: 'hidden',
					    id: 'dataaddresstype'+getIndex,
					    name: 'addressList['+getIndex+'].addressTypeId',
					    value: addressId
					}).appendTo('form');
				  
				  $('<input>').attr({
					    type: 'hidden',
					    id: 'dataaddress1'+getIndex,
					    name: 'addressList['+getIndex+'].address1',
					    value: address1
					}).appendTo('form');
				  
				  $('<input>').attr({
					    type: 'hidden',
					    id: 'dataaddress2'+getIndex,
					    name: 'addressList['+getIndex+'].address2',
					    value: address2
					}).appendTo('form');
				  
				  $('<input>').attr({
					    type: 'hidden',
					    id: 'dataprovinceid'+getIndex,
					    name: 'addressList['+getIndex+'].masprovinceId',
					    value: provinceId
					}).appendTo('form');
				  
				  $('<input>').attr({
					    type: 'hidden',
					    id: 'datazipcode'+getIndex,
					    name: 'addressList['+getIndex+'].zipcode',
					    value: zipcode
					}).appendTo('form');
				  
				  $('<input>').attr({
					    type: 'hidden',
					    id: 'datastatus'+getIndex,
					    name: 'addressList['+getIndex+'].status',
					    value: status
					}).appendTo('form');
				  
				 
				 
				  
				  getIndex = getIndex+1; 
				
				 
				  $('#myModal').modal('toggle');
				  clearDataModal();
				  //$('#validateAddress').bootstrapValidator('resetForm', true);
   	
   	    }
   	
   	
/* ----------------------------------------------------- Edit Address Function --------------------------------------------------- */		
		 	
			$('#tbResult tbody').on( 'click', '#edit', function (){		   
		    	
				
		    	  rowUpdate = $(this).parents('tr');
		    	  dataUpdate = dt.fnGetData($(this).parents('tr'));
		    	  //alert("data[1]: "+dataUpdate[1]); 
		    	
		    	  editAddress(rowUpdate,dataUpdate);
		    	    	  
		  }); 
   	
   	

   	
   	function editAddress(rowUpdate,dataUpdate){
   		
   		$('#myModal').modal('show');
   		
   		$("#addressType").val(dataUpdate[1]);
   		$("#address1").val(dataUpdate[3]);
   		$("#address2").val(dataUpdate[4]);
   		$("#province").val(dataUpdate[5]);
   		$("#zipcode").val(dataUpdate[7]);
   		
   		
   		$('#saveAddressButton').off("click").on("click",function(){
   			
   			/* $('[name="validateAddress"]').submit();
   			if($('#validateAddress').data('bootstrapValidator').isValid()){ */
	   			
	   			
   			
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
		    dt.fnUpdate('edit', rowUpdate, 10);
		    
		    $("#dataaddressid"+dataUpdate[8]).attr('name', "addressList["+dataUpdate[8]+"].id");
		    $("#dataaddressid"+dataUpdate[8]).val(id);
		    
		    $("#dataaddresstype"+dataUpdate[8]).attr('name', "addressList["+dataUpdate[8]+"].addressTypeId");
		    $("#dataaddresstype"+dataUpdate[8]).val(addressId);
		    
		    $("#dataaddress1"+dataUpdate[8]).attr('name', "addressList["+dataUpdate[8]+"].address1");
		    $("#dataaddress1"+dataUpdate[8]).val(address1);
		    
		    $("#dataaddress2"+dataUpdate[8]).attr('name', "addressList["+dataUpdate[8]+"].address2");
		    $("#dataaddress2"+dataUpdate[8]).val(address2);
		    
		    $("#dataprovinceid"+dataUpdate[8]).attr('name', "addressList["+dataUpdate[8]+"].masprovinceId");
		    $("#dataprovinceid"+dataUpdate[8]).val(provinceId);
		    
		
		    $("#datazipcode"+dataUpdate[8]).attr('name', "addressList["+dataUpdate[8]+"].zipcode");
		    $("#datazipcode"+dataUpdate[8]).val(zipcode);
		    
		    $("#datastatus"+dataUpdate[8]).attr('name', "addressList["+dataUpdate[8]+"].status");
		    $("#datastatus"+dataUpdate[8]).val('edit');
		    
		    
		    
   	 }else{
   		 
   		dt.fnUpdate(addressId, rowUpdate, 1);
	    dt.fnUpdate(addressType, rowUpdate, 2);
	    dt.fnUpdate(address1, rowUpdate, 3);
	    dt.fnUpdate(address2, rowUpdate, 4);
	    dt.fnUpdate(provinceId, rowUpdate, 5);
	    dt.fnUpdate(province, rowUpdate, 6);
	    dt.fnUpdate(zipcode, rowUpdate, 7);
	    
	    $("#dataaddressid"+dataUpdate[8]).attr('name', "addressList["+dataUpdate[8]+"].id");
	    $("#dataaddressid"+dataUpdate[8]).val(id);
	    
	    $("#dataaddresstype"+dataUpdate[8]).attr('name', "addressList["+dataUpdate[8]+"].addressTypeId");
	    $("#dataaddresstype"+dataUpdate[8]).val(addressId);
	    
	    $("#dataaddress1"+dataUpdate[8]).attr('name', "addressList["+dataUpdate[8]+"].address1");
	    $("#dataaddress1"+dataUpdate[8]).val(address1);
	    
	    $("#dataaddress2"+dataUpdate[8]).attr('name', "addressList["+dataUpdate[8]+"].address2");
	    $("#dataaddress2"+dataUpdate[8]).val(address2);
	    
	    $("#dataprovinceid"+dataUpdate[8]).attr('name', "addressList["+dataUpdate[8]+"].masprovinceId");
	    $("#dataprovinceid"+dataUpdate[8]).val(provinceId);
	    
	
	    $("#datazipcode"+dataUpdate[8]).attr('name', "addressList["+dataUpdate[8]+"].zipcode");
	    $("#datazipcode"+dataUpdate[8]).val(zipcode);

   		
   	 }
   		
   		$('#myModal').modal('toggle');
   			//}
   		});
   	
   	
   	} 
   	
   	
   	
   	$('#tbResult tbody').on( 'click', '#delete', function (){	
   		
   	  var row = $(this).parents('tr');
      var dataDelete = dt.fnGetData($(this).parents('tr'));
      if(dataDelete[0]==0){
   	  
	   	 $('#yesButton').off("click").on("click",function(){ 
	   	  
		  dt.fnDeleteRow(row);
		
		  $( '#dataaddressid'+dataDelete[0] ).remove();
		  $( '#dataaddresstype'+dataDelete[0] ).remove();
		  $( '#dataaddress1'+dataDelete[0] ).remove();
		  $( '#dataaddress2'+dataDelete[0] ).remove();
		  $( '#dataprovinceid'+dataDelete[0] ).remove();
		  $( '#datazipcode'+dataDelete[0] ).remove();
		  $( '#datastatus'+dataDelete[0] ).remove();
		 
		 
		  $('#deleteModal').modal('toggle');
		  
	   	});
	 		
      }else{
    	  
    	  $('#yesButton').off("click").on("click",function(){ 
    		  
    		  alert(dataDelete[8]);
	    	  dt.fnUpdate('delete', row, 10);
	    	  $("#datastatus"+dataDelete[8]).attr('name', "addressList["+dataDelete[8]+"].status");
			  $("#datastatus"+dataDelete [8]).val('delete');
			  dt.fnDeleteRow(row);
			  $('#deleteModal').modal('toggle');

    	 	});
      }
   	 
   	 
   	clearDataModal();
 });
   	
   	
   	
   	
   	
   	
   	if($('#id').val()!=null||$('#id').val()!==""){
   		
   		
   	    listAddress($('#id').val());
   		
   	}		
   		
   		
   		
   		
   	
   	
   		function listAddress(id){
   			
//    			alert('list address: '+id);
				var status = 'unmodified';
   			
   			$.ajax({
				url : "${pageContext.request.contextPath}/employee/address/",
				data: JSON.stringify({"employeeId":id}),
				type : "POST",
				dataType : 'json', 
			  	//data : JSON.stringify({"id":id}),  
			  	contentType :"application/json; charset=utf-8",
				success : function(data) {
			    dt.fnClearTable();
				for (var i=0;i< data.length; i++) {
				
						dt.fnAddData([
						          data[i].id,
					              data[i].addressTypeId,
					              data[i].masaddresstypeName,
					              data[i].address1,
					              data[i].address2, 
					              data[i].masprovinceId, 
					              data[i].masprovinceName, 					              
					              data[i].zipcode,
					              getIndex,
						'<button id="edit" type="button" class="btn btn-info btn-sm active" data-addId="' + data[i].id + '" data-target="#addModal" data-toggle="modal">Edit</button>'+
						'<button id="delete" type="button" class="btn btn-danger btn-sm active" data-addId="' + data[i].id + '" data-target="#deleteModal" data-toggle="modal">Delete</button>',
						 "unmodified",
						]);
					 
						
						  $('<input>').attr({
							    type: 'hidden',
							    id: 'dataaddressid'+getIndex,
							    name: 'addressList['+getIndex+'].id',
							    value: data[i].id
							}).appendTo('form');
						  
						  
						  $('<input>').attr({
							    type: 'hidden',
							    id: 'dataaddresstype'+getIndex,
							    name: 'addressList['+getIndex+'].addressTypeId',
							    value: data[i].addressTypeId
							}).appendTo('form');
						  
						  $('<input>').attr({
							    type: 'hidden',
							    id: 'dataaddress1'+getIndex,
							    name: 'addressList['+getIndex+'].address1',
							    value: data[i].address1
							}).appendTo('form');
						  
						  $('<input>').attr({
							    type: 'hidden',
							    id: 'dataaddress2'+getIndex,
							    name: 'addressList['+getIndex+'].address2',
							    value: data[i].address2
							}).appendTo('form');
						  
						  $('<input>').attr({
							    type: 'hidden',
							    id: 'dataprovinceid'+getIndex,
							    name: 'addressList['+getIndex+'].masprovinceId',
							    value: data[i].masprovinceId
							}).appendTo('form');
						  
						  $('<input>').attr({
							    type: 'hidden',
							    id: 'datazipcode'+getIndex,
							    name: 'addressList['+getIndex+'].zipcode',
							    value: data[i].zipcode
							}).appendTo('form');
						  
						  $('<input>').attr({
							    type: 'hidden',
							    id: 'datastatus'+getIndex,
							    name: 'addressList['+getIndex+'].status',
							    value: status
							}).appendTo('form');
						
						
						getIndex = getIndex+1; 
// 						alert(getIndex);
			
				  }
				},
				
				
				error : function(data,testStatus,jqXHR) {
					alert('err');
					$("#outputajax").text(testStatus);
					}
				}); 
		}
	
   	
	
  
  </script>
