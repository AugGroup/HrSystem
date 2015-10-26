<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- jQuery -->
<script src="<c:url value="/resource/bootstrap/js/jquery-1.11.2.js" />"></script>

<!-- Bootstrap -->
<link href="<c:url value="/resource/bootstrap/css/bootstrap.css" />" rel="stylesheet" media="all">
<script src="<c:url value="/resource/bootstrap/js/bootstrap.js" />"></script>
<link href="<c:url value="/resources/css/header.css" />" rel="stylesheet" media="all">
<link rel="stylesheet" type="text/css" href="<c:url value ="/resources/css/errorPage.css"/>">
<title>Error 415 page</title>
<style>
body {
	background-image: url(${pageContext.request.contextPath}/resource/images/BG_W.jpg);
 	-moz-background-size: cover;
	-webkit-background-size: cover;
	background-size: cover;
	background-position: top center !important;
	background-repeat: no-repeat !important;
	background-attachment: fixed; 
} 
</style>


</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<br/>
<div class="container">
  <div class="row-fluid"  style=" margin-top: 150px;margin-bottom: 150px;">	 <!-- style=" margin-top: 100px;margin-bottom: 100px;" -->
	
   <div class="row" style=" margin-right:10px;">
	<div class="col col-lg-6 col-md-6">
	          <div id="randerleft" align="center">
	            <img src="${pageContext.request.contextPath}/resource/images/errorimage.png"  style="height:90%;width:90%;margin: auto;">
	         </div>  	         
	</div>
	
	<div class="col col-lg-6 col-md-6">
	          <h1>Error! 415</h1>	    
			  <p>Sorry, an error has occured, Unsupported Media Type.</p>
			  
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
</div>

	<footer class='footer'>
	<div class="container">
		<div class="text-muted">
			<span class="spe-character">©</span> 2011-2015 Augmentis (Thailand)
			Limited. All rights reserved.
		</div>
	</div>
	</footer>


</body>
</html>


