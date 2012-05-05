
<%@ page import="banchecn.AnswersRecord" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'answersRecord.label', default: 'AnswersRecord')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-answersRecord" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-answersRecord" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="answer" title="${message(code: 'answersRecord.answer.label', default: 'Answer')}" />
					
						<g:sortableColumn property="answerContent" title="${message(code: 'answersRecord.answerContent.label', default: 'Answer Content')}" />
					
						<g:sortableColumn property="pleasedLevel" title="${message(code: 'answersRecord.pleasedLevel.label', default: 'Pleased Level')}" />
					
						<th><g:message code="answersRecord.question.label" default="Question" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${answersRecordInstanceList}" status="i" var="answersRecordInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${answersRecordInstance.id}">${fieldValue(bean: answersRecordInstance, field: "answer")}</g:link></td>
					
						<td>${fieldValue(bean: answersRecordInstance, field: "answerContent")}</td>
					
						<td>${fieldValue(bean: answersRecordInstance, field: "pleasedLevel")}</td>
					
						<td>${fieldValue(bean: answersRecordInstance, field: "question")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${answersRecordInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
