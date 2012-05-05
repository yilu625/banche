
<%@ page import="banchecn.RouteAroundSite" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'routeAroundSite.label', default: 'RouteAroundSite')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-routeAroundSite" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-routeAroundSite" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list routeAroundSite">
			
				<g:if test="${routeAroundSiteInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="routeAroundSite.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${routeAroundSiteInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${routeAroundSiteInstance?.isRelated}">
				<li class="fieldcontain">
					<span id="isRelated-label" class="property-label"><g:message code="routeAroundSite.isRelated.label" default="Is Related" /></span>
					
						<span class="property-value" aria-labelledby="isRelated-label"><g:fieldValue bean="${routeAroundSiteInstance}" field="isRelated"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${routeAroundSiteInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="routeAroundSite.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${routeAroundSiteInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${routeAroundSiteInstance?.relateStation}">
				<li class="fieldcontain">
					<span id="relateStation-label" class="property-label"><g:message code="routeAroundSite.relateStation.label" default="Relate Station" /></span>
					
						<span class="property-value" aria-labelledby="relateStation-label"><g:fieldValue bean="${routeAroundSiteInstance}" field="relateStation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${routeAroundSiteInstance?.siteInfo}">
				<li class="fieldcontain">
					<span id="siteInfo-label" class="property-label"><g:message code="routeAroundSite.siteInfo.label" default="Site Info" /></span>
					
						<span class="property-value" aria-labelledby="siteInfo-label"><g:fieldValue bean="${routeAroundSiteInstance}" field="siteInfo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${routeAroundSiteInstance?.siteName}">
				<li class="fieldcontain">
					<span id="siteName-label" class="property-label"><g:message code="routeAroundSite.siteName.label" default="Site Name" /></span>
					
						<span class="property-value" aria-labelledby="siteName-label"><g:fieldValue bean="${routeAroundSiteInstance}" field="siteName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${routeAroundSiteInstance?.siteNo}">
				<li class="fieldcontain">
					<span id="siteNo-label" class="property-label"><g:message code="routeAroundSite.siteNo.label" default="Site No" /></span>
					
						<span class="property-value" aria-labelledby="siteNo-label"><g:fieldValue bean="${routeAroundSiteInstance}" field="siteNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${routeAroundSiteInstance?.sitePostion}">
				<li class="fieldcontain">
					<span id="sitePostion-label" class="property-label"><g:message code="routeAroundSite.sitePostion.label" default="Site Postion" /></span>
					
						<span class="property-value" aria-labelledby="sitePostion-label"><g:fieldValue bean="${routeAroundSiteInstance}" field="sitePostion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${routeAroundSiteInstance?.spendTimeToStaion}">
				<li class="fieldcontain">
					<span id="spendTimeToStaion-label" class="property-label"><g:message code="routeAroundSite.spendTimeToStaion.label" default="Spend Time To Staion" /></span>
					
						<span class="property-value" aria-labelledby="spendTimeToStaion-label"><g:fieldValue bean="${routeAroundSiteInstance}" field="spendTimeToStaion"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${routeAroundSiteInstance?.id}" />
					<g:link class="edit" action="edit" id="${routeAroundSiteInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
