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

<title>Error 404 page</title>
<style >


#imagePreview {
    width: 150px;
    height: 150px;
    background-position: center;
    background-size: cover;
    -webkit-box-shadow: 0 0 1px 1px rgba(0, 0, 0, .3);
    display: inline-block;
}
body {
	background-image: url(${pageContext.request.contextPath}/resource/images/BG_W.jpg);
 	-moz-background-size: cover;
	-webkit-background-size: cover;
	background-size: cover;
	background-position: top center !important;
	background-repeat: no-repeat !important;
	background-attachment: fixed; 
} 


h1{
	border: none; 
	box-shadow: none;
	margin: 0; 
	padding: 0;
	font-size: 4.5em; 
	text-shadow: 3px 3px 0 rgba(0, 0, 0, 0.1);
	font-family: 'Dosis-SemiBold';
	font-weight: bold;
}
 

/* .navbar-header {
    margin-left:5%;
} */

.contain{ 
	margin-top: 5%;
}

/* .navbar-inverse {
	position:absolute;
	background-color: #707070;
	background-image: linear-gradient(to bottom, #707070 0%, #707070 100%); 
	border-color: #C7A5A5;
	height: 72px;
}

.navbar-inverse .navbar-nav > li > a{
	color:#fff;
} */


#bgLogout{
	margin-top:2%;
	background-color: #ffffff;
	height: 100%;
	width: 100%;
	padding-top:2%;
	padding-bottom: 2%;
}


/* .navbar-default{
	background-image: linear-gradient(to bottom, #ffc000 0%, #ffc000 100%); 
} */

a{
	color: #fff;
}


/* .navbar-link-report b{
	width:5px;
	height:5px;
	margin-top:5px;
	padding-left:2px;
	margin-left:5px;
	border:1px solid white; 
	font-family: Dosis-Regular;
	font-size:13px;
	color:#fff;
}  */


#Logout {
    position: absolute;
    right: 2%;
    margin-top: 10px;
}

#bgLogout {
     background-color: #ffffff;
     width: 183px;
     height: 25px;
     font-size: 16px;
     text-align: center;
     color: #808080;
}

#profileUser {
     background-color: #ffd800;
     width: 160px;
     height: 200px;
     right: 5px;
}

#userEmpID {
     color: #636666;
     font-family: Dosis-Regular;
}

#linkLogout {
     color: #636666;
     text-decoration: none;
     font-family: Dosis-Regular;
     background-color: white;
     margin-top:5px;
     margin-right:17px;
     padding: 3px;
     width: 182px;
     text-align: center;
}


/* Tab Setting */
.tab-content {
    background-color: #eeeeee;
    border: 5px solid #eeeeee;
    border-radius: 3px;
}

.nav-tabs > li.active > a, .nav-tabs > li.active > a:hover, .nav-tabs > li.active > a:focus {
    color: #fa9900;
    cursor: pointer;
    background-color: #eeeeee;
    border: 1px solid #dddddd;
    border-bottom-color: transparent;
    border-top: 3px solid #fa9900;
    border-radius: 3px;
}

.nav-tabs > li > a {
    color: #414141;
    cursor: pointer;
    background-color: #eeeeee;
    border: 1px solid #dddddd;
    border-top: 3px solid #414141;
    border-radius: 3px;
}


.nav-tabs > li > a:hover {
    color: #b1b1b1;
    cursor: pointer;
    background-color: #eeeeee;
    border: 1px solid #dddddd;
    border-top: 3px solid #b1b1b1;
    border-radius: 3px;
}

.navbar-defaults .navbar-nav > li > a {
    height: 65px;
    padding-top: 25px;
    padding-left: 20px;
    padding-right: 20px;
    font-family: Dosis-SemiBold;
    font-weight: bold;
    font-size: 18px;
    background-color: #707070;
    color: white;
    
}

.navbar-defaults .navbar-nav > li > a:hover {
    background-color: #ff9900;
    color: white;
}

.navbar-defaults .navbar-nav > li > a:focus {
    background-color: #ff9900;
    color: white;
}


.navbar-defaults {

    border-color: transparent;
}


.navbar-link {
	position:center;
}

.navbar-link img {
	width:40px;
	height:25px;
	border:1px solid white; 
	padding-left:7px;
	padding-right:7px;
	margin-top:5px;
	margin-right:7px;
}

.navbar-link > img:hover {
	background-color: #fff;
    color: white;
}

.navbar-link > img:focus{
    background-color: #fff;
    color: white;
}


.navbar-link > img:visited{
    background-color: #fff;
    color: #292929;        
}

.navbar-link-report b{
	width:75px;
	height:25px;
	margin-top:5px;
	padding-left:3px;
	margin-left:5px;
	border:1px solid white; 
	font-family: Dosis-Regular;
	font-size:16px;
	color:#fff;
}

.navbar-defaults > a:hover > b {
    background-color: #fff;
    color: #292929;        
}

.navbar-defaults > a:focus > b {
       	background-color: #fff;
        color: #292929;       
}



.container{
	margin-left:40px;
	margin-right:40px;
	width: 93%;

}



p{
	margin-top: 4%;
	font-family: Dosis-SemiBold;
	font-size: 1.6em;
}


.btn-default{
	background-color: #000;
} 

.btn{
	border-radius:0;
}


.btn-danger{
	 background-color: #ff0000;
	 /* -moz-box-shadow:    inset 0 0 10px #c01717;
     -webkit-box-shadow: inset 0 0 10px #c01717;
     box-shadow:         inset 0 0 10px #c01717; */
     
    -moz-box-shadow:    inset  0 -15px 15px -15px grey;
    -webkit-box-shadow: inset  0 -15px 15px -15px grey;
     box-shadow:        inset  0 -15px 15px -15px grey;
}

#linkgotohome{
	font-family: Dosis-SemiBold;
	font-size: 1.5em;
}


.footercontain{
	padding-right: 2%;
	margin-top: 1%;
	color: #fff;
}

#home{
	width: 100%;
	height: 100%;
}


.fonthome{
	font-size:  18px;
	text-align: center;
	margin: 5px;
	padding:6px;
	color: white;
}

.linkhome {
  	width: 60px;
  	height: 71px;
}

#home >  li > a:hover {
	background-color: #ff9900;
	color: white;
}




/* Sticky footer styles
-------------------------------------------------- */
html {
  position: relative
  height: auto;
}


.footer {
  position:  relative;
  bottom:0;
  width: 100%;
  /* Set the fixed height of the footer here */
  height: 60px; 
  background-color: #ffc000;
  margin-top: 0;
  /* background-image: linear-gradient(to bottom, #ffc000 0%, #ffc000 100%); */ 
  
}


/* Custom page CSS
-------------------------------------------------- */
/* Not required for template or sticky footer method. */

body > .container {
  position: relative;
  min-height:100%; 
  padding: 60px 15px 0; 
}

 .container .text-muted {
   padding:1%;
   text-align: right;
   color: #fff;
   font-family: Dosis-Regular;   
} 


.footer > .container {
  padding-right: 15px;
  padding-left: 15px;
}

code {
  font-size: 20%;
}


.navbar{
	position:absolute;
	background-color: #707070;
	background-image: linear-gradient(to bottom, #707070 0%, #707070 100%); 
	border-color: #C7A5A5;
	height: 65px;
	
}

#logo{
	width:145px; 
	height:75px; 
	background-color: #707070; 
	box-shadow: 0px 2px 10px #1A1A1A;
}

.clearFloat{
 clear:both;
}


.container1{
	margin-left: 40px;
	margin-right: 95px;
} 

#langReport{
	margin-top: -45px;
}

@media ( max-width: 768px ) {
	.container1{
		margin-left: 10px;
		margin-right: 0px;
	} 
	
	#navbar-collapse{
		background-color: #707070;
		margin-left: -10px;
		margin-bottom: 10px;
	}
	
	div.navbar-header{
		margin-bottom: -10px;
	}
	
	.navbar-collapse.in{
		overflow-y: hidden;
	}
	
	.navbar-nav {
    	margin: 0px;
	}
	
	a#linkLogout.navbar-link{
		margin-bottom: 50px;
	}
	
	ul#langReport{
		margin-bottom: 10px;
	}
	
	#linkLogout{
	    background-color: #707070 !important;
		width: 100% !important;
		height: 25px !important;
		text-align: left !important;
		color: #fff !important;
		margin-top: -10px !important;     
	}
	
	.fonthome{
		font-size:  18px;
		text-align: center;
		margin: 10px;
		padding:15px;
		color: white;
	}	
	
	/* ul.nav.navbar-nav>li>a>.fonthome:hover{
		background-color: #ff9900;
	}  
	
	
	ul.nav.navbar-nav>li>a:hover{
		background-color: none;
		height: auto;
	}   */
	
	
	#linkLogout {
	     color: #fff ;
	     text-decoration: none;
	     font-family: Dosis-Regular;
	     font-size: large;
	     margin-top:0;
	     margin-right:17px;
	     padding-left: 3px;
	     padding-right: 3px;
	     padding-top:3px;
	     padding-bottom:10px;
	     width: 182px;
	     text-align: left;
	     
	}	 
	
	
	span.glyphicon.glyphicon-home.fonthome{
		margin-left: -10px;
		padding-left: 0;
		/* padding-top: 5px; */
	}
	
	.navbar-nav > li > a{
		padding-top: 20px;
		padding-bottom: 1px;
	}
	
	.nav li>a#btn_report {
	  width: 100% !important;
	  height: 40px !important;
	  border:none !important;
	  padding: 10px 5px !important;
	  margin-top: 0px !important;
	 }
	 
	 .navbar-link-report b{
		width:100%;
		height:25px;
		margin-top:5px;
		padding-left:3px;
		margin-left:5px;
		border:none; 
		font-family: Dosis-Regular;
		font-size:16px;
		color:#fff;	
	}
	
	
	.navbar-black .navbar-nav > .open > a:hover,
	.navbar-black .navbar-nav > .open > a:focus {
	  background-color: #444;
	  color: rgb(222,145,4);
	}
	
	
		
	.navbar-nav > li>a#btn_report {
		 width: 86px;
		 height: 27px;
		 border: 2px solid #ffffff;
		 padding: 2px 2px 2px 15px;
		 margin-top: 4px;
		 text-decoration: none;
	}
	
	
}


/* ul.nav.navbar-nav>li>a:hover{
	background-color: #ff9900;
	height: 65px;
} */  

/* .nav > li > a:hover{
	background-color: #000;
}
 */

.navbar-link img {
width:40px;
height:25px;
border:1px solid white; 
padding-left:7px;
padding-right:7px;
margin-top:5px;
margin-right:7px;
}


a#en{
	margin: -35px;
}

li.enth{
margin-top:-13px;
}

</style>

</head>
<body>


 <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container1">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          
             
         	<img id="logo" src="<c:url value="/resource/images/Logo_Augmentis.png" />"/>                     	
               
        </div>
        
        
        <div id="navbar-collapse" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
  			<li>
  		   		<a  href="<%=request.getContextPath()%>/listemployee"><span class="glyphicon glyphicon-home fonthome" aria-hidden="true"></span></a>
          	</li>
          </ul>
          
          <ul class="nav navbar-nav navbar-right ">  
            <li><a id="linkLogout" class="navbar-link" href="<%=request.getContextPath()%>/logout" style="color:#636666;">
            <spring:message code="label.logout" /> | ${userLogin.username}</a></li>
          </ul>
          
          <div class="clearFloat"></div>
          
          
          <ul class="nav navbar-nav navbar-right" id="langReport">
  
                    <c:if test="${ pageContext.response.locale.language eq 'th' }">
					<li class="enth"> 
					<a id="th" class="navbar-link" style="display:inline ;"  href="<%=request.getRequestURL()%>?locale=th"><img id="imgth" style="background-color:#fff;" src="<c:url value="/resource/images/flag_thailand.png" />"> </a>					
					<a id="en" class="navbar-link" style="display:inline ;"  href="<%=request.getRequestURL()%>?locale=en"><img id="imgeng" src="<c:url value="/resource/images/flag_usa.png" />"> </a>
	               </li> 
	                </c:if>
	                
	                <c:if test="${ pageContext.response.locale.language eq 'en' }">
					<li class="enth"> 
					<a id="th" class="navbar-link" style="display:inline-block ;" href="<%=request.getRequestURL()%>?locale=th"><img id="imgth" src="<c:url value="/resource/images/flag_thailand.png" />"> </a>
					<a id="en" class="navbar-link" style="display:inline-block  ;"  href="<%=request.getRequestURL()%>?locale=en"><img id="imgeng" style="background-color:#fff;" src="<c:url value="/resource/images/flag_usa.png" />"> </a>
	                </li>
	                </c:if>
                
                
                <%-- <a class="navbar-link-report" id="btn_report" href="#" class="dropdown-toggle" data-toggle="dropdown" ><spring:message code="label.report" var="report" /><b class="caret">${report}  <span style= "padding-left:5px;font-size:10px;"class="glyphicon glyphicon-triangle-bottom"></span></b></a> --%>
	        		
	        		<li >
	        		
	        		<a class="navbar-link-report" id="btn_report" href="#" class="dropdown-toggle" data-toggle="dropdown" ><spring:message code="label.report" var="report" /><b class="caret">${report}  <span style= "padding-left:5px;font-size:10px;"class="glyphicon glyphicon-triangle-bottom"></span></b></a> 
		    		
		    		
		    		<ul class="dropdown-menu">
		    			<li>
		    				<a href="<%=request.getContextPath()%>/employee/reportEmpName"><spring:message code="report.empName" /></a>
		    			</li>
		    			<li>
		    				<a href="<%=request.getContextPath()%>/employee/reportEmpCode"><spring:message code="report.empCode" /></a>
		    			</li>
		    			
		    			<li>
		    				<a  href="<%=request.getContextPath()%>/employee/ReportStatusEmp"><spring:message code="report.empStatus" /></a>
		    			</li>
		    			
		    			<li>
		    				<a href="<%=request.getContextPath()%>/employee/ReportLeave"><spring:message code="report.empLeave" /></a>
		    			</li>
		    			
		    		</ul>
		    		
		    	</li>
           </ul>
        </div>
      </div>
    </nav>



<br/>
<div class="container">
  <div class="row-fluid"  style=" margin-top: 150px;margin-bottom: 150px;">	 <!-- style=" margin-top: 100px;margin-bottom: 100px;" -->
	
   <div class="row" style=" margin-right:10px;">
	<div class="col col-lg-5 col-md-5">
	          <div id="randerleft" align="center">
	            <img src="${pageContext.request.contextPath}/resource/images/errorimage.png"  style="height:90%;width:90%;margin: auto;">
	         </div>  	         
	</div>
	
	<div class="col col-lg-6 col-md-6">
	          <h1>Error! 404</h1>	    
			  <p>The page you are looking for might have been remove,
			  has its name and changed or is
			  temporarily unavailable.</p>
			  
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


