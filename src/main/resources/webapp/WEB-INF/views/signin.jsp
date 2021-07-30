<%--

    SteVe - SteckdosenVerwaltung - https://github.com/RWTH-i5-IDSG/steve
    Copyright (C) 2013-2021 RWTH Aachen University - Information Systems - Intelligent Distributed Systems Group (IDSG).
    All Rights Reserved.

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

--%>
<%@ page contentType="text/html" pageEncoding="utf-8" language="java" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="00-context.jsp" %>

<!DOCTYPE html>
<html ang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" href="${ctxPath}/static/images/favicon.ico" type="image/x-icon" />
        <link rel="shortcut icon" href="${ctxPath}/static/images/favicon.ico" type="image/x-icon" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="${ctxPath}/static/css/signin.css">
        <title>AZEnergy Login</title>
    </head>


    <body class="text-center">
    <c:if test="${param.error != null}">
        <div class="alert alert-success" role="alert">
            Your username or password is incorrect.
        </div>
    </c:if>

    <form class="form-signin" method="POST" action="${ctxPath}/manager/signin">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <img class="mb-4" src="${ctxPath}/static/images/logo-tranp.png" alt="" width="112" height="112">
        <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
        <label for="inputEmail" class="sr-only">Username</label>
        <input type="text" name="username" id="inputEmail" class="form-control" placeholder="Username" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password"  name="password" id="inputPassword" class="form-control" placeholder="Password" required>
        <div class="checkbox mb-3">
            <label>
                <input type="checkbox" value="remember-me"> Remember me
            </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
        <p class="mt-5 mb-3 text-muted">&copy; 2021</p>
    </form>
    </body>

</html>
