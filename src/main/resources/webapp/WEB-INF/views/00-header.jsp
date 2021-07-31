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
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@ include file="00-context.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <link rel="icon" href="${ctxPath}/static/images/favicon.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="${ctxPath}/static/images/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="${ctxPath}/static/css/jquery-ui.min.css">
    <link rel="stylesheet" type="text/css" href="${ctxPath}/static/css/jquery-ui-timepicker-addon.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script type="text/javascript" src="${ctxPath}/static/js/jquery-ui.min.js" ></script>
    <script type="text/javascript" src="${ctxPath}/static/js/jquery-ui-timepicker-addon.min.js" ></script>
    <script type="text/javascript" src="${ctxPath}/static/js/stupidtable.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
    <style>
        /* ============ desktop view ============ */
        @media all and (min-width: 992px) {
            .navbar .nav-item .dropdown-menu{ display: none; }
            .navbar .nav-item:hover .nav-link{   }
            .navbar .nav-item:hover .dropdown-menu{ display: block; }
            .navbar .nav-item .dropdown-menu{ margin-top:0; }
        }
        .footer {
            width: 100%;
            height: 72px; /* Set the fixed height of the footer here */
            background-color: #f5f5f5;
        }
        /* ============ desktop view .end// ============ */
    </style>
    <title>AZEnergy</title>
</head>
<body>
<div class="container">

    <nav class="navbar navbar-expand-sm navbar-dark bg-dark sticky-top">
        <div class="container-fluid">
            <a class="navbar-brand" href="${ctxPath}/manager/chargepoints">
                <img src="${ctxPath}/static/images/logo2.png" alt="" width="52" height="52">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#main_nav"  aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-md-center" id="main_nav">
                <ul class="navbar-nav">
                    <li class="nav-item"> <a class="nav-link" href="${ctxPath}/manager">Home </a> </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link  dropdown-toggle" href="#" data-bs-toggle="dropdown">  Data management  </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="${ctxPath}/manager/chargepoints">CHARGE POINTS</a></li>
                            <li><a class="dropdown-item" href="${ctxPath}/manager/ocppTags">OCPP TAGS</a></li>
                            <li><a class="dropdown-item" href="${ctxPath}/manager/users">USERS</a></li>
                            <li><a class="dropdown-item" href="${ctxPath}/manager/chargingProfiles">CHARGING PROFILES</a></li>
                            <li><a class="dropdown-item" href="${ctxPath}/manager/reservations">RESERVATIONS</a></li>
                            <li><a class="dropdown-item" href="${ctxPath}/manager/transactions">TRANSACTIONS</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link  dropdown-toggle" href="#" data-bs-toggle="dropdown">  Operations  </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="${ctxPath}/manager/operations/v1.2">OCPP v1.2</a></li>
                            <li><a class="dropdown-item" href="${ctxPath}/manager/operations/v1.5">OCPP v1.5</a></li>
                            <li><a class="dropdown-item" href="${ctxPath}/manager/operations/v1.6">OCPP v1.6</a></li>
                            <li><a class="dropdown-item" href="${ctxPath}/manager/operations/tasks">Tasks</a></li>
                        </ul>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="${ctxPath}/manager/settings"> Settings </a></li>
                    <li class="nav-item"><a class="nav-link" target="_blank"href="${ctxPath}/manager/log"> Logs </a></li>
                    <li class="nav-item"><a class="nav-link" href="${ctxPath}/manager/about"> About </a></li>
                    <li class="nav-item"><a class="nav-link" href="${ctxPath}/manager/signout"> Log out </a></li>
                </ul>
            </div> <!-- navbar-collapse.// -->
        </div> <!-- container-fluid.// -->
    </nav>

    <span>
        <hr/>
    </span>