<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <link href="resources/css/bootstrap-2.3.2/bootstrap-responsive.css" rel="stylesheet">
    <link href="resources/css/bootstrap-2.3.2/bootstrap.css" rel="stylesheet">
    <title><spring:message code="label.startup.name"/></title>
</head>
<body>
<%--Error details are got from ErrorController class--%>
<div class="row">
    <div class="span12 offset3">
        <h2><c:out value="${statusCode}"/> error</h2>
        <blockquote>
            <p><c:out value="${exceptionMessage}"/></p>
            <small>The last words from server after you asked about <c:out value="${requestUri}"/></small>
        </blockquote>
    </div>
</div>
</body>
</html>