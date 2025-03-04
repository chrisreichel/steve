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
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<table class="table table-sm">
	<thead><tr><th>Misc.</th><th></th></thead>
	<tr><td>Description:</td><td><form:input path="description" cssClass="form-control form-control-sm"/></td></tr>
	<tr>
		<td>Admin Address:</td>
		<td>
			<form:input path="adminAddress" cssClass="form-control form-control-sm"/>
			<c:if test="${not empty cp.chargeBox.adminAddress}">
				<a target="_blank" href="${cp.chargeBox.adminAddress}">Go</a>
			</c:if>
		</td>
	</tr>
	<tr><td>Latitude:</td><td><form:input path="locationLatitude" cssClass="form-control form-control-sm"/></td></tr>
	<tr><td>Longitude:</td><td><form:input path="locationLongitude" cssClass="form-control form-control-sm"/></td></tr>

	<c:if test="${(not empty cp.chargeBox.locationLongitude) and (not empty cp.chargeBox.locationLongitude)}">
		<tr>
			<td></td>
			<td><a target="_blank"
				   href="https://maps.google.com/?q=${cp.chargeBox.locationLatitude},${cp.chargeBox.locationLongitude}">
				Show on Google Maps</a>
			</td>
		</tr>
	</c:if>

	<tr><td>Additional Note:</td><td><form:textarea path="note" cssClass="form-control form-control-sm"/></td></tr>
	<tr><td></td>
		<td id="add_space">
			<input type="submit" class="btn btn-sm btn-primary" name="${submitButtonName}" value="${submitButtonValue}">
			<input type="submit" class="btn btn-sm btn-primary" name="backToOverview" value="Back to Overview">
		</td></tr>
</table>