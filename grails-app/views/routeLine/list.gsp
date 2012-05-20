
<%@ page import="banchecn.RouteLine" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'routeLine.label', default: 'RouteLine')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-routeLine" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-routeLine" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="lineCharacteristic" title="${message(code: 'routeLine.lineCharacteristic.label', default: 'Line Characteristic')}" />
					
						<g:sortableColumn property="lineType" title="${message(code: 'routeLine.lineType.label', default: 'Line Type')}" />
					
						<g:sortableColumn property="arriveStation" title="${message(code: 'routeLine.arriveStation.label', default: 'Arrive Station')}" />
					
						<g:sortableColumn property="arriveTime" title="${message(code: 'routeLine.arriveTime.label', default: 'Arrive Time')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'routeLine.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="hasVehicle" title="${message(code: 'routeLine.hasVehicle.label', default: 'Has Vehicle')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${routeLineInstanceList}" status="i" var="routeLineInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${routeLineInstance.id}">${fieldValue(bean: routeLineInstance, field: "lineCharacteristic")}</g:link></td>
					
						<td>${fieldValue(bean: routeLineInstance, field: "lineType")}</td>
					
						<td>${fieldValue(bean: routeLineInstance, field: "arriveStation")}</td>
					
						<td>${fieldValue(bean: routeLineInstance, field: "arriveTime")}</td>
					
						<td><g:formatDate date="${routeLineInstance.dateCreated}" /></td>
					
						<td>${fieldValue(bean: routeLineInstance, field: "hasVehicle")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${routeLineInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
