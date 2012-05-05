
<%@ page import="banchecn.AnswersRecord" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'answersRecord.label', default: 'AnswersRecord')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-answersRecord" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-answersRecord" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list answersRecord">
			
				<g:if test="${answersRecordInstance?.answer}">
				<li class="fieldcontain">
					<span id="answer-label" class="property-label"><g:message code="answersRecord.answer.label" default="Answer" /></span>
					
						<span class="property-value" aria-labelledby="answer-label"><g:fieldValue bean="${answersRecordInstance}" field="answer"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${answersRecordInstance?.answerContent}">
				<li class="fieldcontain">
					<span id="answerContent-label" class="property-label"><g:message code="answersRecord.answerContent.label" default="Answer Content" /></span>
					
						<span class="property-value" aria-labelledby="answerContent-label"><g:fieldValue bean="${answersRecordInstance}" field="answerContent"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${answersRecordInstance?.pleasedLevel}">
				<li class="fieldcontain">
					<span id="pleasedLevel-label" class="property-label"><g:message code="answersRecord.pleasedLevel.label" default="Pleased Level" /></span>
					
						<span class="property-value" aria-labelledby="pleasedLevel-label"><g:fieldValue bean="${answersRecordInstance}" field="pleasedLevel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${answersRecordInstance?.question}">
				<li class="fieldcontain">
					<span id="question-label" class="property-label"><g:message code="answersRecord.question.label" default="Question" /></span>
					
						<span class="property-value" aria-labelledby="question-label"><g:link controller="vistorInfo" action="show" id="${answersRecordInstance?.question?.id}">${answersRecordInstance?.question?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${answersRecordInstance?.id}" />
					<g:link class="edit" action="edit" id="${answersRecordInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
