<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="<c:url value="/resources/css/error.css" />" rel="stylesheet" media="all">

  
  <div class="row-fluid"  style=" margin-top: 5%;margin-bottom:5%;>	 <!-- style=" margin-top: 100px;margin-bottom: 100px;" -->
	
   <div class="row" style=" margin-right:10px;">
	<div class="col-lg-6 col-md-6">
	          <div id="randerleft" align="center">
	            <img src="${pageContext.request.contextPath}/resource/images/errorimage.png"  style="height:90%;width:75%;margin: auto;">
	         </div>  	         
	</div>
	
	<div class="col-lg-6 col-md-6">
	          <h1>Error! 405</h1>	    
			  <p>Sorry, an error has occured, Method Not Allowed.</p>
			  
			  <p>Return to the homepage.</p>
			  <div class="gotohome">
				  	<a id="linkgotohome" href="<%=request.getContextPath()%>/listemployee" class="btn btn-danger" role="button">
				  	<span class="glyphicon glyphicon-home" staria-hidden="true" style="margin-left: 2px;">
				  	</span>
				  	Home
				  	</a>    
			  </div>
	</div>
  </div>
	
  </div> 