
<%@ page import="banchecn.RouteLine" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'routeLine.label', default: 'RouteLine')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-routeLine" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-routeLine" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list routeLine">
			
				<g:if test="${routeLineInstance?.arriveStation}">
				<li class="fieldcontain">
					<span id="arriveStation-label" class="property-label"><g:message code="routeLine.arriveStation.label" default="Arrive Station" /></span>
					
						<span class="property-value" aria-labelledby="arriveStation-label"><g:fieldValue bean="${routeLineInstance}" field="arriveStation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${routeLineInstance?.arriveTime}">
				<li class="fieldcontain">
					<span id="arriveTime-label" class="property-label"><g:message code="routeLine.arriveTime.label" default="Arrive Time" /></span>
					
						<span class="property-value" aria-labelledby="arriveTime-label"><g:formatDate date="${routeLineInstance?.arriveTime}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${routeLineInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="routeLine.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${routeLineInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${routeLineInstance?.hasVehicle}">
				<li class="fieldcontain">
					<span id="hasVehicle-label" class="property-label"><g:message code="routeLine.hasVehicle.label" default="Has Vehicle" /></span>
					
						<span class="property-value" aria-labelledby="hasVehicle-label"><g:fieldValue bean="${routeLineInstance}" field="hasVehicle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${routeLineInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="routeLine.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${routeLineInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${routeLineInstance?.lineCarInfo}">
				<li class="fieldcontain">
					<span id="lineCarInfo-label" class="property-label"><g:message code="routeLine.lineCarInfo.label" default="Line Car Info" /></span>
					
						<span class="property-value" aria-labelledby="lineCarInfo-label"><g:fieldValue bean="${routeLineInstance}" field="lineCarInfo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${routeLineInstance?.lineCharacteristic}">
				<li class="fieldcontain">
					<span id="lineCharacteristic-label" class="property-label"><g:message code="routeLine.lineCharacteristic.label" default="Line Characteristic" /></span>
					
						<span class="property-value" aria-labelledby="lineCharacteristic-label"><g:fieldValue bean="${routeLineInstance}" field="lineCharacteristic"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${routeLineInstance?.lineName}">
				<li class="fieldcontain">
					<span id="lineName-label" class="property-label"><g:message code="routeLine.lineName.label" default="Line Name" /></span>
					
						<span class="property-value" aria-labelledby="lineName-label"><g:fieldValue bean="${routeLineInstance}" field="lineName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${routeLineInstance?.lineNo}">
				<li class="fieldcontain">
					<span id="lineNo-label" class="property-label"><g:message code="routeLine.lineNo.label" default="Line No" /></span>
					
						<span class="property-value" aria-labelledby="lineNo-label"><g:fieldValue bean="${routeLineInstance}" field="lineNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${routeLineInstance?.spendTime}">
				<li class="fieldcontain">
					<span id="spendTime-label" class="property-label"><g:message code="routeLine.spendTime.label" default="Spend Time" /></span>
					
						<span class="property-value" aria-labelledby="spendTime-label"><g:fieldValue bean="${routeLineInstance}" field="spendTime"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${routeLineInstance?.startStation}">
				<li class="fieldcontain">
					<span id="startStation-label" class="property-label"><g:message code="routeLine.startStation.label" default="Start Station" /></span>
					
						<span class="property-value" aria-labelledby="startStation-label"><g:fieldValue bean="${routeLineInstance}" field="startStation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${routeLineInstance?.startTime}">
				<li class="fieldcontain">
					<span id="startTime-label" class="property-label"><g:message code="routeLine.startTime.label" default="Start Time" /></span>
					
						<span class="property-value" aria-labelledby="startTime-label"><g:formatDate date="${routeLineInstance?.startTime}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${routeLineInstance?.stopStation}">
				<li class="fieldcontain">
					<span id="stopStation-label" class="property-label"><g:message code="routeLine.stopStation.label" default="Stop Station" /></span>
					
						<span class="property-value" aria-labelledby="stopStation-label"><g:fieldValue bean="${routeLineInstance}" field="stopStation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${routeLineInstance?.surplusSeat}">
				<li class="fieldcontain">
					<span id="surplusSeat-label" class="property-label"><g:message code="routeLine.surplusSeat.label" default="Surplus Seat" /></span>
					
						<span class="property-value" aria-labelledby="surplusSeat-label"><g:fieldValue bean="${routeLineInstance}" field="surplusSeat"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${routeLineInstance?.id}" />
					<g:link class="edit" action="edit" id="${routeLineInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
