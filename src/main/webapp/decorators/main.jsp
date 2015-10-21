<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Spring -->	
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!-- jQuery -->
<script src="<c:url value="/resource/bootstrap/js/jquery-1.11.2.js" />"></script>

<!-- Bootstrap -->
<link href="<c:url value="/resource/bootstrap/css/bootstrap.css" />" rel="stylesheet" media="all">
<link href="<c:url value="/resource/bootstrap/css/bootstrap-theme.css" />" rel="stylesheet">
<script src="<c:url value="/resource/bootstrap/js/bootstrap.js" />"></script>

<!-- Validator -->
<link href="<c:url value="/resource/bootstrapvalidator/dist/css/bootstrapValidator.css" />" rel="stylesheet" media="all">
<script src="<c:url value="/resource/bootstrapvalidator/dist/js/bootstrapValidator.js" />"></script>

<!-- JQuery Validator -->
<%-- <script src="<c:url value="/resource/jqueryvalidate/jquery.js" />"></script>--%>
<script src="<c:url value="/resource/jqueryvalidate/jquery.validate.min.js" />"></script> 
<%-- <script src="<c:url value="/resource/bootstrap/js/jquery.validate.js" />"></script> --%>

<!-- Date Time Picker -->
<script src="<c:url value="/resource/moment/js/moment.js" />"></script>
<script src="<c:url value="/resource/datetimepicker/js/bootstrap-datetimepicker.js" />"></script>
<link href="<c:url value="/resource/datetimepicker/css/bootstrap-datetimepicker.min.css" />" rel="stylesheet" media="all">

<!-- jQuery dataTable -->
<script src="<c:url value="/resource/datatable/js/jquery.dataTables.js" />"></script>
<link href="<c:url value="/resource/datatable/css/jquery.dataTables.css" />" rel="stylesheet" media="all">
<link href="<c:url value="/resource/datatable/css/jquery.dataTables_themeroller.css" />" rel="stylesheet" media="all">

<!-- dataTable Bootstrap -->
<script src="<c:url value="/resource/bootstrap/js/dataTables.bootstrap.js" />"></script>

<!-- Date Picker -->
<script src="<c:url value="/resource/datepicker/js/bootstrap-datepicker.js" />"></script>
<link href="<c:url value="/resource/datepicker/css/datepicker.css" />" rel="stylesheet" media="all">

<!-- clock Picker -->
<script src="<c:url value="/resource/clockpicker/js/bootstrap-clockpicker.js" />"></script>
<link href="<c:url value="/resource/clockpicker/css/bootstrap-clockpicker.css" />" rel="stylesheet" media="all">

<!-- Browse-remove picture -->
<script src="<c:url value="/resource/bootstrap/js/fileinput.min.js" />"></script>
<link href="<c:url value="/resource/bootstrap/css/fileinput.min.css" />" rel="stylesheet"	media="all">

<!-- Mask Plugin -->
<script src="<c:url value="/resource/mask/js/jquery.maskedinput.js" />"></script>
<script src="<c:url value="/resource/mask/js/jquery.mask.js" />"></script>

<!-- PNotify -->
<script src="<c:url value="/resource/pnotify/js/pnotify.custom.min.js" />"></script>
<link href="<c:url value="/resource/pnotify/css/pnotify.custom.min.css" />" rel="stylesheet"	media="all">

<!-- Sweet-alert -->
<script src="<c:url value="/resources/resource/sweetalert/js/sweet-alert.js" />"></script>
<link href="<c:url value="/resources/resource/sweetalert/css/sweet-alert.css" />" rel="stylesheet" media="all">


<!-- Autonumeric Plugin -->
<script src="<c:url value="/resource/autonumeric/js/autoNumeric.js" />"></script>


<!-- Main -->
<link href="<c:url value="/resource/bootstrap/css/main.css" />" rel="stylesheet" media="all">

<!-- footer -->
<link href="<c:url value="/resources/css/footer.css" />" rel="stylesheet" media="all">


<!-- Accounting Plugin -->
<script src="<c:url value="/resource/accounting/accounting.js" />"></script>

<!-- Fontawesome -->
<link href="<c:url value="/resource/fontawesome/css/font-awesome.css" />" rel="stylesheet" media="all">



<!-- Alertify Plugin -->
<%-- <script src="<c:url value="/resource/alertify/js/alertify.min.js" />"></script>
<link href="<c:url value="/resource/alertify/css/alertify.core.css" />" rel="stylesheet" media="all">
<link href="<c:url value="/resource/alertify/css/alertify.default.css" />" rel="stylesheet" media="all"> 
<link href="<c:url value="/resource/alertify/css/alertify.bootstrap.css" />" rel="stylesheet" media="all"> --%>



<style >

body {
	background-image: url(${pageContext.request.contextPath}/resource/images/BG_W.jpg);
	-moz-background-size: cover;
	-webkit-background-size: cover;
	background-size: cover;
	background-position: top center !important;
	background-repeat: no-repeat !important;
	background-attachment: fixed;
    /* padding-top: 70px;  */ 

} 

.scrollToTop{
  width:60px;
  height:60px;  
  position:fixed;
  bottom:55px;
  right:5px;
  
 }

</style>

<script type="text/javascript">


$.ajaxSetup({
    timeout: 5000,
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


/*  ------------------------------------------------------ Go To Top -------------------------------------------------*/

	var myRedirect = function(redirectUrl,err,testStatus) {
	  	var form = $('<form id="form" action="' + redirectUrl + '" method="post">' +
	  	'<input type="hidden" name="error" value="'+err+'" />' +
	  	'</form>');
	  	$('body').append(form);
	  	$('#form').submit();
	  };
	  
	  
	  

</script>

<script type="text/javascript">
	  $(document).ready(function(){
	   $('#goToTop').hide();
	   //Check to see if the window is top if not then display button
	   $(window).scroll(function(){
	    if ($(this).scrollTop() > 300) {
	     
	     $('.scrollToTop').fadeIn();
	    } else {
	     $('.scrollToTop').fadeOut();
	    }
	   });
	   
	   //Click event to scroll to top
	   $('.scrollToTop').click(function(){
	    $('html, body').animate({scrollTop : 0},1000);
	    return false;
	   });
	   
	  });
</script>
</head>
<body>
	<jsp:include page="valiable.jsp"></jsp:include>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container"> 
		<decorator:body/>
	</div>
	<a href="#" class="scrollToTop" id="goToTop" ><img src = "${pageContext.request.contextPath}/resource/images/arrow-top.png" width="54px" height="54px" /></a>
	<jsp:include page="footer.jsp"></jsp:include>
	
</body>
		
</html>