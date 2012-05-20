<%@ page import="banchecn.RouteLine" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'routeLine.label', default: '线路')}"/>
    <title>班车中国，线路维护</title>
    <ckeditor:resources/>
</head>

<body>
<a href="#create-routeLine" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                  default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}">首页</a></li>
        <li><g:link class="list" action="list">线路列表</g:link></li>
    </ul>
</div>

<div id="create-routeLine" class="content scaffold-create" role="main">
    <h1>线路维护</h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${routeLineInstance}">
        <ul class="errors" role="alert">
            <g:eachError bean="${routeLineInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                        error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:form action="save">
        <fieldset class="form">
            <g:render template="form"/>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save" value="创建"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
