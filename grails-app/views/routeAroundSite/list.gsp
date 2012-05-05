
<%@ page import="banchecn.RouteAroundSite" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'routeAroundSite.label', default: 'RouteAroundSite')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-routeAroundSite" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-routeAroundSite" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'routeAroundSite.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="isRelated" title="${message(code: 'routeAroundSite.isRelated.label', default: 'Is Related')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'routeAroundSite.lastUpdated.label', default: 'Last Updated')}" />
					
						<g:sortableColumn property="relateStation" title="${message(code: 'routeAroundSite.relateStation.label', default: 'Relate Station')}" />
					
						<g:sortableColumn property="siteInfo" title="${message(code: 'routeAroundSite.siteInfo.label', default: 'Site Info')}" />
					
						<g:sortableColumn property="siteName" title="${message(code: 'routeAroundSite.siteName.label', default: 'Site Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${routeAroundSiteInstanceList}" status="i" var="routeAroundSiteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${routeAroundSiteInstance.id}">${fieldValue(bean: routeAroundSiteInstance, field: "dateCreated")}</g:link></td>
					
						<td>${fieldValue(bean: routeAroundSiteInstance, field: "isRelated")}</td>
					
						<td><g:formatDate date="${routeAroundSiteInstance.lastUpdated}" /></td>
					
						<td>${fieldValue(bean: routeAroundSiteInstance, field: "relateStation")}</td>
					
						<td>${fieldValue(bean: routeAroundSiteInstance, field: "siteInfo")}</td>
					
						<td>${fieldValue(bean: routeAroundSiteInstance, field: "siteName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${routeAroundSiteInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
