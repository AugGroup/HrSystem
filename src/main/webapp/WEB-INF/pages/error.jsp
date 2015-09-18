<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
body {
background-image: src="<c:url value="/resource/images/augmentis-logo.png" />" />;
.error-template {padding: 40px 15px;text-align: center;}
.error-actions {margin-top:15px;margin-bottom:15px;}
.error-actions .btn { margin-right:10px; }
</style>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="error-template">
                <h1>
                    Oops!</h1>
                <c:if test="${not empty exception.errCode}">
                	<h2>
                    	${exception.errCode}
                    </h2>
                </c:if>
                <div class="error-details">
                <c:if test="${not empty exception.errMsg}">
					<h4>
                   		${exception.errMsg}
                   	</h4>
                </c:if>
                </div>
            </div>
        </div>
    </div>
</div>