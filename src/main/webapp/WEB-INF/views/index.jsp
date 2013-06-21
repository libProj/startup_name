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
	
	<!-- JQuery-2.0.1 -->
	<script src="resources/js/jquery-2.0.1/jquery-2.0.1.js"></script>
</head>

<body>

	<!-- Navigation -->
	<div class="navbar">
    	<div class="navbar-inner">
      		<div class="container" style="width: auto;">
        		<a class="brand"><spring:message code="label.startup.name"/></a>
        		<div class="nav-collapse">
					<ul class="nav pull-right">
            			<li class="active">
            				<a href="<c:url value="/j_spring_security_logout" />"><spring:message code="label.logout"/></a>
        				</li>
		 	        </ul>
        		</div>
      		</div>
    	</div>
  	</div>

	<div class="container">
		
		<div class="page-header">
    		<h3> Welcome! </h3>
  		</div>

	</div>

</body>

</html>