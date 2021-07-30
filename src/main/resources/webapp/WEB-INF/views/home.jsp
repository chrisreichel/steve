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

	<div class="row">

		<div class="col">
			<div class="card">
				<div class="card-header">
					<h5>Data Management Stats</h5>
				</div>
				<div class="card-body">
					<ul class="list-group">
						<li class="list-group-item d-flex justify-content-between align-items-center">
							<a href="${ctxPath}/manager/chargepoints">
								Number of chargepoints
								<p class="badge badge-light">${stats.numChargeBoxes}</p>
							</a>
						</li>
						<li class="list-group-item d-flex justify-content-between align-items-center">
							<a href="${ctxPath}/manager/ocppTags">
								Number of OCPP Tags
								<span class="badge badge-light">${stats.numOcppTags}</span>
							</a>
						</li>
						<li class="list-group-item d-flex justify-content-between align-items-center">
							<a href="${ctxPath}/manager/users">
								Number of users
								<span class="badge badge-light">${stats.numUsers}</span>
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>

		<div class="col">
			<div class="card">
				<div class="card-header">
					<h5>Chargepoint Activity</h5>
				</div>
				<div class="card-body">
					<ul class="list-group">
						<li class="list-group-item d-flex justify-content-between align-items-center">
							<a href="${ctxPath}/manager/chargepoints">Received Heartbeats</a>
								<table class="table table-sm table-hoover">
									<tbody>
									<tr>
										<td>Today</td>
										<td>${stats.heartbeatToday}</td>
									</tr>
									<tr>
										<td>Yesterday</td>
										<td>${stats.heartbeatYesterday}</td>
									</tr>
									<tr>
										<td>Earlier</td>
										<td>${stats.heartbeatEarlier}</td>
									</tr>
									</tbody>
								</table>
						</li>
						<li class="list-group-item d-flex justify-content-between align-items-center">
							<a href="${ctxPath}/manager/home/ocppJsonStatus">Connected JSON Charge Points</a>
							<table class="table table-sm table-hoover">
								<tbody>
								<tr>
									<td>OCPP 1.2</td>
									<td>${stats.numOcpp12JChargeBoxes}</td>
								</tr>
								<tr>
									<td>OCPP 1.5</td>
									<td>${stats.numOcpp15JChargeBoxes}</td>
								</tr>
								<tr>
									<td>OCPP 1.6</td>
									<td>${stats.numOcpp16JChargeBoxes}</td>
								</tr>
								</tbody>
							</table>
						</li>
					</ul>
				</div>
			</div>
		</div>

		<div class="col">
			<div class="card">
				<div class="card-header">
					<h5 class="card-title">Usage Statistics</h5>
				</div>
				<div class="card-body">
					<ul class="list-group">
						<li class="list-group-item d-flex justify-content-between align-items-center">
							<a href="${ctxPath}/manager/reservations">
								Number of Active Reservations
								<span class="badge badge-light">${stats.numReservations}</span>
							</a>
						</li>
						<li class="list-group-item d-flex justify-content-between align-items-center">
							<a href="${ctxPath}/manager/transactions">
								Number of Active Transactions
								<span class="badge badge-light">${stats.numTransactions}</span>
							</a>
						</li>
						<li class="list-group-item d-flex justify-content-between align-items-center">
							<a href="${ctxPath}/manager/home/connectorStatus">Connector Status</a>
							<table class="table table-sm table-hoover">
								<tbody>
								<c:forEach items="${stats.statusCountMap}" var="it">
								<tr>
									<td>${it.key}</td>
									<td>${it.value}</td>
								</tr>
								</c:forEach>
								</tbody>
							</table>
						</li>
					</ul>
				</div>
			</div>
		</div>

	</div>


<%@ include file="00-footer.jsp" %>