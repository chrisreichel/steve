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
	<thead><tr><th>Profile</th><th></th></thead>
	<tr><td>First name:</td><td><form:input path="firstName" cssClass="form-control form-control-sm"/></td></tr>
	<tr><td>Last name:</td><td><form:input path="lastName"  cssClass="form-control form-control-sm"/></td></tr>
	<tr><td>Birthday:</td><td><form:input path="birthDay" cssClass="datePicker"/></td></tr>
	<tr>
		<td>Sex:</td>
		<td><form:select path="sex" cssClass="form-control form-control-sm">
			<form:options items="${sex}" itemLabel="value"/>
		</form:select>
		</td>
	</tr>
	<tr><td>Phone:</td><td><form:input path="phone" cssClass="form-control form-control-sm"/></td></tr>
	<tr><td>E-mail:</td><td><form:input path="eMail" cssClass="form-control form-control-sm"/></td></tr>
	<tr><td>Additional Note:</td><td><form:textarea path="note" cssClass="form-control form-control-sm"/></td></tr>
</table>