<%@page language="java" contentType="text/html; charset=utf8" pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- EXAMPLE USER PAGE -->

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

    <!-- Custom scripts -->
    <script src="resources/js/startup_name-1.0/user_scripts/add_user.js"></script>
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
        <h3> Add user </h3>
    </div>

    <form id="add_user_form" class="well form-horizontal">

             <!-- Username -->
            <div class="control-group">
                <label class="control-label" name="username"><spring:message code="label.username" /></label>
                <div class="controls">
                    <input type="text" id="username"/>
                </div>
            </div>

            <!-- Password -->
            <div class="control-group">
                <label class="control-label" name="password"><spring:message code="label.password" /></label>
                <div class="controls">
                    <input type="password" id="password" />
                </div>
            </div>

            <!-- Role -->
            <div class="control-group">
                <label class="control-label" name="role"><spring:message code="label.role" /></label>
                <div class="controls">
                    <select id="role">
                        <option value="1"><spring:message code="label.ROLE_ADMINISTRATOR" /></option>
                    </select>
                </div>
            </div>

            <div class="control-group">
                <div class="controls">
                    <input type="submit" class="btn btn-success" value="<spring:message code="label.add"/>" />
                </div>
            </div>

     </form>

</div>

</body>

</html>
