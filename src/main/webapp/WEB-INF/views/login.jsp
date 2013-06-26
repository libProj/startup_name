<%@page language="java" contentType="text/html; charset=utf8" pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title><spring:message code="label.startup.name"/></title>
	<!-- Bootstrap -->
	<link href="resources/css/bootstrap-2.3.2/bootstrap-responsive.css" rel="stylesheet">
	<link href="resources/css/bootstrap-2.3.2/bootstrap.css" rel="stylesheet">
	<script src="resources/js/bootstrap-2.3.2/bootstrap.js"></script>
</head>

<body>
	<div class="container">
        <div class="span4 offset4">
            <form class="form-signin" method="POST" action="<c:url value="/j_spring_security_check"/>" >
            
	            <strong> <p class="lead"><spring:message code="label.startup.name"/></p> </strong>
	            
				</br>	
					            
                <input class="input-block-level" autocomplete="off" type="text" placeholder="<spring:message code="label.username"/>" name="j_username"/>
                <input class="input-block-level" autocomplete="off" type="password" placeholder="<spring:message code="label.password"/>" name="j_password"/>
				
				<c:if test="${loginFailed}">
                	<div class="alert alert-error">
                		<button type="button" class="close" data-dismiss="alert">×</button>
                        <spring:message code="message.login.error"/>
					</div>
                </c:if>
				
				<div class="control-group">	
					<input type="checkbox" name="_spring_security_remember_me" />
                    <spring:message code="label.remember-me"/>
				</div>
				                
                <button class="btn btn-success btn-block" type="submit"><spring:message code="label.sign.in"/></button>
            </form>
    	</div>
	</div>
</body>
</html>