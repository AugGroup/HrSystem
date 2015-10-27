<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"  %>

<%-- <link href="<c:url value="/resources/css/header.css" />" rel="stylesheet" type="text/css">

  <style>
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
                }

#top-bar {
    height: 65px;
    background-color: #707070;
    box-shadow: 0px 2px 10px #1A1A1A;
}

#footer-bar {
    background-color: #FBCA00;
    text-align: right;
    width: 100%;
    height: 35px;
    position: absolute;
    bottom: 0;
    left: 0;
}

#footer-menu {
    padding: 10px 0;
    overflow: hidden;
}

#copy-right {
    font-family: supermarket;
    font-size: 12px;
    color: white;
    text-align: right;
}

.navbar-blacks .navbar-nav > li > a {
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

    .navbar-blacks .navbar-nav > li > a:hover {
        background-color: #ff9900;
        color: white;
    }

    .navbar-blacks .navbar-nav > li > a:focus {
       	background-color: #ff9900;
        color: white;
    }


.navbar-blacks {

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

.navbar-link > img:active{
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

.navbar-blacks > a:hover > b {
       	background-color: #fff;
        color: #292929;
        
}

.navbar-blacks > a:focus > b {
       	background-color: #fff;
        color: #292929;
        
}

/* .navbar-header img {
    background-color: #707070;
    box-shadow: 0px 2px 10px #1A1A1A;
} */

.container{
margin-left:40px;
margin-right:40px;
width: 93%;

}

.pull-right{
padding-right:55px;
}

/* Set Table */
table.dataTable thead th,
table.dataTable tfoot th {
    font-weight: normal;
}

table.dataTable thead th,
table.dataTable thead td {
    padding: 10px 18px;
    border-bottom: 0px none #111111;
}


table.dataTable.no-footer {
    border-bottom: 1px none #111111;
}

.defaultTable {
    border: none;
    border-collapse: separate;
    border-bottom: 0px;
}

    .defaultTable th {
        border-left: 0px solid #ffffff;
        border-right: 1px solid #ffffff;
    }

        .defaultTable th:last-child {
            border-right: none;
        }

    .defaultTable td {
        border-left: 0px solid #ffffff;
        border-right: 1px solid #ABABAB;
    }

        .defaultTable td:first-child {
            border-left: none;
        }

        .defaultTable td:last-child {
            border-right: none;
        }

    .defaultTable thead {
        background-color: #ababab;
    }

        .defaultTable thead tr th {
            color: #ffffff;
        }

.dataTables_info {
    padding-left: 10px;
}

.defaultTable tbody tr.odd{
    background-color:#e7e7e7;
}

.previous, .next {
    padding: 5px;
}

.glyphicon-calendar {
    color: white;
}

.input-group-addon {
    background-color: #ff9900;
}

.dl-horizontal dt {
    white-space: normal;
}

</style>

<nav class="navbar navbar-blacks navbar-fixed-top" id="top-bar" role="navigation">
        <div class="container">
            <div class="navbar-header" style="width:145px; height:75px; background-color: #FFF;box-shadow: 0px 2px 10px #1A1A1A; padding:5px;">

                <img style="width:135px; height:65px;" src="<c:url value="/resource/images/Logo_Augmentis.png" />"/>

            </div>
            <div class="navbar-collapse collapse" aria-expanded="false" style="height: 1px;">
                <div class="navbar-nav pull-left">
                    <ul class="nav navbar-nav">
                    	<li>
							<a class="navbar-link" href="<%=request.getContextPath()%>/listemployee"><span class="glyphicon glyphicon-home" aria-hidden="true"></span></a>
						</li>
                    </ul>
                    
                </div>

               <div class=" navbar-nav pull-right">
                <div class="row-md-12">
                
                    	<div id="bgLogout">
                        <span>
                        	<a id="linkLogout" class="navbar-link" href="<%=request.getContextPath()%>/logout" style="color:#636666;"><spring:message code="label.logout" /> | ${userLogin.username}</a>
                       	</span>
                   		</div>
                   		
                    	<div id="profileUser" hidden="hidden">
                        	<ul class="nav navbar-nav" id="profile"></ul>
                    	</div>
                    	
                	</div>
                <div class="form-group navbar navbar-blacks">
                <c:if test="${ pageContext.response.locale.language eq 'th' }">
				<a class="navbar-link" href="<%=request.getRequestURL()%>?locale=th"><img style="background-color:#fff;" src="<c:url value="/resource/images/flag_thailand.png" />"> </a>
				<a class="navbar-link" href="<%=request.getRequestURL()%>?locale=en"><img src="<c:url value="/resource/images/flag_usa.png" />"> </a>
                </c:if>
                <c:if test="${ pageContext.response.locale.language eq 'en' }">
				<a class="navbar-link" href="<%=request.getRequestURL()%>?locale=th"><img src="<c:url value="/resource/images/flag_thailand.png" />"> </a>
				<a class="navbar-link" href="<%=request.getRequestURL()%>?locale=en"><img style="background-color:#fff;" src="<c:url value="/resource/images/flag_usa.png" />"> </a>
                </c:if>
                <a class="navbar-link-report" href="#" class="dropdown-toggle" data-toggle="dropdown"><spring:message code="label.report" var="report" /><b class="caret">${report}  <span style= "padding-left:5px;font-size:10px;"class="glyphicon glyphicon-triangle-bottom"></span></b></a>
	        	
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
                </div>
               </div>
            </div>

        </div>
    
        <f:form method="post" commandName="locale" role="form">
        <f:input type="hidden" id="locale" path="locale" />
        </f:form>
</nav>

<script type="text/javascript">
/* $(document).ready(function() {
 	    var sPageURL = window.location.href;
	    var sURLVariables = sPageURL.split('?');	    
	    var sParameterName = sURLVariables[1].split('=');
	    if (sParameterName[1] == 'th') 
	        {
	    	$("#flag-tha").css('background-color', '#fff');
	    	$("#flag-usa").css('background-color', '#707070');
	        	
	        } 	
 	$("#flag-tha").click(function() {  
		$("#flag-tha").css('background-color', '#fff');
		$("#flag-usa").css('background-color', '#707070');
	}); 
	
	 var locale = "${locale}"; 
 	var locale = ${pageContext.request.locale.language};
	alert(locale);
	if(locale =='th'){
		$("#flag-tha").css('background-color', '#fff');
    	$("#flag-usa").css('background-color', '#707070');
	}
	if  (locale == 'en' || locale==''){
    	$("#flag-tha").css('background-color', '#707070');
	} 

}); */
</script> --%>


<nav class="navbar navbar-black">
  <div id="top-container" class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header" style="height: 65px">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
       <img id = "logo" src="<c:url value="/resource/images/Logo_Augmentis.png" />"/>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav" id = "nav-main">
        <li><a class="navbar-link" href="<%=request.getContextPath()%>/listemployee"><span class="glyphicon glyphicon-home" aria-hidden="true"></span></a></li>     
        <li><a class="navbar-link" href="<%=request.getContextPath()%>/reservation"> Reservation </a></li>
      </ul>
     
      <ul class="nav navbar-nav navbar-right">
      	<li id="bgLogout">
             <a id="linkLogout" class="navbar-link" href="<%=request.getContextPath()%>/logout"><spring:message code="label.logout" /> | ${userLogin.username} </a>        
        </li>
      </ul>
      <div class="clearFloat"></div>
       <ul class="nav navbar-nav navbar-right" id="language-button">
      		<c:if test="${ pageContext.response.locale.language eq 'th' }">
				<li>
					<a id="language-link" class="navbar-link" href="<%=request.getRequestURL()%>?locale=th"><img style="background-color:#fff;" src="<c:url value="/resource/images/flag_thailand.png" />"> </a>
					<a id="language-link" class="navbar-link" href="<%=request.getRequestURL()%>?locale=en" style="padding: 0px"><img src="<c:url value="/resource/images/flag_usa.png" />"> </a>
				</li>
            </c:if>
            <c:if test="${ pageContext.response.locale.language eq 'en' }">
				<li id = "taplogout-down">
					<a id="language-link" class="navbar-link" href="<%=request.getRequestURL()%>?locale=th"><img src="<c:url value="/resource/images/flag_thailand.png" />"> </a>
					<a id="language-link" class="navbar-link" href="<%=request.getRequestURL()%>?locale=en" style="padding: 0px"><img style="background-color:#fff;" src="<c:url value="/resource/images/flag_usa.png" />"> </a>
				</li>
            </c:if>		
            
            <li>
            	<a class="navbar-link-report" id = "btn_report"href="#" class="dropdown-toggle" data-toggle="dropdown"><spring:message code="label.report" var="report" />${report}  <span style= "padding-left:5px;font-size:10px;"class="glyphicon glyphicon-triangle-bottom"></span></a>
	        	
		    		<ul class="dropdown-menu" id="dropdown-menu-report">
		    			<li>
		    				<a id = "reportEmpName-tap" href="<%=request.getContextPath()%>/employee/reportEmpName"><spring:message code="report.empName" /></a>
		    			</li>
		    			<li>
		    				<a id = "reportEmpCode-tap" href="<%=request.getContextPath()%>/employee/reportEmpCode"><spring:message code="report.empCode" /></a>
		    			</li>
		    			
		    			<li>
		    				<a  id = "reportStatusEmp-tap" href="<%=request.getContextPath()%>/employee/ReportStatusEmp"><spring:message code="report.empStatus" /></a>
		    			</li>
		    			
		    			<li>
		    				<a id = "reportLeave-tap" href="<%=request.getContextPath()%>/employee/ReportLeave"><spring:message code="report.empLeave" /></a>
		    			</li>
		    		
		    		</ul>
		    		
		    </li>    		
      </ul>
      
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>




