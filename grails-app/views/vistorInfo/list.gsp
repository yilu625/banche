
<%@ page import="banchecn.VistorInfo" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'vistorInfo.label', default: 'VistorInfo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-vistorInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-vistorInfo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'vistorInfo.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'vistorInfo.lastUpdated.label', default: 'Last Updated')}" />
					
						<g:sortableColumn property="vContractInfo" title="${message(code: 'vistorInfo.vContractInfo.label', default: 'VC ontract Info')}" />
					
						<g:sortableColumn property="vName" title="${message(code: 'vistorInfo.vName.label', default: 'VN ame')}" />
					
						<g:sortableColumn property="vQuestionContent" title="${message(code: 'vistorInfo.vQuestionContent.label', default: 'VQ uestion Content')}" />
					
						<g:sortableColumn property="vQuestionKey" title="${message(code: 'vistorInfo.vQuestionKey.label', default: 'VQ uestion Key')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${vistorInfoInstanceList}" status="i" var="vistorInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${vistorInfoInstance.id}">${fieldValue(bean: vistorInfoInstance, field: "dateCreated")}</g:link></td>
					
						<td><g:formatDate date="${vistorInfoInstance.lastUpdated}" /></td>
					
						<td>${fieldValue(bean: vistorInfoInstance, field: "vContractInfo")}</td>
					
						<td>${fieldValue(bean: vistorInfoInstance, field: "vName")}</td>
					
						<td>${fieldValue(bean: vistorInfoInstance, field: "vQuestionContent")}</td>
					
						<td>${fieldValue(bean: vistorInfoInstance, field: "vQuestionKey")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${vistorInfoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
