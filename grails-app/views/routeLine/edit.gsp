<%@ page import="banchecn.RouteLine" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'routeLine.label', default: 'RouteLine')}" />
		<title>班车中国，线路更新</title>
        <ckeditor:resources/>
	</head>
	<body>
		<a href="#edit-routeLine" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}">首页</a></li>
				<li><g:link class="list" action="list">线路列表</g:link></li>
				<li><g:link class="create" action="create">新增线路</g:link></li>
			</ul>
		</div>
		<div id="edit-routeLine" class="content scaffold-edit" role="main">
			<h1><g:fieldValue
                    bean="${routeLineInstance}" field="lineName"/></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${routeLineInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${routeLineInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form method="post" >
				<g:hiddenField name="id" value="${routeLineInstance?.id}" />
				<g:hiddenField name="version" value="${routeLineInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="更新" />
					<g:actionSubmit class="delete" action="delete" value="删除" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
