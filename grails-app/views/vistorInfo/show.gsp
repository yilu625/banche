
<%@ page import="banchecn.VistorInfo" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'vistorInfo.label', default: 'VistorInfo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-vistorInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-vistorInfo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list vistorInfo">
			
				<g:if test="${vistorInfoInstance?.answers}">
				<li class="fieldcontain">
					<span id="answers-label" class="property-label"><g:message code="vistorInfo.answers.label" default="Answers" /></span>
					
						<g:each in="${vistorInfoInstance.answers}" var="a">
						<span class="property-value" aria-labelledby="answers-label"><g:link controller="answersRecord" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${vistorInfoInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="vistorInfo.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${vistorInfoInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${vistorInfoInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="vistorInfo.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${vistorInfoInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${vistorInfoInstance?.vContractInfo}">
				<li class="fieldcontain">
					<span id="vContractInfo-label" class="property-label"><g:message code="vistorInfo.vContractInfo.label" default="VC ontract Info" /></span>
					
						<span class="property-value" aria-labelledby="vContractInfo-label"><g:fieldValue bean="${vistorInfoInstance}" field="vContractInfo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vistorInfoInstance?.vName}">
				<li class="fieldcontain">
					<span id="vName-label" class="property-label"><g:message code="vistorInfo.vName.label" default="VN ame" /></span>
					
						<span class="property-value" aria-labelledby="vName-label"><g:fieldValue bean="${vistorInfoInstance}" field="vName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vistorInfoInstance?.vQuestionContent}">
				<li class="fieldcontain">
					<span id="vQuestionContent-label" class="property-label"><g:message code="vistorInfo.vQuestionContent.label" default="VQ uestion Content" /></span>
					
						<span class="property-value" aria-labelledby="vQuestionContent-label"><g:fieldValue bean="${vistorInfoInstance}" field="vQuestionContent"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vistorInfoInstance?.vQuestionKey}">
				<li class="fieldcontain">
					<span id="vQuestionKey-label" class="property-label"><g:message code="vistorInfo.vQuestionKey.label" default="VQ uestion Key" /></span>
					
						<span class="property-value" aria-labelledby="vQuestionKey-label"><g:fieldValue bean="${vistorInfoInstance}" field="vQuestionKey"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vistorInfoInstance?.vQuestionTitle}">
				<li class="fieldcontain">
					<span id="vQuestionTitle-label" class="property-label"><g:message code="vistorInfo.vQuestionTitle.label" default="VQ uestion Title" /></span>
					
						<span class="property-value" aria-labelledby="vQuestionTitle-label"><g:fieldValue bean="${vistorInfoInstance}" field="vQuestionTitle"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${vistorInfoInstance?.id}" />
					<g:link class="edit" action="edit" id="${vistorInfoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
