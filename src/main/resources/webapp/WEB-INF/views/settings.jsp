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
<%@ include file="00-header.jsp" %>
<spring:hasBindErrors name="settingsForm">
    <div class="error">
        <ul>
            <c:forEach var="error" items="${errors.allErrors}">
                <li>${error.defaultMessage}</li>
            </c:forEach>
        </ul>
    </div>
</spring:hasBindErrors>
<div class="content">
<form:form action="${ctxPath}/manager/settings" modelAttribute="settingsForm">

    <section><span>OCPP Settings</span></section>
    <table class="table table-sm ">
        <tr><td>Heartbeat Interval:</td><td>
            <form:input path="heartbeat"/>
        </td></tr>
        <tr><td><i>
            The time interval in <b>minutes</b> for how often a charge point <br> should request the current time from SteVe.
        </i></td><td></td></tr>
        <tr><td>Expiration:</td><td>
            <form:input path="expiration"/>
        </td></tr>
        <tr><td><i>
            The amount of time in <b>hours</b> for how long a charge point should cache <br> the authorization info of an
            idTag in its local white list, if an expiry date is not explicitly set. <br>The value 0 disables this functionality (i.e. no expiry date will be set).
        </i></td><td></td></tr>
    </table>

    <br>

    <section><span>
        Mail Notification Setting
        <a class="tooltip" href="#"><img src="${ctxPath}/static/images/info.png" style="vertical-align:middle">
            <span>Specify the recipients of the notifications by entering one e-mail address per line</span>
        </a>
    </span></section>
    <table class="table table-sm">
        <tr><td colspan="2">Enable Notifications?&nbsp;<form:checkbox path="enabled"/></td></tr>
        <tr><td>Protocol:</td><td><form:input path="protocol" cssClass="form-control form-control-sm"/></td></tr>
        <tr><td>Host:</td><td><form:input path="host" cssClass="form-control form-control-sm"/></td></tr>
        <tr><td>Port:</td><td><form:input path="port" cssClass="form-control form-control-sm"/></td></tr>
        <tr><td>From:</td><td><form:input path="from" cssClass="form-control form-control-sm"/></td></tr>
        <tr><td>User name:</td><td><form:input path="username" cssClass="form-control form-control-sm"/></td></tr>
        <tr><td>Password:</td><td><form:input path="password" cssClass="form-control form-control-sm"/></td></tr>

        <tr><td>Recipients:</td>
            <td><form:textarea path="recipients" cssClass="form-control form-control-sm"/></td>
        </tr>
        <tr>
            <td colspan="2">Notify when... </td>
        </tr>
        <tr>
            <td colspan="2">
                <div class="text-wrap font-weight-light">
                    <form:checkboxes items="${features}" path="enabledFeatures"
                                     itemLabel="text" delimiter="<br/>"/>
                </div>
            </td>
        </tr>
        <tr>
            <td></td>
            <td id="add_space">
                <input type="submit" class="btn btn-primary" name="change" value="Change">
                <input type="submit" class="btn btn-info" name="testMail" value="Send Test Mail">
            </td></tr>
    </table>

</form:form>
</div>
<%@ include file="00-footer.jsp" %>