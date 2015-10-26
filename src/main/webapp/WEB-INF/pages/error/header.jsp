<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"  %>

<link rel="stylesheet" type="text/css" href="<c:url value ="/resources/css/errorPage.css"/>">
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
      <ul class="nav navbar-nav">
        <li style="margin-top: 10px"><a class="navbar-link" href="<%=request.getContextPath()%>/listemployee"><span class="glyphicon glyphicon-home" aria-hidden="true"></span></a></li>     
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
					<a style="margin-right: -8px;" id="language-link" class="navbar-link" href="<%=request.getRequestURL()%>?locale=th"><img style="background-color:#fff;" src="<c:url value="/resource/images/flag_thailand.png" />"> </a>
					<a id="language-link" class="navbar-link" href="<%=request.getRequestURL()%>?locale=en" style="padding: 0px"><img src="<c:url value="/resource/images/flag_usa.png" />"> </a>
				</li>
            </c:if>
            <c:if test="${ pageContext.response.locale.language eq 'en' }">
				<li id = "taplogout-down">
					<a style="margin-right: -8px;"id="language-link" class="navbar-link" href="<%=request.getRequestURL()%>?locale=th"><img src="<c:url value="/resource/images/flag_thailand.png" />"> </a>
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




